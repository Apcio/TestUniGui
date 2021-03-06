unit Paczki;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniBasicGrid, uniDBGrid,
  uniToolBar, uniButton, uniGUIBaseClasses, uniPanel;

type
  TPaczkiOkno = class(TUniForm)
    UniPanel1: TUniPanel;
    btnWyjscie: TUniButton;
    UniPanel2: TUniPanel;
    UniToolBar1: TUniToolBar;
    tbDodaj: TUniToolButton;
    tbEdytuj: TUniToolButton;
    tbUsun: TUniToolButton;
    UniToolButton2: TUniToolButton;
    tbOdswiez: TUniToolButton;
    UniDBGrid1: TUniDBGrid;
    paczki: TFDQuery;
    dsPaczki: TDataSource;
    paczkiID_PACZKA: TIntegerField;
    paczkiIDKLIENT: TIntegerField;
    paczkiID_SLW_RODZAJ_PRZESYLKI: TIntegerField;
    paczkiODBIORCA_IMIE: TStringField;
    paczkiODBIORCA_NAZWISKO: TStringField;
    paczkiODBIORCA_ADR_ULICA: TStringField;
    paczkiODBIORCA_ADR_DOM: TStringField;
    paczkiODBIORCA_ADR_LOKAL: TStringField;
    paczkiODBIORCA_ADR_KOD_POCZTOWY: TStringField;
    paczkiODBIORCA_ADR_POWIAT: TStringField;
    paczkiODBIORCA_ADR_WOJEWODZTWO: TStringField;
    paczkiWYSTAWIONA_FV: TStringField;
    paczkiDATA_NADANIA: TSQLTimeStampField;
    paczkiNADAWCA_IMIE: TStringField;
    paczkiNADAWCA_NAZWISKO: TStringField;
    paczkiNADAWCA_ADR_KOD_POCZTOWY: TStringField;
    paczkiNADAWCA_ADR_MIEJSCOWOSC: TStringField;
    paczkiNADAWCA_ADR_ULICA: TStringField;
    paczkiNADAWCA_ADR_DOM: TStringField;
    paczkiNADAWCA_ADR_LOKAL: TStringField;
    paczkiNADAWCA_ADR_POWIAT: TStringField;
    paczkiNADAWCA_ADR_WOJEWODZTWO: TStringField;
    paczkiNADAWCA_VIP: TStringField;
    paczkiPRZESYLKA_RODZAJ: TStringField;
    procedure UniFormShow(Sender: TObject);
    procedure tbOdswiezClick(Sender: TObject);
    procedure tbDodajClick(Sender: TObject);
    procedure tbEdytujClick(Sender: TObject);
    procedure tbUsunClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function PaczkiOkno: TPaczkiOkno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ImageModule, PaczkiDane;

function PaczkiOkno: TPaczkiOkno;
begin
  Result := TPaczkiOkno(UniMainModule.GetFormInstance(TPaczkiOkno));
end;

procedure TPaczkiOkno.UniFormShow(Sender: TObject);
begin
  tbOdswiezClick(nil);
end;

procedure TPaczkiOkno.tbDodajClick(Sender: TObject);
begin
  PaczkiDaneOkno.nowaPozycja();
  PaczkiDaneOkno.ShowModal(procedure (s: TComponent; r: integer)
      begin
        if r = mrOk then tbOdswiezClick(nil);
      end
  );
end;

procedure TPaczkiOkno.tbEdytujClick(Sender: TObject);
begin
  PaczkiDaneOkno.EdytujPozycje(paczkiID_PACZKA.AsInteger);
  PaczkiDaneOkno.ShowModal(procedure (s: TComponent; r: integer)
      begin
        if r = mrOk then tbOdswiezClick(nil);
      end
  );

end;

procedure TPaczkiOkno.tbOdswiezClick(Sender: TObject);
begin
  paczki.Close();
  paczki.Open();
end;

procedure TPaczkiOkno.tbUsunClick(Sender: TObject);
begin
  MessageDlg('Czy na pewno chcesz usun�� paczk� do odbiorcy: '
    + paczkiODBIORCA_IMIE.AsString + ' ' + paczkiODBIORCA_NAZWISKO.AsString,
    mtConfirmation, mbYesNo,
      procedure (S: TCOmponent; r: Integer)
      begin
        if r <> mrYes then Exit();
        paczki.Delete();
        tbOdswiezClick(nil);
      end);
end;

end.

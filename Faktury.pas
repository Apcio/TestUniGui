unit Faktury;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniToolBar, uniButton, uniPanel, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFakturyOkno = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniPanel1: TUniPanel;
    btnWyjscie: TUniButton;
    UniPanel2: TUniPanel;
    UniToolBar1: TUniToolBar;
    tbDodaj: TUniToolButton;
    tbEdytuj: TUniToolButton;
    tbUsun: TUniToolButton;
    UniToolButton2: TUniToolButton;
    tbOdswiez: TUniToolButton;
    Faktury: TFDQuery;
    dsFaktury: TDataSource;
    FakturyID_FV: TIntegerField;
    FakturyID_KLIENT: TIntegerField;
    FakturyDATA_WYSTAWIENIA: TDateField;
    FakturyNUMER_FV: TStringField;
    FakturyWARTOSC_NETTO: TBCDField;
    FakturyWARTOSC_VAT: TBCDField;
    FakturyWARTOSC_BRUTTO: TBCDField;
    FakturyIMIE_KLIENTA: TStringField;
    FakturyNAZWISKO_KLIENTA: TStringField;
    procedure btnWyjscieClick(Sender: TObject);
    procedure tbOdswiezClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure tbDodajClick(Sender: TObject);
    procedure tbUsunClick(Sender: TObject);
    procedure tbEdytujClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FakturyOkno: TFakturyOkno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, FakturyDane;

function FakturyOkno: TFakturyOkno;
begin
  Result := TFakturyOkno(UniMainModule.GetFormInstance(TFakturyOkno));
end;

procedure TFakturyOkno.btnWyjscieClick(Sender: TObject);
begin
  Self.Close();
end;

procedure TFakturyOkno.tbDodajClick(Sender: TObject);
begin
  FakturyDane.DaneFakturyOkno.nowaPozycja();
end;

procedure TFakturyOkno.tbEdytujClick(Sender: TObject);
begin
  FakturyDane.DaneFakturyOkno.edytujPozycje(FakturyID_FV.AsInteger);
end;

procedure TFakturyOkno.tbOdswiezClick(Sender: TObject);
begin
  Faktury.Close();
  Faktury.Open();
end;

procedure TFakturyOkno.tbUsunClick(Sender: TObject);
begin
  if Faktury.RecordCount = 0 then
    Exit();

  ShowMessage('Czy na pewno chcesz usun¹æ fakturê nr: ' + FakturyNUMER_FV.AsString + '?',
    procedure (s: TComponent; r: Integer)
    begin
      if r = mrOk then
        Faktury.Delete();
    end
  );
end;

procedure TFakturyOkno.UniFormShow(Sender: TObject);
begin
  tbOdswiezClick(nil);
end;

end.

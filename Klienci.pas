unit Klienci;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uniGUIClasses, uniBasicGrid, uniDBGrid,
  uniButton, uniGUIBaseClasses, uniPanel, uniGUITypes, uniGUIAbstractClasses,
  uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniToolBar;

type
  TKlienciForm = class(TUniForm)
    UniPanel1: TUniPanel;
    btnWyjscie: TUniButton;
    UniDBGrid1: TUniDBGrid;
    klienci: TFDQuery;
    dsKlienci: TDataSource;
    klienciIDKLIENT: TIntegerField;
    klienciIMIE: TStringField;
    klienciNAZWISKO: TStringField;
    klienciADRES_MIEJSCOWOSC: TStringField;
    klienciADRES_ULICA: TStringField;
    klienciADRES_DOM: TStringField;
    klienciADRES_LOKAL: TStringField;
    klienciADRES_KOD_POCZTOWY: TStringField;
    klienciADRES_POWIAT: TStringField;
    klienciADRES_WOJEWODZTWO: TStringField;
    klienciKLIENT_VIP: TStringField;
    UniPanel2: TUniPanel;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    KlienciDaneForm: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton4: TUniToolButton;
    procedure btnWyjscieClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure KlienciDaneFormClick(Sender: TObject);
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniToolButton4Click(Sender: TObject);
    procedure UniToolButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure odswiezKartoteke();

    procedure UsunKlienta(s: TComponent; mr: integer);
  public
    { Public declarations }
  end;

function KlienciForm: TKlienciForm;

implementation

{$R *.dfm}

uses MainModule, ImageModule, KlienciDane;


function KlienciForm: TKlienciForm;
begin
  Result := TKlienciForm(UniMainModule.GetFormInstance(TKlienciForm));
end;


procedure TKlienciForm.btnWyjscieClick(Sender: TObject);
begin
  Close();
end;

procedure TKlienciForm.odswiezKartoteke();
begin
  klienci.Close();
  klienci.Open();
end;

procedure TKlienciForm.UniFormShow(Sender: TObject);
begin
  odswiezKartoteke();
end;

procedure TKlienciForm.UniToolButton1Click(Sender: TObject);
begin
  KlienciDane.KlienciDaneForm.NowaPozycja();
  KlienciDane.KlienciDaneForm.ShowModal(
    procedure (S: TComponent; mr: Integer)
    begin
      UniToolButton4Click(S);
    end
  );
end;

procedure TKlienciForm.UniToolButton3Click(Sender: TObject);
begin
  MessageDlg('Czy chcesz usun¹æ klienta ' + klienciIMIE.AsString + ' ' + klienciNAZWISKO.AsString + '?',
    mtConfirmation, [mbYes, mbNo], UsunKlienta);
end;

procedure TKlienciForm.UniToolButton4Click(Sender: TObject);
begin
  klienci.Close();
  klienci.Open();
end;

procedure TKlienciForm.KlienciDaneFormClick(Sender: TObject);
begin
  KlienciDane.KlienciDaneForm.EdytujPozycje(klienciIDKLIENT.AsInteger);
  KlienciDane.KlienciDaneForm.ShowModal(
    procedure (S: TComponent; mr: Integer)
    begin
      UniToolButton4Click(S);
    end
  );
end;

procedure TKlienciForm.UsunKlienta(s: TComponent; mr: integer);
begin
  if mr <> mrYes then
    Exit();

  klienci.Delete();
end;

end.

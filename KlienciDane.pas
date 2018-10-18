unit KlienciDane;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUIClasses, uniBasicGrid, uniDBGrid,
  uniButton, uniGUIBaseClasses, uniPanel, uniGUITypes, uniGUIAbstractClasses,
  uniGUIForm, uniGUIApplication, uniEdit, uniDBEdit, uniLabel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniCheckBox, uniGroupBox, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox;

type
  TklienciDaneForm = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    Klient: TFDQuery;
    UniDBEdit2: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel9: TUniLabel;
    dsKlient: TDataSource;
    gpDaneKlienta: TUniGroupBox;
    gpAdres: TUniGroupBox;
    UniPanel1: TUniPanel;
    KlientIDKLIENT: TIntegerField;
    KlientIMIE: TStringField;
    KlientNAZWISKO: TStringField;
    KlientADRES_MIEJSCOWOSC: TStringField;
    KlientADRES_ULICA: TStringField;
    KlientADRES_DOM: TStringField;
    KlientADRES_LOKAL: TStringField;
    KlientADRES_KOD_POCZTOWY: TStringField;
    KlientADRES_POWIAT: TStringField;
    KlientADRES_WOJEWODZTWO: TStringField;
    KlientKLIENT_VIP: TStringField;
    slwPowiaty: TFDQuery;
    slwWojewodztwa: TFDQuery;
    dsPowiaty: TDataSource;
    dsWojewodztwa: TDataSource;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    slwPowiatyPOWIAT: TStringField;
    slwWojewodztwaWOJEWODZTWO: TStringField;
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
    procedure sqlKlient(id: integer);

  public
    { Public declarations }
    procedure NowaPozycja();
    procedure EdytujPozycje(id: integer);
  end;

function KlienciDaneForm: TklienciDaneForm;

implementation

uses
  MainModule, ImageModule;

{$R *.dfm}

function KlienciDaneForm: TklienciDaneForm;
begin
  Result := TklienciDaneForm(UniMainModule.GetFormInstance(TklienciDaneForm));
end;

procedure TklienciDaneForm.NowaPozycja();
begin
  sqlKlient(0);
  Klient.Append();
end;

procedure TklienciDaneForm.UniButton1Click(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TklienciDaneForm.UniButton2Click(Sender: TObject);
begin
  if Trim(KlientIMIE.AsString) = '' then
  begin
    ShowMessage('Wymagane jest poprawne imiê klienta',
      procedure (Sender: TComponent; res: integer)
      begin
        UniDBEdit1.SetFocus();
      end);
    Exit();
  end;

  if Trim(KlientIMIE.AsString) = '' then
  begin
    ShowMessage('Wymagane jest poprawne nazwisko klienta',
      procedure (Sender: TComponent; res: integer)
      begin
        UniDBEdit2.SetFocus();
      end
    );
    Exit();
  end;

  Klient.Post();

  Self.ModalResult := mrOk;
end;

procedure TklienciDaneForm.UniDBEdit3Exit(Sender: TObject);
begin
  if ( Trim(KlientADRES_POWIAT.AsString) = '') AND ( Trim(KlientADRES_KOD_POCZTOWY.AsString) <> '') then
  begin
    UniMainModule.fdTmp.Close();
    UniMainModule.fdTmp.SQL.Text :=
      'SELECT' + sLineBreak +
      ' FIRST 1 POWIAT' + sLineBreak +
      'FROM SLW_POWIATY' + sLineBreak +
      'WHERE SLW_POWIATY.KOD_POCZTOWY = :kod';
    UniMainModule.fdTmp.ParamByName('kod').AsString := KlientADRES_KOD_POCZTOWY.AsString;
    UniMainModule.fdTmp.Open();

    if UniMainModule.fdTmp.RecordCount > 0 then
    begin
      KlientADRES_POWIAT.AsString := UniMainModule.fdTmp.FieldByName('POWIAT').AsString;
    end;

    UniMainModule.fdTmp.Close();
  end;
end;

procedure TklienciDaneForm.UniFormCreate(Sender: TObject);
begin
  slwPowiaty.Open();
  slwWojewodztwa.Open();
end;

procedure TklienciDaneForm.EdytujPozycje(id: integer);
begin
  sqlKlient(id);
  Klient.Edit();
end;

procedure TklienciDaneForm.sqlKlient(id: integer);
begin
  Klient.Close();
  Klient.ParamByName('id').AsInteger := id;
  Klient.Open();
end;

end.

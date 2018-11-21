unit PaczkiDane;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniTabControl, uniGUIBaseClasses, uniPanel,
  uniButton, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniLabel, uniEdit, uniGroupBox, uniDBEdit,
  uniDateTimePicker, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniDBText, System.StrUtils, System.DateUtils,
  uniDBDateTimePicker;

type
  TPaczkiDaneOkno = class(TUniForm)
    UniPanel1: TUniPanel;
    btnAnuluj: TUniButton;
    btnZapisz: TUniButton;
    fdPaczka: TFDQuery;
    fdKlient: TFDQuery;
    dsPaczka: TDataSource;
    dsKlient: TDataSource;
    fdKlientIDKLIENT: TIntegerField;
    fdKlientIMIE: TStringField;
    fdKlientNAZWISKO: TStringField;
    fdKlientADRES_MIEJSCOWOSC: TStringField;
    fdKlientADRES_ULICA: TStringField;
    fdKlientADRES_DOM: TStringField;
    fdKlientADRES_LOKAL: TStringField;
    fdKlientADRES_KOD_POCZTOWY: TStringField;
    fdKlientADRES_POWIAT: TStringField;
    fdKlientADRES_WOJEWODZTWO: TStringField;
    fdKlientKLIENT_VIP: TStringField;
    fdPaczkaID_PACZKA: TIntegerField;
    fdPaczkaIDKLIENT: TIntegerField;
    fdPaczkaID_SLW_RODZAJ_PRZESYLKI: TIntegerField;
    fdPaczkaODBIORCA_IMIE: TStringField;
    fdPaczkaODBIORCA_NAZWISKO: TStringField;
    fdPaczkaODBIORCA_ADR_ULICA: TStringField;
    fdPaczkaODBIORCA_ADR_DOM: TStringField;
    fdPaczkaODBIORCA_ADR_LOKAL: TStringField;
    fdPaczkaODBIORCA_ADR_KOD_POCZTOWY: TStringField;
    fdPaczkaODBIORCA_ADR_POWIAT: TStringField;
    fdPaczkaODBIORCA_ADR_WOJEWODZTWO: TStringField;
    fdPaczkaWAGA_PACZKI: TBCDField;
    fdPaczkaWYSTAWIONA_FV: TStringField;
    fdPaczkaDATA_NADANIA: TSQLTimeStampField;
    fdPaczkaDATA_WYSLANIA: TSQLTimeStampField;
    UniPanel2: TUniPanel;
    fdPaczkaNUMER_PACZKI: TStringField;
    UniLabel1: TUniLabel;
    UniPanel3: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniGroupBox2: TUniGroupBox;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    slwPowiaty: TFDQuery;
    slwPowiatyPOWIAT: TStringField;
    slwWojewodztwa: TFDQuery;
    slwWojewodztwaWOJEWODZTWO: TStringField;
    dsWojewodztwa: TDataSource;
    dsPowiaty: TDataSource;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniGroupBox3: TUniGroupBox;
    UniButton1: TUniButton;
    UniDBText1: TUniDBText;
    UniDBText2: TUniDBText;
    klientVIPLbl: TUniLabel;
    UniLabel13: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    slwRodzajPrzesylki: TFDQuery;
    dsRodzajPrzesylki: TDataSource;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniDBEdit6: TUniDBEdit;
    UniLabel14: TUniLabel;
    fdPaczkaODBIORCA_ADR_MIEJSCOWOSC: TStringField;
    procedure UniDBEdit5Exit(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure btnZapiszClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure sqlKlient();
    procedure sqlPaczka(id: Integer);
    procedure nowyNumer();
  public
    { Public declarations }
    procedure nowaPozycja();
    procedure EdytujPozycje(idPaczka: integer);
  end;

function PaczkiDaneOkno: TPaczkiDaneOkno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ImageModule, szukajKlienta;

function PaczkiDaneOkno: TPaczkiDaneOkno;
begin
  Result := TPaczkiDaneOkno(UniMainModule.GetFormInstance(TPaczkiDaneOkno));
end;

procedure TPaczkiDaneOkno.UniButton1Click(Sender: TObject);
begin
  szukajKlientaOkno.ShowModal(procedure (s: TComponent; r: integer)
          begin
            if r <> mrOk then
              Exit();

            fdPaczkaIDKLIENT.AsInteger := (s As TszukajKlientaOkno).fdSzukaj.FieldByName('IDKLIENT').AsInteger;
            sqlKlient();
          end);
end;

procedure TPaczkiDaneOkno.UniDBEdit5Exit(Sender: TObject);
begin
  if ( Trim(fdPaczkaODBIORCA_ADR_POWIAT.AsString) = '') AND ( Trim(fdPaczkaODBIORCA_ADR_KOD_POCZTOWY.AsString) <> '') then
  begin
    UniMainModule.fdTmp.Close();
    UniMainModule.fdTmp.SQL.Text :=
      'SELECT' + sLineBreak +
      ' FIRST 1 POWIAT' + sLineBreak +
      'FROM SLW_POWIATY' + sLineBreak +
      'WHERE SLW_POWIATY.KOD_POCZTOWY = :kod';
    UniMainModule.fdTmp.ParamByName('kod').AsString := fdPaczkaODBIORCA_ADR_KOD_POCZTOWY.AsString;
    UniMainModule.fdTmp.Open();

    if UniMainModule.fdTmp.RecordCount > 0 then
    begin
      fdPaczkaODBIORCA_ADR_POWIAT.AsString := UniMainModule.fdTmp.FieldByName('POWIAT').AsString;
    end;

    UniMainModule.fdTmp.Close();
  end;
end;

procedure TPaczkiDaneOkno.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fdPaczka.State in [dsInsert, dsEdit] then
    fdPaczka.Cancel();
end;

procedure TPaczkiDaneOkno.sqlKlient();
begin
  fdKlient.Close();
  fdKlient.ParamByName('id').AsInteger := fdPaczkaIDKLIENT.AsInteger;
  fdKlient.Open();

  klientVIPLbl.Visible := fdKlientKLIENT_VIP.AsString = 'Tak';
end;

procedure TPaczkiDaneOkno.sqlPaczka(id: Integer);
begin
  fdPaczka.Close();
  fdPaczka.ParamByName('id').AsInteger := id;
  fdPaczka.Open();
end;

procedure TPaczkiDaneOkno.nowaPozycja();
begin
  sqlPaczka(0);
  sqlKlient();

  slwPowiaty.Open();
  slwWojewodztwa.Open();
  slwRodzajPrzesylki.Open();

  fdPaczka.Append();
end;

procedure TPaczkiDaneOkno.btnZapiszClick(Sender: TObject);
begin
  if fdPaczkaIDKLIENT.IsNull then
  begin
    ShowMessage('Musisz wprowadziæ klienta');
    Exit();
  end;

  if fdPaczkaWAGA_PACZKI.AsFloat > slwRodzajPrzesylki.FieldByName('MAKS_WAGA').AsFloat then
  begin
    ShowMessage('Waga paczki przewy¿sza dopuszczaln¹ wagê dla tego roadzaju przesy³ki');
    Exit();
  end;

  if AnsiMatchText('', [Trim(fdPaczkaODBIORCA_IMIE.AsString),
                    Trim(fdPaczkaODBIORCA_NAZWISKO.AsString),
                    Trim(fdPaczkaODBIORCA_ADR_ULICA.AsString),
                    Trim(fdPaczkaODBIORCA_ADR_DOM.AsString),
                    Trim(fdPaczkaODBIORCA_ADR_KOD_POCZTOWY.AsString),
                    Trim(fdPaczkaODBIORCA_ADR_POWIAT.AsString),
                    Trim(fdPaczkaODBIORCA_ADR_WOJEWODZTWO.AsString)]) then
  begin
    ShowMessage('Musisz wype³niæ poprawnie dane odbiorcy');
    Exit();
  end;

  if fdPaczka.State = dsInsert then
  begin
    nowyNumer();
  end;

  if fdPaczka.State in [dsInsert, dsEdit] then
    fdPaczka.Post();

  ModalResult := mrOk;
end;

procedure TPaczkiDaneOkno.EdytujPozycje(idPaczka: integer);
begin
  sqlPaczka(idPaczka);
  //fdPaczka.Edit();
  sqlKlient();

  slwPowiaty.Open();
  slwWojewodztwa.Open();
  slwRodzajPrzesylki.Open();

end;

procedure TPaczkiDaneOkno.nowyNumer();
begin
  UniMainModule.fdTmp.Close();
  UniMainModule.fdTmp.SQL.Text := 'SELECT GEN_ID(NR_PACZKI_GEN, 1) AS NR FROM RDB$DATABASE';
  UniMainModule.fdTmp.Open();

  fdPaczkaNUMER_PACZKI.AsString := UniMainModule.fdTmp.Fields[0].AsString + '/' + YearOf(fdPaczkaDATA_NADANIA.AsDateTime).ToString();

  UniMainModule.fdTmp.Close();
end;

end.

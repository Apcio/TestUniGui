unit FakturyDane;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniGUIBaseClasses, uniPanel, uniEdit,
  uniDBEdit, uniGroupBox, uniButton, uniDateTimePicker, uniDBDateTimePicker,
  uniDBText, uniToolBar, uniBasicGrid, uniDBGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.DateUtils, Math,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait;

type
  TDaneFakturyOkno = class(TUniForm)
    UniPanel2: TUniPanel;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniGroupBox1: TUniGroupBox;
    UniGroupBox2: TUniGroupBox;
    UniPanel1: TUniPanel;
    UniPanel3: TUniPanel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    btnWybierzKlienta: TUniButton;
    UniDBText1: TUniDBText;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniDBText2: TUniDBText;
    UniDBText3: TUniDBText;
    UniDBText4: TUniDBText;
    UniDBText5: TUniDBText;
    UniDBText6: TUniDBText;
    UniDBText7: TUniDBText;
    UniDBText8: TUniDBText;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniToolButton5: TUniToolButton;
    UniDBGrid1: TUniDBGrid;
    fdDaneFV: TFDQuery;
    fdPozycjeFV: TFDQuery;
    dsFV: TDataSource;
    dsPozycjeFV: TDataSource;
    fdPaczka: TFDQuery;
    dsPaczka: TDataSource;
    btnZapisz: TUniButton;
    btnAnuluj: TUniButton;
    fdDaneFVID_FV: TIntegerField;
    fdDaneFVID_KLIENT: TIntegerField;
    fdDaneFVDATA_WYSTAWIENIA: TDateField;
    fdDaneFVWARTOSC_NETTO: TBCDField;
    fdDaneFVWARTOSC_VAT: TBCDField;
    fdDaneFVWARTOSC_BRUTTO: TBCDField;
    fdDaneFVNUMER: TIntegerField;
    fdDaneFVNUMER_FV: TStringField;
    fdPozycjeFVID_FV_POZ: TIntegerField;
    fdPozycjeFVID_FV: TIntegerField;
    fdPozycjeFVID_PACZKA: TIntegerField;
    fdPozycjeFVUSLUGA: TStringField;
    fdPozycjeFVILOSC: TIntegerField;
    fdPozycjeFVKWOTA_NETTO: TBCDField;
    fdPozycjeFVWARTOSC_NETTO: TBCDField;
    fdPozycjeFVWARTOSC_VAT: TBCDField;
    fdPozycjeFVWARTOSC_BRUTTO: TBCDField;
    fdPaczkaID_PACZKA: TIntegerField;
    fdPaczkaNUMER_PACZKI: TStringField;
    fdPaczkaIMIE: TStringField;
    fdPaczkaNAZWISKO: TStringField;
    fdPaczkaADRES_MIEJSCOWOSC: TStringField;
    fdPaczkaADRES_ULICA: TStringField;
    fdPaczkaADRES_DOM: TStringField;
    fdPaczkaADRES_LOKAL: TStringField;
    fdPaczkaADRES_KOD_POCZTOWY: TStringField;
    fdPaczkaADRES_POWIAT: TStringField;
    fdPaczkaADRES_WOJEWODZTWO: TStringField;
    fdDaneFVID_PACZKA: TIntegerField;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniDBText9: TUniDBText;
    UniDBText10: TUniDBText;
    UniDBGrid2: TUniDBGrid;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    UniDBGrid3: TUniDBGrid;
    FDConnection1: TFDConnection;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    procedure btnWybierzKlientaClick(Sender: TObject);
    procedure btnZapiszClick(Sender: TObject);
    procedure UniToolButton5Click(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure sqlDanePaczki();
    procedure sqlDaneFV(id: integer);
    procedure sqlDanePozycje();

    procedure wprowadzNumerFV();

    procedure przypiszKlienta(s: TComponent; r: integer);
  public
    { Public declarations }

    procedure nowaPozycja();
    procedure edytujPozycje(id: Integer);
  end;

function DaneFakturyOkno: TDaneFakturyOkno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ImageModule, szukajPaczki;

function DaneFakturyOkno: TDaneFakturyOkno;
begin
  Result := TDaneFakturyOkno(UniMainModule.GetFormInstance(TDaneFakturyOkno));
end;

procedure TDaneFakturyOkno.przypiszKlienta(s: TComponent; r: integer);
begin
  if r = mrOk then
  begin
    if szukajPaczkiOkno.fdSzukaj.FieldByName('WYSTAWIONA_FV').AsString = 'Tak' then
    begin
      ShowMessage('Wybrana umowa przesy³ki posiada ju¿ wystawion¹ fakturê');
      Exit();
    end;

    Self.fdDaneFVID_KLIENT.AsInteger := szukajPaczkiOkno.fdSzukaj.FieldByName('IDKLIENT').AsInteger;
    Self.fdDaneFVID_PACZKA.AsInteger := szukajPaczkiOkno.fdSzukaj.FieldByName('ID_PACZKA').AsInteger;

    UniMainModule.fdTmp.Close();
    UniMainModule.fdTmp.SQL.Text :=
      'SELECT' + sLineBreak +
      ' PACZKI.NUMER_PACZKI,' + sLineBreak +
      ' SLW_RODZAJ_PRZESYLKI.NAZWA,' + sLineBreak +
      ' SLW_RODZAJ_PRZESYLKI.CENA' + sLineBreak +
      'FROM PACZKI' + sLineBreak +
      'JOIN SLW_RODZAJ_PRZESYLKI ON SLW_RODZAJ_PRZESYLKI.ID_SLW_RODZAJ_PRZESYLKI = PACZKI.ID_SLW_RODZAJ_PRZESYLKI' + sLineBreak +
      'WHERE PACZKI.ID_PACZKA = ' + Self.fdDaneFVID_PACZKA.AsString;
    UniMainModule.fdTmp.Open();

    fdPozycjeFV.Append();
    fdPozycjeFVID_FV.AsInteger := Self.fdDaneFVID_FV.AsInteger;
    fdPozycjeFVID_PACZKA.AsInteger := szukajPaczkiOkno.fdSzukaj.FieldByName('ID_PACZKA').AsInteger;
    fdPozycjeFVUSLUGA.AsString := 'Op³ata za nadanie przesy³ki nr ' +
                                       UniMainModule.fdTmp.FieldByName('NUMER_PACZKI').AsString +
                                       ' metod¹ ' + UniMainModule.fdTmp.FieldByName('NAZWA').AsString;
    fdPozycjeFVILOSC.AsInteger := 1;
    fdPozycjeFVKWOTA_NETTO.AsCurrency := UniMainModule.fdTmp.FieldByName('CENA').AsCurrency;
    fdPozycjeFVWARTOSC_NETTO.AsCurrency := RoundTo(Self.fdPozycjeFVKWOTA_NETTO.AsCurrency * Self.fdPozycjeFVILOSC.AsInteger, -2);
    fdPozycjeFVWARTOSC_VAT.AsCurrency := RoundTo(Self.fdPozycjeFVWARTOSC_NETTO.AsCurrency * 0.23, -2);
    fdPozycjeFVWARTOSC_BRUTTO.AsCurrency := RoundTo(Self.fdPozycjeFVWARTOSC_NETTO.AsCurrency + Self.fdPozycjeFVWARTOSC_VAT.AsCurrency, -2);

    Self.fdPozycjeFV.Post();

    UniMainModule.fdTmp.Close();

    sqlDanePaczki();
  end;
end;

procedure TDaneFakturyOkno.btnWybierzKlientaClick(Sender: TObject);
begin
  szukajPaczkiOkno.ShowModal(przypiszKlienta);
end;

procedure TDaneFakturyOkno.sqlDanePaczki();
begin
  fdPaczka.Close();
  fdPaczka.ParamByName('id').AsInteger := fdDaneFVID_PACZKA.AsInteger;
  fdPaczka.Open();
end;

procedure TDaneFakturyOkno.nowaPozycja();
begin
  sqlDaneFV(-1);

  fdDaneFV.Append();
  fdDaneFVDATA_WYSTAWIENIA.AsDateTime := Now();

  sqlDanePozycje();
end;

procedure TDaneFakturyOkno.sqlDaneFV(id: integer);
begin
  fdDaneFV.Close();
  fdDaneFV.CachedUpdates := True;
  fdDaneFV.ParamByName('id').AsInteger := id;
  fdDaneFV.Open();
end;

procedure TDaneFakturyOkno.sqlDanePozycje();
begin
  fdPozycjeFV.Close();
  fdPozycjeFV.CachedUpdates := True;
  fdPozycjeFV.ParamByName('id').AsInteger := fdDaneFVID_FV.AsInteger;
  fdPozycjeFV.Open();
end;

procedure TDaneFakturyOkno.UniButton1Click(Sender: TObject);
begin
  fdPozycjeFV.Append();
  fdPozycjeFVID_FV.AsInteger := fdDaneFVID_FV.AsInteger;
end;

procedure TDaneFakturyOkno.UniButton2Click(Sender: TObject);
begin
  fdPozycjeFV.Post();
end;

procedure TDaneFakturyOkno.UniButton3Click(Sender: TObject);
begin
  fdPozycjeFV.ApplyUpdates();
end;

procedure TDaneFakturyOkno.UniButton4Click(Sender: TObject);
begin
  fdPozycjeFV.CancelUpdates();
end;

procedure TDaneFakturyOkno.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fdDaneFV.State in [dsInsert, dsEdit] then
  begin
    fdDaneFV.Cancel();
  end;
end;

procedure TDaneFakturyOkno.UniToolButton5Click(Sender: TObject);
begin
  sqlDanePozycje();
end;

procedure TDaneFakturyOkno.btnZapiszClick(Sender: TObject);
begin
  if fdDaneFVID_PACZKA.isNull then
  begin
    ShowMessage('Nie wybrano przesy³ki do zafakturowania');
    Exit();
  end;

  {if fdPozycjeFV.RecordCount = 0 then
  begin
    ShowMessage('Faktura nie posiada pozycji');
    Exit();
  end;}

  try
    wprowadzNumerFV();

    fdDaneFV.Post();

    Self.ModalResult := mrOk;
  except
    on e: Exception do
    begin
      ShowMessage('Nie uda³o siê zapisaæ faktury, spróbuj ponownie.' + sLineBreak + 'B³¹d' + e.Message);
     // fdDaneFV.Cancel();
    //  fdPozycjeFV.Cancel();

      Self.ModalResult := mrAbort;
      Exit();
    end;
  end;

end;

procedure TDaneFakturyOkno.edytujPozycje(id: Integer);
begin
  sqlDaneFV(id);
  sqlDanePozycje();
  sqlDanePaczki();

  fdDaneFV.Edit();
end;

procedure TDaneFakturyOkno.wprowadzNumerFV();
begin
  UniMainModule.fdTmp.Close();
  UniMainModule.fdTmp.SQL.Text :=
    'SELECT ' + sLineBreak +
    'MAX(NUMER) AS NR FROM FAKTURA' + sLineBreak +
    'WHERE EXTRACT(YEAR FROM DATA_WYSTAWIENIA) = EXTRACT(YEAR FROM CURRENT_DATE) ' + sLineBreak +
    'AND EXTRACT(MONTH FROM DATA_WYSTAWIENIA) = EXTRACT(MONTH FROM CURRENT_DATE)';
  UniMainModule.fdTmp.Open();

  fdDaneFVNUMER.AsInteger := UniMainModule.fdTmp.Fields[0].AsInteger + 1;

  UniMainModule.fdTmp.Close();

  fdDaneFVNUMER_FV.AsString := 'FV/' + fdDaneFVNUMER.AsString + '/' + IntToStr(YearOf(fdDaneFVDATA_WYSTAWIENIA.AsDateTime));
end;

end.

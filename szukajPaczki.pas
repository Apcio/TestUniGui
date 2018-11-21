unit szukajPaczki;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniBasicGrid, uniDBGrid, uniButton,
  uniEdit, uniLabel, uniGUIBaseClasses, uniPanel, uniGroupBox;

type
  TszukajPaczkiOkno = class(TUniForm)
    UniPanel1: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    szukajKlImie: TUniEdit;
    szukajKlMiejscowosc: TUniEdit;
    szukajKlNazwisko: TUniEdit;
    UniButton3: TUniButton;
    UniDBGrid1: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    fdSzukaj: TFDQuery;
    dsSzukaj: TDataSource;
    UniGroupBox1: TUniGroupBox;
    UniGroupBox2: TUniGroupBox;
    szukajOdbImie: TUniEdit;
    szukajOdbNazwisko: TUniEdit;
    szukajOdbMiejscowosc: TUniEdit;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    szukajNumerPaczki: TUniEdit;
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function szukajPaczkiOkno: TszukajPaczkiOkno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function szukajPaczkiOkno: TszukajPaczkiOkno;
begin
  Result := TszukajPaczkiOkno(UniMainModule.GetFormInstance(TszukajPaczkiOkno));
end;

procedure TszukajPaczkiOkno.UniButton1Click(Sender: TObject);
begin
  if fdSzukaj.RecordCount = 0 then
  begin
    ShowMessage('Nie wybrano ¿adnej pozycji');
    Exit();
  end;

  Self.ModalResult := mrOk;
end;

procedure TszukajPaczkiOkno.UniButton3Click(Sender: TObject);
begin
  fdSzukaj.Close();

  if Trim(szukajKlImie.Text) <> '' then fdSzukaj.ParamByName('klImie').AsString := '%' + AnsiUpperCase(szukajKlImie.Text) + '%'
  else fdSzukaj.ParamByName('klImie').AsString := '%';

  if Trim(szukajKlNazwisko.Text) <> '' then fdSzukaj.ParamByName('klNazwisko').AsString := '%' + AnsiUpperCase(szukajKlNazwisko.Text) + '%'
  else fdSzukaj.ParamByName('klNazwisko').AsString := '%';

  if  Trim(szukajKlMiejscowosc.Text) <> '' then fdSzukaj.ParamByName('klMiejscowosc').AsString := '%' + AnsiUpperCase(szukajKlMiejscowosc.Text) + '%'
  else fdSzukaj.ParamByName('klMiejscowosc').AsString := '%';

  if Trim(szukajOdbImie.Text) <> '' then fdSzukaj.ParamByName('odbImie').AsString := '%' + AnsiUpperCase(szukajOdbImie.Text) + '%'
  else fdSzukaj.ParamByName('odbImie').AsString := '%';

  if Trim(szukajOdbNazwisko.Text) <> '' then fdSzukaj.ParamByName('odbNazwisko').AsString := '%' + AnsiUpperCase(szukajOdbNazwisko.Text) + '%'
  else fdSzukaj.ParamByName('odbNazwisko').AsString := '%';

  if  Trim(szukajOdbMiejscowosc.Text) <> '' then fdSzukaj.ParamByName('odbMiejscowosc').AsString := '%' + AnsiUpperCase(szukajOdbMiejscowosc.Text) + '%'
  else fdSzukaj.ParamByName('odbMiejscowosc').AsString := '%';

  if  Trim(szukajNumerPaczki.Text) <> '' then fdSzukaj.ParamByName('nrPaczki').AsString := '%' + szukajNumerPaczki.Text + '%'
  else fdSzukaj.ParamByName('nrPaczki').AsString := '%';

  fdSzukaj.Open();
end;

procedure TszukajPaczkiOkno.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  if fdSzukaj.FieldByName('WYSTAWIONA_FV').AsString = 'Tak' then
  begin
    Attribs.Color := clWebGreen;
  end;
end;

end.

unit szukajKlienta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniEdit, uniLabel;

type
  TszukajKlientaOkno = class(TUniForm)
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    fdSzukaj: TFDQuery;
    dsSzukaj: TDataSource;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    szukajImie: TUniEdit;
    szukajNazwisko: TUniEdit;
    szukajMiejscowosc: TUniEdit;
    UniButton3: TUniButton;
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function szukajKlientaOkno: TszukajKlientaOkno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ImageModule;

function szukajKlientaOkno: TszukajKlientaOkno;
begin
  Result := TszukajKlientaOkno(UniMainModule.GetFormInstance(TszukajKlientaOkno));
end;

procedure TszukajKlientaOkno.UniButton1Click(Sender: TObject);
begin
  if fdSzukaj.RecordCount = 0 then
  begin
    ShowMessage('Znajdü i wybierz klienta');
    Exit();
  end;

  ModalResult := mrOk;
end;

procedure TszukajKlientaOkno.UniButton3Click(Sender: TObject);
begin
  fdSzukaj.Close();

  if Trim(szukajImie.Text) <> '' then fdSzukaj.ParamByName('imie').AsString := '%' + AnsiUpperCase(szukajImie.Text) + '%'
  else fdSzukaj.ParamByName('imie').AsString := '%';

  if Trim(szukajNazwisko.Text) <> '' then fdSzukaj.ParamByName('nazwisko').AsString := '%' + AnsiUpperCase(szukajNazwisko.Text) + '%'
  else fdSzukaj.ParamByName('nazwisko').AsString := '%';

  if  Trim(szukajMiejscowosc.Text) <> '' then fdSzukaj.ParamByName('miejscowosc').AsString := '%' + AnsiUpperCase(szukajMiejscowosc.Text) + '%'
  else fdSzukaj.ParamByName('miejscowosc').AsString := '%';

  fdSzukaj.Open();
end;

end.

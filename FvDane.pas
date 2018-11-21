unit FvDane;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniButton, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait;

type
  TfvDaneOkno = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    fdFv: TFDQuery;
    fdFVPozycje: TFDQuery;
    dsFv: TDataSource;
    dsFVPozycje: TDataSource;
    UniButton1: TUniButton;
    FDConnection1: TFDConnection;
    UniButton2: TUniButton;
    procedure UniFormShow(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure nowaPozycja();
  end;

function fvDaneOkno: TfvDaneOkno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ImageModule;

function fvDaneOkno: TfvDaneOkno;
begin
  Result := TfvDaneOkno(UniMainModule.GetFormInstance(TfvDaneOkno));
end;

procedure TfvDaneOkno.nowaPozycja();
begin
  FDConnection1.Open();

  fdFv.close();
  fdFV.CachedUpdates := True;
  fdFv.Open();
  fdFV.Append();

  fdFVPozycje.Close();
  fdFVPozycje.CachedUpdates := True;
  fdFVPozycje.ParamByName('id').AsInteger := fdFv.FieldByName('ID_FV').AsInteger;
  fdFVPozycje.Open();
  fdFVPozycje.Append();
  fdFVPozycje.FieldByName('ID_FV').AsInteger := fdFv.FieldByName('ID_FV').AsInteger;

end;

procedure TfvDaneOkno.UniButton1Click(Sender: TObject);
begin
nowaPozycja();
end;

procedure TfvDaneOkno.UniButton2Click(Sender: TObject);
begin
  fdFVPozycje.Post();
  //fdFv.Post();
end;

procedure TfvDaneOkno.UniFormShow(Sender: TObject);
begin
nowaPozycja();
end;

end.

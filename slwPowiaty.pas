unit slwPowiaty;

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
  TslwPowiatyOkno = class(TUniForm)
    UniPanel1: TUniPanel;
    btnWyjscie: TUniButton;
    UniToolBar1: TUniToolBar;
    btnDodaj: TUniToolButton;
    btnEdytuj: TUniToolButton;
    btnUsun: TUniToolButton;
    UniToolButton4: TUniToolButton;
    btnOdswiez: TUniToolButton;
    UniDBGrid1: TUniDBGrid;
    powiaty: TFDQuery;
    dsPowiaty: TDataSource;
    powiatyID_SLW_POWIATY: TIntegerField;
    powiatyKOD_POCZTOWY: TStringField;
    powiatyPOWIAT: TStringField;
    procedure btnDodajClick(Sender: TObject);
    procedure btnEdytujClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure btnOdswiezClick(Sender: TObject);
    procedure powiatyAfterPost(DataSet: TDataSet);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function slwPowiatyOkno: TslwPowiatyOkno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function slwPowiatyOkno: TslwPowiatyOkno;
begin
  Result := TslwPowiatyOkno(UniMainModule.GetFormInstance(TslwPowiatyOkno));
end;

procedure TslwPowiatyOkno.btnDodajClick(Sender: TObject);
begin
  UniDBGrid1.ReadOnly := False;
  powiaty.Append();
end;

procedure TslwPowiatyOkno.btnEdytujClick(Sender: TObject);
begin
  UniDBGrid1.ReadOnly := False;
  powiaty.Edit();
end;

procedure TslwPowiatyOkno.btnOdswiezClick(Sender: TObject);
begin
  powiaty.Close();
  powiaty.Open();
end;

procedure TslwPowiatyOkno.btnUsunClick(Sender: TObject);
begin
  MessageDlg('Czy chcesz usun¹æ wpis: ' + powiatyKOD_POCZTOWY.AsString + ' ' + powiatyPOWIAT.AsString, mtConfirmation, mbYesNo,
    procedure (Sender: TComponent; mr: Integer)
    begin
      if mr = mrYes then
      begin
        powiaty.Delete();
        powiaty.Refresh();
      end;
    end
  );
end;

procedure TslwPowiatyOkno.powiatyAfterPost(DataSet: TDataSet);
begin
  powiaty.Refresh();
  UniDBGrid1.ReadOnly := True;
end;

procedure TslwPowiatyOkno.UniFormShow(Sender: TObject);
begin
  btnOdswiezClick(nil);
end;

end.

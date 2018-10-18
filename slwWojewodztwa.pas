unit slwWojewodztwa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniBasicGrid, uniDBGrid,
  uniToolBar, uniButton, uniGUIBaseClasses, uniPanel, uniDBNavigator;

type
  TslwWojewodztwaOkno = class(TUniForm)
    UniPanel1: TUniPanel;
    btnWyjscie: TUniButton;
    UniDBGrid1: TUniDBGrid;
    wojewodztwa: TFDQuery;
    dsWojewodztwa: TDataSource;
    wojewodztwaID_SLW_WOJEWODZTWA: TIntegerField;
    wojewodztwaWOJEWODZTWO: TStringField;
    UniToolBar1: TUniToolBar;
    btnDodaj: TUniToolButton;
    btnEdytuj: TUniToolButton;
    btnUsun: TUniToolButton;
    UniToolButton4: TUniToolButton;
    btnOdswiez: TUniToolButton;
    procedure UniFormShow(Sender: TObject);
    procedure btnOdswiezClick(Sender: TObject);
    procedure btnDodajClick(Sender: TObject);
    procedure wojewodztwaAfterPost(DataSet: TDataSet);
    procedure btnUsunClick(Sender: TObject);
    procedure btnEdytujClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function slwWojewodztwaOkno: TslwWojewodztwaOkno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ImageModule;

function slwWojewodztwaOkno: TslwWojewodztwaOkno;
begin
  Result := TslwWojewodztwaOkno(UniMainModule.GetFormInstance(TslwWojewodztwaOkno));
end;

procedure TslwWojewodztwaOkno.btnDodajClick(Sender: TObject);
begin
  UniDBGrid1.ReadOnly := False;
  wojewodztwa.Append();
end;

procedure TslwWojewodztwaOkno.btnEdytujClick(Sender: TObject);
begin
  UniDBGrid1.ReadOnly := False;
  wojewodztwa.Edit();
end;

procedure TslwWojewodztwaOkno.btnOdswiezClick(Sender: TObject);
begin
  wojewodztwa.Close();
  wojewodztwa.Open();
end;

procedure TslwWojewodztwaOkno.btnUsunClick(Sender: TObject);
begin
  MessageDlg('Czy chcesz usun¹æ wpis: ' + wojewodztwaWOJEWODZTWO.AsString, mtConfirmation, mbYesNo,
    procedure (Sender: TComponent; mr: Integer)
    begin
      if mr = mrYes then
      begin
        wojewodztwa.Delete();
        wojewodztwa.Refresh();
      end;
    end
  );
end;

procedure TslwWojewodztwaOkno.UniFormShow(Sender: TObject);
begin
  btnOdswiezClick(nil);
end;

procedure TslwWojewodztwaOkno.wojewodztwaAfterPost(DataSet: TDataSet);
begin
  wojewodztwa.Refresh();
  UniDBGrid1.ReadOnly := True;
end;

end.

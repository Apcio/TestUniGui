unit slwPaczki;

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
  TslwPaczkiOkno = class(TUniForm)
    UniPanel1: TUniPanel;
    btnWyjscie: TUniButton;
    UniToolBar1: TUniToolBar;
    btnDodaj: TUniToolButton;
    btnEdytuj: TUniToolButton;
    btnUsun: TUniToolButton;
    UniToolButton4: TUniToolButton;
    btnOdswiez: TUniToolButton;
    UniDBGrid1: TUniDBGrid;
    paczki: TFDQuery;
    dsPaczki: TDataSource;
    paczkiIDSLW_PACZKI: TIntegerField;
    paczkiRODZAJ: TStringField;
    procedure btnDodajClick(Sender: TObject);
    procedure btnEdytujClick(Sender: TObject);
    procedure btnUsunClick(Sender: TObject);
    procedure btnOdswiezClick(Sender: TObject);
    procedure paczkiAfterPost(DataSet: TDataSet);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function slwPaczkiOkno: TslwPaczkiOkno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function slwPaczkiOkno: TslwPaczkiOkno;
begin
  Result := TslwPaczkiOkno(UniMainModule.GetFormInstance(TslwPaczkiOkno));
end;

procedure TslwPaczkiOkno.btnDodajClick(Sender: TObject);
begin
  UniDBGrid1.ReadOnly := False;
  paczki.Append();
end;

procedure TslwPaczkiOkno.btnEdytujClick(Sender: TObject);
begin
  UniDBGrid1.ReadOnly := False;
  paczki.Edit();
end;

procedure TslwPaczkiOkno.btnOdswiezClick(Sender: TObject);
begin
  paczki.Close();
  paczki.Open();
end;

procedure TslwPaczkiOkno.btnUsunClick(Sender: TObject);
begin
  MessageDlg('Czy chcesz usun¹æ wpis: ' + paczkiRODZAJ.AsString, mtConfirmation, mbYesNo,
    procedure (Sender: TComponent; mr: Integer)
    begin
      if mr = mrYes then
      begin
        paczki.Delete();
        paczki.Refresh();
      end;
    end
  );
end;

procedure TslwPaczkiOkno.paczkiAfterPost(DataSet: TDataSet);
begin
  paczki.Refresh();
  UniDBGrid1.ReadOnly := True;
end;

procedure TslwPaczkiOkno.UniFormShow(Sender: TObject);
begin
  btnOdswiezClick(nil);
end;

end.

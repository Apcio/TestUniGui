unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniImage, uniGroupBox,
  uniGUIBaseClasses, uniButton, Vcl.Imaging.pngimage;

type
  TMainForm = class(TUniForm)
    btnZaloguj: TUniButton;
    UniGroupBox1: TUniGroupBox;
    UniImage1: TUniImage;
    btnKlienci: TUniButton;
    btnPaczki: TUniButton;
    btnFaktury: TUniButton;
    btnSlwPrzesylki: TUniButton;
    btnWylogujSie: TUniButton;
    slwPowiaty: TUniButton;
    slwWojewodztwa: TUniButton;
    procedure btnZalogujClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure btnKlienciClick(Sender: TObject);
    procedure btnWylogujSieClick(Sender: TObject);
    procedure slwWojewodztwaClick(Sender: TObject);
    procedure slwPowiatyClick(Sender: TObject);
    procedure btnSlwPrzesylkiClick(Sender: TObject);
    procedure btnPaczkiClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ImageModule, Klienci, slwWojewodztwa,
  slwPowiaty, slwPaczki, Paczki;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.btnKlienciClick(Sender: TObject);
begin
  KlienciForm.Show();
end;

procedure TMainForm.btnZalogujClick(Sender: TObject);
var
  ok: Boolean;
begin
  ok := UniMainModule.polaczZBaza();

  if ok = False then
    UniImage1.Url := ImgModule.image32.GetImagePngUrl(1);

  if ok = True then
    UniImage1.Url := ImgModule.image32.GetImagePngUrl(0);
end;

procedure TMainForm.slwPowiatyClick(Sender: TObject);
begin
  slwPowiatyOkno.Show();
end;

procedure TMainForm.slwWojewodztwaClick(Sender: TObject);
begin
  slwWojewodztwaOkno.Show();
end;

procedure TMainForm.btnPaczkiClick(Sender: TObject);
begin
  PaczkiOkno.Show();
end;

procedure TMainForm.btnSlwPrzesylkiClick(Sender: TObject);
begin
  slwPaczkiOkno.Show();
end;

procedure TMainForm.btnWylogujSieClick(Sender: TObject);
begin
  Self.Close();
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniSession.AddJS('document.title = "Test uniGUI"');
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  btnZaloguj.Click();
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

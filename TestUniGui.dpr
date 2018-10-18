program TestUniGui;

uses
  Forms,
  ImageModule in 'ImageModule.pas' {IM: TDataModule},
  Klienci in 'Klienci.pas' {KlienciForm: TUniForm},
  KlienciDane in 'KlienciDane.pas' {klienciDaneForm: TUniForm},
  Main in 'Main.pas' {MainForm: TUniForm},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  slwWojewodztwa in 'slwWojewodztwa.pas' {slwWojewodztwaOkno: TUniForm},
  slwPowiaty in 'slwPowiaty.pas' {slwPowiatyOkno: TUniForm},
  slwPaczki in 'slwPaczki.pas' {slwPaczkiOkno: TUniForm},
  Paczki in 'Paczki.pas' {PaczkiOkno: TUniForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.

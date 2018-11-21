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
  Paczki in 'Paczki.pas' {PaczkiOkno: TUniForm},
  PaczkiDane in 'PaczkiDane.pas' {PaczkiDaneOkno: TUniForm},
  szukajKlienta in 'szukajKlienta.pas' {szukajKlientaOkno: TUniForm},
  Faktury in 'Faktury.pas' {FakturyOkno: TUniForm},
  FakturyDane in 'FakturyDane.pas' {DaneFakturyOkno: TUniForm},
  szukajPaczki in 'szukajPaczki.pas' {szukajPaczkiOkno: TUniForm},
  FvDane in 'FvDane.pas' {fvDaneOkno: TUniForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.

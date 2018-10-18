unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, System.IOUtils, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TUniMainModule = class(TUniGUIMainModule)
    Polaczenie: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    fdTmp: TFDQuery;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function polaczZBaza(): Boolean;
    function jestPolaczenieZBaza(): Boolean;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, ImageModule;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

function TUniMainModule.polaczZBaza(): Boolean;
begin
  Polaczenie.Close();
  Polaczenie.Params.Clear();

  Polaczenie.DriverName := 'FB';

  Polaczenie.Params.Add('DATABASE=' + TPath.GetDirectoryName(ParamStr(0)) + '\files\UGPOCZTA.FDB');
  Polaczenie.Params.Add('USER_NAME=SYSDBA');
  Polaczenie.Params.Add('PASSWORD=masterkey');
  Polaczenie.Params.Add('PORT=3050');
  Polaczenie.Params.Add('PROTOCOL=TCPIP');
  Polaczenie.Params.Add('SERVER=LOCALHOST');
  Polaczenie.Params.Add('CHARACTERSET=WIN1250');

  FDPhysFBDriverLink1.VendorLib := TPath.GetDirectoryName(ParamStr(0)) + '\files\fbclient.dll';

  try
    Polaczenie.Open();
  except
    on e: Exception do
      ApplicationShowException(e);
  end;

  Result := Polaczenie.Connected;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
  ImgModule := TIM.Create(Self);
end;

function TUniMainModule.jestPolaczenieZBaza(): Boolean;
begin
  Result := Polaczenie.Connected;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.

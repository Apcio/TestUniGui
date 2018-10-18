unit ImageModule;

interface

uses
  SysUtils, Classes, uniGUIBaseClasses, uniGUIClasses, uniImageList, Vcl.Imaging.pngimage;

type
  TIM = class(TDataModule)
    image32: TUniNativeImageList;
    image16: TUniNativeImageList;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  ImgModule: TIM;


implementation

{$R *.dfm}

end.

unit Janua.FMX.Euroflora.Resources;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, FMX.ImgList;

type
  TJanuaSettingsIcons = (Help, Password, Info, Settings, LogOut, LogIn, None);

type
  TdmFMXResources = class(TDataModule)
    ImageList512: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFMXResources: TdmFMXResources;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.

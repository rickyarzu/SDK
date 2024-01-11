unit Janua.FMX.PhoenixMobile.Resources;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, FMX.ImgList, FMX.TMSBitmapContainer;

type
  TdmJanuaFMXPhoenixMobileResources = class(TDataModule)
    ImageList512: TImageList;
    TMSFMXBitmapContainer1: TTMSFMXBitmapContainer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmJanuaFMXPhoenixMobileResources: TdmJanuaFMXPhoenixMobileResources;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.

unit udmVCLIcons32;

interface

uses
  System.SysUtils, System.Classes, 
  System.ImageList, Vcl.ImgList, SVGIconImageList;

type
  TdmVCLIcons32 = class(TDataModule)
    SVGIconImageList32: TSVGIconImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVCLIcons32: TdmVCLIcons32;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

unit udmVCLIcons24;

interface

uses
  System.SysUtils, System.Classes, 
  System.ImageList, Vcl.ImgList, SVGIconImageList;

type
  TdmVCLIcons24 = class(TDataModule)
    SVGIconImageList24: TSVGIconImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVCLIcons24: TdmVCLIcons24;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

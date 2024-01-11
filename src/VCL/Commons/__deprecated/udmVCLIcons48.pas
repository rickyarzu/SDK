unit udmVCLIcons48;

interface

uses
  System.SysUtils, System.Classes,
  System.ImageList, Vcl.ImgList, SVGIconImageList;

type
  TdmVCLIcons48 = class(TDataModule)
    SVGIconImageList48: TSVGIconImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVCLIcons48: TdmVCLIcons48;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

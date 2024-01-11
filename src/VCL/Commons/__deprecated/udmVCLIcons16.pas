unit udmVCLIcons16;

interface

uses
  System.SysUtils,
  System.ImageList, Vcl.ImgList, SVGIconImageList, System.Classes;

type
  TdmVCLIcons16 = class(TDataModule)
    SVGIconImageList16: TSVGIconImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVCLIcons16: TdmVCLIcons16;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

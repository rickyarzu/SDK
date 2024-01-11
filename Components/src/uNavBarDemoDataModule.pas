unit uNavBarDemoDataModule;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, SVGIconImageList;

type
  TNavBarDemoDataModule = class(TDataModule)
    SVGIconImageList: TSVGIconImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NavBarDemoDataModule: TNavBarDemoDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

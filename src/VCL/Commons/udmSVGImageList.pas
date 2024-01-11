unit udmSVGImageList;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, SVGIconImageList, Vcl.Controls,
  SVGIconImageListBase;

type
  TdmSVGImageList = class(TDataModule)
    SVGIconImageList: TSVGIconImageList;
    IconFontImageList: TSVGIconImageList;
    IconFontsMono: TSVGIconImageList;
    procedure DataModuleCreate(Sender: TObject);
  private
    FIconSize: integer;
    function GetIconSize: integer;
    procedure SetIconSize(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property IconSize: integer read FIconSize write SetIconSize;
  end;

var
  dmSVGImageList: TdmSVGImageList;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmSVGImageList }

{

  32 Anagraph List
}

procedure TdmSVGImageList.DataModuleCreate(Sender: TObject);
begin
  FIconSize := SVGIconImageList.Size
end;

function TdmSVGImageList.GetIconSize: integer;
begin
  Result := SVGIconImageList.Size
end;

procedure TdmSVGImageList.SetIconSize(const Value: integer);
begin
  if SVGIconImageList.Size <> Value then
  begin
    FIconSize := Value;
    SVGIconImageList.Size := FIconSize;
    SVGIconImageList.RecreateBitmaps;

    IconFontImageList.Size := FIconSize;
    IconFontImageList.RecreateBitmaps;
  end;
end;

end.

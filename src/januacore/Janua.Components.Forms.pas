unit Janua.Components.Forms;

interface

uses Janua.Core.Classes, Janua.Core.Types, System.SysUtils, System.Classes, System.StrUtils;

{$TYPEINFO ON}
{$METHODINFO ON}

type
  TJanuaStyleManager = class(TJanuaCoreComponent)
  strict protected
    function GetScreenFontName: string;
    function GetStyleList: TStrings;
    function GetScreenFontHeight: Integer;
  public
    procedure ShowSelectThemStyler;
    constructor Create(AOwner: TComponent); override;
  published
    property ScreenFontName: string read GetScreenFontName;
    property ScreenFontHeight: Integer read GetScreenFontHeight;
    property StyleList: TStrings read GetStyleList;
  end;

implementation

uses Janua.Application.Framework;

{ TJanuaStyleManager }

constructor TJanuaStyleManager.Create(AOwner: TComponent);
begin
  inherited;

end;

function TJanuaStyleManager.GetScreenFontHeight: Integer;
begin
  Result := TJanuaApplication.StyleManager.ScreenFontHeight
end;

function TJanuaStyleManager.GetScreenFontName: string;
begin
  Result := TJanuaApplication.StyleManager.ScreenFontName
end;

function TJanuaStyleManager.GetStyleList: TStrings;
begin
  Result := TJanuaApplication.StyleManager.StyleList
end;

procedure TJanuaStyleManager.ShowSelectThemStyler;
begin
  TJanuaApplication.StyleManager.ShowSelectThemStyler
end;

end.

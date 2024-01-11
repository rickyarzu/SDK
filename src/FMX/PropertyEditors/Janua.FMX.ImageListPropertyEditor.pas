unit Janua.FMX.ImageListPropertyEditor;

{ ************************************************************************** }
{ TAdvSmoothTileListDE DESIGN TIME EDITOR }
{ for Delphi & C++Builder }
{ }
{ written by TMS Software }
{ copyright © 2011 }
{ Email : info@tmssoftware.com }
{ Web : http://www.tmssoftware.com }
{ }
{ The source code is given as is. The author is not responsible }
{ for any possible damage done due to the use of this code. }
{ The component can be freely used in any application. The complete }
{ source code remains property of the author and may not be distributed, }
{ published, given or sold in any form as such. No parts of the source }
{ code can be included in any other component or application without }
{ written authorization of the author. }
{ ************************************************************************** }

interface

uses
  Windows, System.SysUtils, System.Actions, System.UITypes, System.Math, System.RTLConsts, System.UIConsts,
  Vcl.Graphics, Vcl.Forms, DesignEditors, MaskUtils, TreeIntf, DesignMenus, DsnConst, DesignConst,
  DesignIntf, VCLEditors, FmxMultiResBitmapEditors, FmxImageListEditors, Janua.FMX.ListViewMenu,
  FMX.ImgList,  System.Classes;

type

  TJanuaFMXMenuImageIndexProperty = class(TImageIndexProperty, ICustomPropertyDrawing,
    ICustomPropertyListDrawing)
  protected
    function GetImageListAt(Index: Integer): TCustomImageList;
  public
  end;

implementation

uses
  TypInfo;

function TJanuaFMXMenuImageIndexProperty.GetImageListAt(Index: Integer): TCustomImageList;
begin
  Result := ((GetComponent(Index) as TJanuaFMXMenuItem).Collection.Owner as TJanuaFMXListViewMenuController).Images;
end;

end.

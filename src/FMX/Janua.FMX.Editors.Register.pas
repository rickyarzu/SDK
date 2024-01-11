unit Janua.FMX.Editors.Register;

interface

uses
  System.Classes, Vcl.Controls, System.Types, DesignIntf, System.TypInfo,
  // Fmx specifics
  FMX.Types, FMX.ListView.DynamicAppearance, FMX.ListView.Appearances, FMX.Controls;

// Janua.FMX.MapControls,

procedure Register;

implementation

uses
  Windows, System.SysUtils, System.Actions, System.UITypes, System.Math, System.RTLConsts, System.UIConsts,
  Vcl.Graphics, Vcl.Forms, DesignEditors, MaskUtils, TreeIntf, DesignMenus, DsnConst, DesignConst,
{$IFDEF MSWINDOWS}
  FMX.WindowsStore,
{$ENDIF}
  // Janua
  Janua.FMX.FormControls, {Janua.FMX.Dialogs,} Janua.FMX.Geocoding,
  Janua.FMX.MapStandardControls, Janua.FMX.Forms,
  Janua.FMX.ListViewMenu, Janua.FMX.Services, Janua.FMX.Cms, Janua.FMX.StandardMaps,
  // Designers
  FmxMultiResBitmapEditors, FmxImageListEditors, FMX.Design.Brush, FMX.Design.Bitmap, FMX.Design.ListView,
  FMX.Design.Items, FMX.Design.Path, FMX.Design.Lang, ActnEdit, FMX.ActnList, FMX.StdActns, FMX.ActnRes,
  ActionEditors, ComponentDesigner, VCLEditors, FmxAnimationEditors, FMX.Design.Import, FMX.Editor.MultiView,
{$IFDEF MSWINDOWS}
  StringsEdit,
  StrEdit,
{$ENDIF}
{$IFDEF LINUX}
  FmxStrEdit,
{$ENDIF}
  FMX.Editor.Items, FMX.Editor.AlignmentOrder, FmxSprigs, FmxStyleLookup,  FMX.Design.Font,
  FMX.Canvas.D2D,
  Winapi.D2D1;

procedure Register;
begin
  // RegisterPropertyEditor(TypeInfo(TImageIndex), MyControl, '', TImageIndexProperty);
  RegisterPropertyEditor(TypeInfo(TImageIndex), TJanuaFMXMenuItem, 'ImageIndex', TImageIndexProperty);
  // TJanuaFMXListViewMenuController
  RegisterPropertyEditor(TypeInfo(TImageIndex), TJanuaFMXListViewMenuController, 'ImageIndex', TImageIndexProperty);
end;

initialization

// RegisterFMXClasses([TJanuaFMXAddressList, TJanuaFMXMapControl]);

end.

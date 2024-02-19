unit Janua.VCL.Framework;

interface

uses VCL.Forms, VCL.ImgList, VCL.Graphics, udmSVGImageList, udmVCLMainApplication;

type
  TJanuaVCLApplication = class
  private
    class var FInitialized: boolean;
    class var FIconFontColor: Integer;
    class var FUseIconFontColor: boolean;
    class var FdmImgListIcon16: TdmSVGImageList;
    class var FdmImgListIcon32: TdmSVGImageList;
    class var FdmImgListIcon48: TdmSVGImageList;
    class var FdmImgListIcon24: TdmSVGImageList;
    class var FdmVCLMainApplication: TdmVCLMainApplication;
  class var
  private
    class function GetImgListVCLIcons16: TCustomImageList; static;
    class function GetImgListVCLIcons32: TCustomImageList; static;
    class function GetImgListVCLIcons24: TCustomImageList; static;
    class function GetImgListVCLIcons48: TCustomImageList; static;

    class function GetFontVCLIcons16: TCustomImageList; static;
    class function GetFontVCLIcons32: TCustomImageList; static;
    class function GetFontVCLIcons24: TCustomImageList; static;
    class function GetFontVCLIcons48: TCustomImageList; static;

    class function GetIconFontColor: Integer; static;
    class function GetTdmVCLMainApplication: TdmVCLMainApplication; static;
  public
    class procedure SetIconFontColor(const Value: Integer); static;
    class property ImgListVCLIcons16: TCustomImageList read GetImgListVCLIcons16;
    class property ImgListVCLIcons32: TCustomImageList read GetImgListVCLIcons32;
    class property ImgListVCLIcons24: TCustomImageList read GetImgListVCLIcons24;
    class property ImgListVCLIcons48: TCustomImageList read GetImgListVCLIcons48;

    class property FontVCLIcons16: TCustomImageList read GetFontVCLIcons16;
    class property FontVCLIcons32: TCustomImageList read GetFontVCLIcons32;
    class property FontVCLIcons24: TCustomImageList read GetFontVCLIcons24;
    class property FontVCLIcons48: TCustomImageList read GetFontVCLIcons48;
    class property IconFontColor: Integer read GetIconFontColor write SetIconFontColor;
    class property MainApplication: TdmVCLMainApplication read GetTdmVCLMainApplication;
  public
    class procedure RegisterMainApplication(aApplication: TdmVCLMainApplication);
    class function GetWidthText(const Text: String; Font: TFont): Integer;
  public
    class procedure Initialize;
    class procedure Terminate;
    class constructor Create;
    class procedure CreateImgList16;
    class procedure CreateImgList24;
    class procedure CreateImgList32;
    class procedure CreateImgList48;
  end;

implementation

uses
  System.SysUtils,
  // VCL.Styles.Utils.SysControls,
  // Janua Core Framework
  Janua.Application.Framework, Janua.Controls.Dialogs.Intf,
  // Register Units
  Janua.VCL.dlgInputNumber, Janua.VCL.Dialogs,
  // Controls Forms and Style Manager
  Janua.VCL.Controls.Forms.Impl, Janua.Controls.Forms.Intf;

{ TJanuaVCLApplication }

class constructor TJanuaVCLApplication.Create;
begin
  try
    FInitialized := False;
    FUseIconFontColor := False;
  except
    on e: exception do
      raise exception.Create('TJanuaVCLApplication.Create ' + e.Message);
  end;
end;

class procedure TJanuaVCLApplication.CreateImgList16;
begin
  if not Assigned(FdmImgListIcon16) then
  begin
    FdmImgListIcon16 := TdmSVGImageList.Create(nil);
    FdmImgListIcon16.IconSize := 16;
    if FUseIconFontColor then
      FdmImgListIcon16.IconFontImageList.FixedColor := FIconFontColor;
  end;
end;

class procedure TJanuaVCLApplication.CreateImgList24;
begin
  if not Assigned(FdmImgListIcon24) then
  begin
    FdmImgListIcon24 := TdmSVGImageList.Create(nil);
    FdmImgListIcon24.IconSize := 24;
    if FUseIconFontColor then
      FdmImgListIcon24.IconFontImageList.FixedColor := FIconFontColor;
  end;
end;

class procedure TJanuaVCLApplication.CreateImgList32;
begin
  if not Assigned(FdmImgListIcon32) then
  begin
    FdmImgListIcon32 := TdmSVGImageList.Create(nil);
    FdmImgListIcon32.IconSize := 32;
    if FUseIconFontColor then
      FdmImgListIcon32.IconFontImageList.FixedColor := FIconFontColor;
  end;
end;

class procedure TJanuaVCLApplication.CreateImgList48;
begin
  if not Assigned(FdmImgListIcon48) then
  begin
    FdmImgListIcon48 := TdmSVGImageList.Create(nil);
    FdmImgListIcon48.IconSize := 48;
    if FUseIconFontColor then
      FdmImgListIcon48.IconFontImageList.FixedColor := FIconFontColor;
  end;
end;

class function TJanuaVCLApplication.GetFontVCLIcons16: TCustomImageList;
begin
  CreateImgList16;
  Result := FdmImgListIcon16.IconFontImageList
end;

class function TJanuaVCLApplication.GetFontVCLIcons24: TCustomImageList;
begin
  CreateImgList24;
  Result := FdmImgListIcon24.IconFontImageList
end;

class function TJanuaVCLApplication.GetFontVCLIcons32: TCustomImageList;
begin
  CreateImgList32;
  Result := FdmImgListIcon32.IconFontImageList
end;

class function TJanuaVCLApplication.GetFontVCLIcons48: TCustomImageList;
begin
  CreateImgList48;
  Result := FdmImgListIcon48.IconFontImageList
end;

class function TJanuaVCLApplication.GetIconFontColor: Integer;
begin
  Result := FIconFontColor;

end;

class function TJanuaVCLApplication.GetImgListVCLIcons16: TCustomImageList;
begin
  CreateImgList16;
  Result := FdmImgListIcon16.SVGIconImageList
end;

class function TJanuaVCLApplication.GetImgListVCLIcons24: TCustomImageList;
begin
  CreateImgList24;
  Result := FdmImgListIcon24.SVGIconImageList
end;

class function TJanuaVCLApplication.GetImgListVCLIcons32: TCustomImageList;
begin
  CreateImgList32;
  Result := FdmImgListIcon32.SVGIconImageList
end;

class function TJanuaVCLApplication.GetImgListVCLIcons48: TCustomImageList;
begin
  CreateImgList48;
  Result := FdmImgListIcon48.SVGIconImageList
end;

class function TJanuaVCLApplication.GetTdmVCLMainApplication: TdmVCLMainApplication;
begin
  Result := FdmVCLMainApplication;
end;

class function TJanuaVCLApplication.GetWidthText(const Text: String; Font: TFont): Integer;
var
  LBmp: TBitmap;
begin
  LBmp := TBitmap.Create;
  try
    LBmp.Canvas.Font := Font;
    Result := LBmp.Canvas.TextWidth(Text);
  finally
    LBmp.Free;
  end;
end;

class procedure TJanuaVCLApplication.Initialize;
begin
  try
    // TdlgVCLInputNumber = class(TJanuaVCLFormModel, IJanuaDlgIntegerForm)
    TJanuaApplicationFactory.RegisterComponent(IJanuaDlgIntegerForm, TdlgVCLInputNumber);
    TJanuaApplicationFactory.RegisterClass(IJanuaDialogText, TJanuaVCLDialogText);
    // TJanuaVCLDialog = class(TJanuaCustomDialog, IJanuaDialog)
    TJanuaApplicationFactory.RegisterClass(IJanuaDialog, TJanuaVCLDialog);
    TJanuaApplicationFactory.RegisterClass(IJanuaStyleManager, TJanuaVCLStyleManager);
    TJanuaApplicationFactory.RegisterClass(IJanuaWindowsManager, TJanuaWindowsManager);
    { TSysStyleManager.Enabled := True; }
  finally
    FInitialized := True;
  end;
end;

class procedure TJanuaVCLApplication.RegisterMainApplication(aApplication: TdmVCLMainApplication);
begin
  FdmVCLMainApplication := aApplication
end;

class procedure TJanuaVCLApplication.SetIconFontColor(const Value: Integer);
begin
  FIconFontColor := Value;
  FUseIconFontColor := True;
  if Assigned(FdmImgListIcon16) then
    FdmImgListIcon16.IconFontImageList.FixedColor := FIconFontColor;
  if Assigned(FdmImgListIcon24) then
    FdmImgListIcon24.IconFontImageList.FixedColor := FIconFontColor;
  if Assigned(FdmImgListIcon32) then
    FdmImgListIcon32.IconFontImageList.FixedColor := FIconFontColor;
  if Assigned(FdmImgListIcon48) then
    FdmImgListIcon48.IconFontImageList.FixedColor := FIconFontColor;
end;

class procedure TJanuaVCLApplication.Terminate;
begin
  if Assigned(FdmImgListIcon48) then
    FdmImgListIcon48.Free;

  if Assigned(FdmImgListIcon16) then
    FdmImgListIcon16.Free;

  if Assigned(FdmImgListIcon32) then
    FdmImgListIcon32.Free;

  if Assigned(FdmImgListIcon24) then
    FdmImgListIcon24.Free;
end;

initialization

TJanuaVCLApplication.Initialize;

finalization

TJanuaVCLApplication.Terminate;

end.

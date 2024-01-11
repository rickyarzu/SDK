unit Janua.TMS.Functions;

interface

uses
  System.Classes, System.SysUtils, System.WideStrings, System.Types, System.WideStrUtils, Winapi.Windows,
  // VCL
  VCL.Controls, VCL.StdCtrls, VCL.Mask, VCL.Graphics, VCL.Imaging.GIFImg, VCL.Imaging.JPEG, VCL.Imaging.pngimage,
  VCL.Consts, VCL.Forms,
  // JEDI VCL
{$IFNDEF VER330}
  JvToolEdit, JvExControls, JvSpeedButton,
{$ENDIF}
  Data.DB,
  // tms components
  AdvMemo,
  Shader, AdvMenuStylers,
  AdvSmoothButton, AdvEdit, AdvAppStyler,
  AdvRichEditorToolBar, AdvOfficeButtons;

// TAdvCustomMemo
procedure SetText(aObject: TAdvCustomMemo; aText: string); overload;
function GetText(aObject: TAdvCustomMemo): string; overload;
// TAdvMemo
procedure SetText(aObject: TAdvMemo; aText: string); overload;
function GetText(aObject: TAdvMemo): string; overload;
// TAdvOfficeCheckBox
procedure SetBool(aObject: AdvOfficeButtons.TAdvOfficeCheckBox; Value: boolean); overload;
function GetBool(aObject: AdvOfficeButtons.TAdvOfficeCheckBox): boolean; overload;
// ******** funzioni di lettura e scrittura valori testuali da Label e Edit Boxes ***********
function CheckTest(aObject: TControl): boolean;
function CheckLabel(aObject: TControl): boolean;
function CheckEdit(aObject: TControl): boolean;

implementation

// TAdvMemo
procedure SetText(aObject: TAdvMemo; aText: string); overload;
begin
  if Assigned(aObject) then
    aObject.Lines.Text := aText
end;

function GetText(aObject: TAdvMemo): string; overload;
begin
  if Assigned(aObject) then
    Result := aObject.Lines.Text
  else
    Result := '';
end;

function GetText(aObject: TControl): string; overload;
begin
  Result := '';
  if Assigned(aObject) then
  begin
    if (aObject is TCustomMemo) then
      Result := GetText(aObject as TCustomMemo)
    else if (aObject is TCustomEdit) then
      Result := GetText(aObject as TCustomEdit)
      // TCustomLabel
    else if (aObject is TCustomLabel) then
      Result := GetText(aObject as TCustomLabel)
      // TCustomMaskEdit
    else if (aObject is TCustomMaskEdit) then
      Result := GetText(aObject as TCustomMaskEdit)
      // TCustomMaskEdit
    else if (aObject is TAdvMemo) then
      Result := GetText(aObject as TAdvMemo)
  end;
end;

function CheckLabel(aObject: TControl): boolean;
begin
  Result := Assigned(aObject) and (aObject is TLabel)
end;

procedure SetText(aObject: TControl; Value: string); overload;
begin
  if Assigned(aObject) then
  begin
    if (aObject is TCustomMemo) then
      SetText(aObject as TCustomMemo, Value)
    else if (aObject is TCustomEdit) then
      SetText(aObject as TCustomEdit, Value)
      // TCustomLabel
    else if (aObject is TCustomLabel) then
      SetText(aObject as TCustomLabel, Value)
      // TCustomMaskEdit
    else if (aObject is TCustomMaskEdit) then
      SetText(aObject as TCustomMaskEdit, Value)
      // TAdvMemo
    else if (aObject is TAdvMemo) then
      SetText(aObject as TAdvMemo, Value)
  end;
end;

procedure SetBool(aObject: TControl; Value: boolean); overload;
begin
  if Assigned(aObject) then
  begin
    if (aObject is TCheckBox) then
      SetBool(aObject as TCheckBox, Value)
    else if (aObject is TAdvOfficeCheckBox) then
      SetBool(aObject as TAdvOfficeCheckBox, Value)
  end

end;

function GetBool(aObject: TControl): boolean; overload;
begin
  Result := false;
  if (aObject is TCheckBox) then
    Result := GetBool(aObject as TCheckBox)
  else if (aObject is TAdvOfficeCheckBox) then
    Result := GetBool(aObject as TAdvOfficeCheckBox)
end;

procedure SetBool(aObject: AdvOfficeButtons.TAdvOfficeCheckBox; Value: boolean); overload;
begin
  if Assigned(aObject) then
    aObject.Checked := Value;
end;

function GetBool(aObject: AdvOfficeButtons.TAdvOfficeCheckBox): boolean; overload;
begin
  Result := false;
  if Assigned(aObject) then
    Result := aObject.Checked;
end;

procedure SetText(aObject: TAdvCustomMemo; aText: string);
begin
  if Assigned(aObject) then
    aObject.Lines.Text := aText
end;

function GetText(aObject: TAdvCustomMemo): string;
begin
  if Assigned(aObject) then
    Result := aObject.Lines.Text
  else
    Result := '';
end;

// *********************************************** SetText GetText Procedures Functions ********************************

function CheckTest(aObject: TControl): boolean;
begin
  if Assigned(aObject) then
    Result := (aObject is TAdvMemo) or (aObject is TCustomMemo) or (aObject is TCustomEdit) or
      (aObject is TCustomMaskEdit) or (aObject is TCustomLabel)
  else
    Result := false;
end;

function CheckEdit(aObject: TControl): boolean;
begin
  if Assigned(aObject) then
    Result := (aObject is TAdvMemo) or (aObject is TCustomMemo) or (aObject is TCustomEdit) or
      (aObject is TCustomMaskEdit)
  else
    Result := false;
end;

end.

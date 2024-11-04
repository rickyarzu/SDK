unit Janua.VCL.Functions;


interface

uses
  System.Classes, System.SysUtils, System.WideStrings, System.Types, System.WideStrUtils, Winapi.Windows,
  // VCL
  VCL.Controls, VCL.StdCtrls, VCL.Mask, VCL.Graphics, VCL.Imaging.GIFImg, VCL.Imaging.JPEG,
  VCL.Imaging.PngImage, VCL.Consts, VCL.Forms,
  // JEDI VCL
{$IFNDEF VER330}
  JvToolEdit, JvExControls, JvSpeedButton,
{$ENDIF}
  Data.DB;

procedure DrawField(const Value: String; const Rect: TRect; vCanvas: TCanvas; vFont: TFont;
  vAlignment: TAlignment; FontStyle: TFontStyles; FontColor: TColor; BGColor: TColor);
// funzioni Grafiche Blob
function FindGraphicClass(const Buffer; const BufferSize: Int64; out GraphicClass: TGraphicClass)
  : boolean; overload;
function FindGraphicClass(Stream: TStream; out GraphicClass: TGraphicClass): boolean; overload;
procedure LoadPictureFromBlobField(Field: TBlobField; Dest: TPicture);
procedure SavePictureFromBlobField(Field: TBlobField; Origin: TPicture);

// TControl Standard
procedure SetText(aObject: TControl; Value: string); overload;
function GetText(aObject: TControl): string; overload;

// TCustomEdit
procedure SetText(aObject: TCustomEdit; aText: string); overload;
function GetText(aObject: TCustomEdit): string; overload;
// TCustomMemo
procedure SetText(aObject: TCustomMemo; aText: string); overload;
function GetText(aObject: TCustomMemo): string; overload;
// TCustomLabel
procedure SetText(aObject: TCustomLabel; aText: string); overload;
function GetText(aObject: TCustomLabel): string; overload;
// TCustomMaskEdit
procedure SetText(aObject: VCL.Mask.TCustomMaskEdit; aText: string); overload;
function GetText(aObject: VCL.Mask.TCustomMaskEdit): string; overload;

// ******** funzioni di lettura e scrittura valori testuali da Label e Edit Boxes ***********

function CheckTest(aObject: TControl): boolean;
function CheckLabel(aObject: TControl): boolean;
function CheckEdit(aObject: TControl): boolean;


// ******** funzioni di lettura e scrittura valori Boole da check Box Buttons Boxes ***********

// TControl
procedure SetBool(aObject: TControl; Value: boolean); overload;
function GetBool(aObject: TControl): boolean; overload;
// TCustomCheckBox
procedure SetBool(aObject: VCL.StdCtrls.TCustomCheckBox; Value: boolean); overload;
function GetBool(aObject: VCL.StdCtrls.TCustomCheckBox): boolean; overload;
// TCheckBox
procedure SetBool(aObject: VCL.StdCtrls.TCheckBox; Value: boolean); overload;
function GetBool(aObject: VCL.StdCtrls.TCheckBox): boolean; overload;

// ******************* Date and Time Controls ***********************************************
procedure SetDate(aObject: TControl; Value: TDateTime); overload;
function GetDate(aObject: TControl): TDateTime; overload;
{$IFNDEF VER330}
procedure SetDate(aObject: TJvCustomDateEdit; Value: TDateTime); overload;
function GetDate(aObject: TJvCustomDateEdit): TDateTime; overload;
{$ENDIF}
Function Encode64Bitmap(aBitmap: TBitmap): string;
Procedure Decode64Bitmap(var aBitmap: TBitmap; const S: string);


// ******************** Funzioni Manipolazione Grafica ***********************

type
  TGraphicTypeEnum = (gteBMP, gteJPG, gteTIF, gtePNG);

Function ResizePicture(aPicture: TPicture; maxHeight, maxWidth: integer): TBitmap;
procedure ResizeBitmap(var aBitmap: TBitmap; maxHeight, maxWidth: integer);

procedure SaveGraphicAs(AGraphic: TGraphic; AGraphicType: TGraphicTypeEnum; AFileName: String);
procedure SaveBitmapAs(aBitmap: TBitmap; AGraphicType: TGraphicTypeEnum; AFileName: String);

/// <summary> funzione che salva la schermata dell'applicazione </summary>
function SaveScreen: string;

// ******************* Consts ***********************************************

const
  MinGraphicSize = 44; // we may test up to & including the 11th longword

implementation

uses IdcoderMIME, System.AnsiStrings, VCL.Dialogs, Janua.Application.Framework;

// ********************* Message Procedures for TMS Software Compatibilty *****

(* // procedura disabilitata 2020-07-10
procedure JShowMessage(smessage: string; sExtra: string = ''; sHelp: string = '');
begin
end;
*)

// 2020-07-10 Eliminata InputBox da VCL Functions;
(*
function InputBox(sTitle: string; sCaption: string; sDefault: string): string;
begin
   // Result := JanuainputText(sTitle, sCaption, sDefault);
   Result :=
end;
*)

procedure SetBool(aObject: TControl; Value: boolean); overload;
begin
  if Assigned(aObject) then
  begin
    if (aObject is TCheckBox) then
      SetBool(aObject as TCheckBox, Value)
  end

end;

function GetBool(aObject: TControl): boolean; overload;
begin
  Result := False;
  if (aObject is TCheckBox) then
    Result := GetBool(aObject as TCheckBox)
end;



// *********************************************** SetText GetText Procedures Functions ********************************

function CheckTest(aObject: TControl): boolean;
begin
  if Assigned(aObject) then
    Result := (aObject is TCustomMemo) or (aObject is TCustomEdit) or (aObject is TCustomMaskEdit) or
      (aObject is TCustomLabel)
  else
    Result := False;
end;

function CheckEdit(aObject: TControl): boolean;
begin
  if Assigned(aObject) then
    Result := (aObject is TCustomMemo) or (aObject is TCustomEdit) or (aObject is TCustomMaskEdit)
  else
    Result := False;
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
  end;
end;

/// <summary> funzione che salva la schermata dell'applicazione </summary>
function SaveScreen: string;
var
  DCDesk: HDC; // hDC of Desktop
  bmp: TBitmap;
  Filename: string;
  jpeg1: TJpegImage;
begin
  Filename := FormatDateTime('yyyymmdd', Date);
  { Create a bitmap }
  bmp := TBitmap.Create;
  try

    { Set a bitmap sizes }
    bmp.Height := VCL.Forms.Screen.Height;
    bmp.Width := VCL.Forms.Screen.Width;

    { Get a desktop DC handle - handle of a display device context }
    DCDesk := GetWindowDC(GetDesktopWindow);

    { Copy to any canvas, here canvas of an image }
    BitBlt(bmp.Canvas.Handle, 0, 0, VCL.Forms.Screen.Width, VCL.Forms.Screen.Height, DCDesk, 0, 0, SRCCOPY);

    Filename := Filename + Application.Name + '.jpg';
    { Save the bitmap }

    jpeg1 := TJpegImage.Create;
    try
      jpeg1.Assign(bmp);
      jpeg1.SaveToFile(Filename);

      { Release desktop DC handle }
      ReleaseDC(GetDesktopWindow, DCDesk);

      Result := Filename;
    finally
      jpeg1.Free;
    end;
  finally
    { Release a bitmap }
    bmp.Free;
  end;
end;

procedure SaveBitmapAs(aBitmap: TBitmap; AGraphicType: TGraphicTypeEnum; AFileName: String);
var
  vGraphicClass: TGraphicClass;
  vTargetGraphic: TGraphic;
begin
  vGraphicClass := nil;

  case AGraphicType of
    gteBMP:
      vGraphicClass := TBitmap;
    gteJPG:
      vGraphicClass := TJpegImage;
    gteTIF:
      vGraphicClass := TWICImage;
    gtePNG:
      vGraphicClass := TPngImage;
  else
    vGraphicClass := nil;
  end;

  vTargetGraphic := vGraphicClass.Create;
  try
    vTargetGraphic.Assign(aBitmap);
    vTargetGraphic.SaveToFile(AFileName);
  finally
    vTargetGraphic.Free;
  end;
end;

procedure SaveGraphicAs(AGraphic: TGraphic; AGraphicType: TGraphicTypeEnum; AFileName: String);
var
  vGraphicClass: TGraphicClass;
  vTargetGraphic: TGraphic;
  vBmp: TBitmap;
begin
  vGraphicClass := nil;

  case AGraphicType of
    gteBMP:
      vGraphicClass := TBitmap;
    gteJPG:
      vGraphicClass := TJpegImage;
    gteTIF:
      vGraphicClass := TWICImage;
    gtePNG:
      vGraphicClass := TPngImage;
  else
    vGraphicClass := nil;
  end;
  if AGraphic is vGraphicClass then // As suggested by Rob Kennedy
    AGraphic.SaveToFile(AFileName)
  else
  begin
    vBmp := nil;
    vTargetGraphic := vGraphicClass.Create;
    try
      vBmp := TBitmap.Create;
      vBmp.Assign(AGraphic);
      vTargetGraphic.Assign(vBmp);
      vTargetGraphic.SaveToFile(AFileName);
    finally
      vTargetGraphic.Free;
      vBmp.Free;
    end;
  end;
end;

Function ResizePicture(aPicture: TPicture; maxHeight, maxWidth: integer): TBitmap;
begin
  Result := TBitmap.Create;
  Result.Width := aPicture.Width;
  Result.Height := aPicture.Height;
  Result.Canvas.Draw(0, 0, aPicture.Graphic);
  ResizeBitmap(Result, maxHeight, maxWidth);
end;

procedure ResizeBitmap(var aBitmap: TBitmap; maxHeight, maxWidth: integer);
var
  thumbRect: TRect;
begin
  thumbRect.Left := 0;
  thumbRect.Top := 0;

  if aBitmap.Width > aBitmap.Height then
  begin
    thumbRect.Right := maxWidth;
    thumbRect.Bottom := (maxWidth * aBitmap.Height) div aBitmap.Width;
  end
  else
  begin
    thumbRect.Bottom := maxHeight;
    thumbRect.Right := (maxHeight * aBitmap.Width) div aBitmap.Height;
  end;
  aBitmap.Canvas.StretchDraw(thumbRect, aBitmap);
  // resize image
  aBitmap.Width := thumbRect.Right;
  aBitmap.Height := thumbRect.Bottom;

end;

Function Encode64Bitmap(aBitmap: TBitmap): string;
var
  Strm: TMemoryStream;
begin
  Strm := TMemoryStream.Create;
  try
    aBitmap.SaveToStream(Strm);
    Strm.Position := 0;
    Result := TIdEncoderMIME.EncodeStream(Strm);
  finally
    Strm.Free;
  end;
end;

Procedure Decode64Bitmap(var aBitmap: TBitmap; const S: string);
var
  Strm: TMemoryStream;
begin
  Strm := TMemoryStream.Create;
  try
    TIdDecoderMIME.DecodeStream(S, Strm);
    Strm.Position := 0;
    aBitmap.LoadFromStream(Strm);
  finally
    Strm.Free;
  end;
end;

{ This is the workhorse routine that does the drawing. }
procedure DrawField(const Value: String; const Rect: TRect; vCanvas: TCanvas; vFont: TFont;
  vAlignment: TAlignment; FontStyle: TFontStyles; FontColor: TColor; BGColor: TColor);
var
  I: integer;
begin
  I := 0;

  // First, fill in the background color of the cell
  vCanvas.Brush.Color := BGColor;
  vCanvas.FillRect(Rect);
  // SetBkMode ensures that the background is transparent
  SetBkMode(vCanvas.Handle, TRANSPARENT);

  // Set the passed font properties
  vCanvas.Font := vFont;
  vCanvas.Font.Color := FontColor;
  vCanvas.Font.Style := vCanvas.Font.Style + FontStyle;

  // Set Text Alignment
  case vAlignment of
    taRightJustify:
      begin
        SetTextAlign(vCanvas.Handle, TA_RIGHT);
        I := Rect.Right - 2;
      end;

    taLeftJustify:
      begin
        SetTextAlign(vCanvas.Handle, TA_LEFT);
        I := Rect.Left + 2;
      end;

    taCenter:
      begin
        SetTextAlign(vCanvas.Handle, TA_CENTER);
        I := (Rect.Right + Rect.Left) DIV 2;
      end;
  end; { case }

  // Draw the text
  vCanvas.TextRect(Rect, I, Rect.Top + 2, Value);
  SetTextAlign(vCanvas.Handle, TA_LEFT);
end;

procedure LoadPictureFromBlobField(Field: TBlobField; Dest: TPicture);
var
  aStream: TMemoryStream;
begin
  aStream := TMemoryStream.Create;
  try
    Field.SaveToStream(aStream);
    aStream.Position := 0;
    if aStream.Size = 0 then
      Exit;
    Dest.LoadFromStream(aStream);
  finally
    aStream.Free
  end;
end;

procedure LoadPictureFromBlobFieldOld(Field: TBlobField; Dest: TPicture);
var
  Graphic: TGraphic;
  GraphicClass: TGraphicClass;
  Stream: TMemoryStream;
begin
  Graphic := nil;
  Stream := TMemoryStream.Create;
  try
    Field.SaveToStream(Stream);
    if Stream.Size = 0 then
    begin
      Dest.Assign(nil);
      Exit;
    end;
    if not FindGraphicClass(Stream.Memory^, Stream.Size, GraphicClass) then
      raise EInvalidGraphic.Create(SInvalidImage);
    Graphic := GraphicClass.Create;
    Stream.Position := 0;
    Graphic.LoadFromStream(Stream);
    Dest.Assign(Graphic);
  finally
    Stream.Free;
    Graphic.Free;
  end;
end;

procedure SavePictureFromBlobField(Field: TBlobField; Origin: TPicture);
var
  aStream: TMemoryStream;
begin
  aStream := TMemoryStream.Create;
  try
    Origin.SaveToStream(aStream);
    aStream.Position := 0;
    if aStream.Size = 0 then
    begin
      Field.Clear;
      Exit;
    end;
    Field.LoadFromStream(aStream);
  finally
    aStream.Free
  end;
end;

function FindGraphicClass(const Buffer; const BufferSize: Int64; out GraphicClass: TGraphicClass)
  : boolean; overload;
var
  LongWords: array [Byte] of LongWord absolute Buffer;
  Words: array [Byte] of Word absolute Buffer;
begin
  GraphicClass := nil;
  Result := False;
  if BufferSize < MinGraphicSize then
    Exit;
  case Words[0] of
    $4D42:
      GraphicClass := TBitmap;
    $D8FF:
      GraphicClass := TJpegImage;
    $4949:
      if Words[1] = $002A then
        GraphicClass := TWICImage; // i.e., TIFF
    $4D4D:
      if Words[1] = $2A00 then
        GraphicClass := TWICImage; // i.e., TIFF
  else
    if Int64(Buffer) = $A1A0A0D474E5089 then
      GraphicClass := TPngImage
    else if LongWords[0] = $9AC6CDD7 then
      GraphicClass := TMetafile
    else if (LongWords[0] = 1) and (LongWords[10] = $464D4520) then
      GraphicClass := TMetafile
    else if System.AnsiStrings.StrLComp(PAnsiChar(@Buffer), 'GIF', 3) = 0 then
      GraphicClass := TGIFImage
    else if Words[1] = 1 then
      GraphicClass := TIcon;
  end;
  Result := (GraphicClass <> nil);
end;

function FindGraphicClass(Stream: TStream; out GraphicClass: TGraphicClass): boolean; overload;
var
  Buffer: PByte;
  CurPos: Int64;
  BytesRead: integer;
begin
  if Stream is TCustomMemoryStream then
  begin
    Buffer := TCustomMemoryStream(Stream).Memory;
    CurPos := Stream.Position;
    Inc(Buffer, CurPos);
    Result := FindGraphicClass(Buffer^, Stream.Size - CurPos, GraphicClass);
    Exit;
  end;
  GetMem(Buffer, MinGraphicSize);
  try
    BytesRead := Stream.Read(Buffer^, MinGraphicSize);
    Stream.Seek(-BytesRead, soCurrent);
    Result := FindGraphicClass(Buffer^, BytesRead, GraphicClass);
  finally
    FreeMem(Buffer);
  end;
end;

// ******************* Date and Time Controls ***********************************************

procedure SetDate(aObject: TControl; Value: TDateTime);
begin
  if Assigned(aObject) then
  begin
{$IFNDEF VER330}
    if (aObject is TJvCustomDateEdit) then
      SetDate(aObject as TJvCustomDateEdit, Value)
{$ENDIF}
  end
  // else
  // Result := 0.0;
end;

function GetDate(aObject: TControl): TDateTime;
begin
  Result := 0.0;
  if Assigned(aObject) then
  begin
{$IFNDEF VER330}
    if (aObject is TJvCustomDateEdit) then
      Result := GetDate(aObject as TJvCustomDateEdit)
{$ENDIF}
  end
end;
{$IFNDEF VER330}

procedure SetDate(aObject: TJvCustomDateEdit; Value: TDateTime);
begin
  if Assigned(aObject) then
    aObject.Date := Value
    // else
    // Result := 0.0;
end;

function GetDate(aObject: TJvCustomDateEdit): TDateTime;
begin
  if Assigned(aObject) then
    Result := aObject.Date
  else
    Result := 0.0;
end;
{$ENDIF}
// ******************* Boolean Controls ***********************************************

procedure SetBool(aObject: VCL.StdCtrls.TCustomCheckBox; Value: boolean); overload;
begin
  if Assigned(aObject) then
  begin
    if (aObject is TCheckBox) then
      SetBool(aObject as TCheckBox, Value)
  end;
end;

function GetBool(aObject: VCL.StdCtrls.TCustomCheckBox): boolean; overload;
begin
  Result := False;
  if Assigned(aObject) then
  begin
    if (aObject is TCheckBox) then
      Result := GetBool(aObject as TCheckBox)
  end
end;

procedure SetBool(aObject: VCL.StdCtrls.TCheckBox; Value: boolean); overload;
begin
  if Assigned(aObject) then
    aObject.Checked := Value;
end;

function GetBool(aObject: VCL.StdCtrls.TCheckBox): boolean; overload;
begin
  Result := False;
  if Assigned(aObject) then
    Result := aObject.Checked;
end;

function CheckLabel(aObject: TControl): boolean;
begin
  if Assigned(aObject) then
    Result := (aObject is TCustomLabel)
  else
    Result := False;
end;

{
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
  end;
  end; }

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
  end;
end;

procedure SetText(aObject: TCustomMemo; aText: string); overload;
begin
  if Assigned(aObject) then
    aObject.Lines.Text := aText
end;

function GetText(aObject: TCustomMemo): string; overload;
begin
  if Assigned(aObject) then
    Result := aObject.Lines.Text
  else
    Result := '';
end;

procedure SetText(aObject: TCustomEdit; aText: string);
begin
  if Assigned(aObject) then
    aObject.Text := aText
end;

function GetText(aObject: TCustomEdit): string;
begin
  if Assigned(aObject) then
    Result := aObject.Text
  else
    Result := '';
end;

procedure SetText(aObject: TCustomLabel; aText: string);
begin
  if Assigned(aObject) then
    aObject.Caption := aText
end;

function GetText(aObject: TCustomLabel): string;
begin
  if Assigned(aObject) then
    Result := aObject.Caption
  else
    Result := '';
end;

procedure SetText(aObject: VCL.Mask.TCustomMaskEdit; aText: string);
begin
  if Assigned(aObject) then
    aObject.Text := aText

end;

function GetText(aObject: VCL.Mask.TCustomMaskEdit): string;
begin
  if Assigned(aObject) then
    Result := aObject.Text
  else
    Result := '';
end;

end.


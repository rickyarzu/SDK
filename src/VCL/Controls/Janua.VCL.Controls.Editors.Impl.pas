unit Janua.VCL.Controls.Editors.Impl;

interface

uses
  System.Classes, AdvRichEditor, Janua.Controls.Editors.Intf, Janua.Controls.Editors.Impl;

Type
  TJanuaAdvRTFEditor = Class(TJanuaCustomRTFEditor, IJanuaRTFEditor)
  private
    FEditor: TAdvRichEditor;
  public
    Constructor Create(aEditor: TAdvRichEditor); overload;
    procedure Clear;
    procedure UpdateEditor;
    function AsHtml(aUseSelection: boolean; aImgPath: string = ''; aPlainHtml: boolean = False): string;
    procedure SaveToStream(aStream: TStream);
    procedure LoadFromStream(aStream: TStream);
    function AsHtmlEmbedImages: string;
  end;

  // ------------------------------------------------------------------------------
  // Used to access the protected methods of TAdvRichEditor.
  // ------------------------------------------------------------------------------
type
  TAdvRichEditorProtectedAccess = class(TAdvRichEditor);
  // ------------------------------------------------------------------------------

implementation

uses
  Spring, Janua.VCL.Functions, System.SysUtils,
  AdvRichEditorMiniHTMLIO, AdvRichEditorIO // Needed for specific HTML output
    ;

{ TJanuaAdvRTFEditor }

function TJanuaAdvRTFEditor.AsHtml(aUseSelection: boolean; aImgPath: string; aPlainHtml: boolean): string;
begin
  Result :=  AsHtmlEmbedImages;
  // Janua.VCL.Functions.AdvRichEditorAsHtml(FEditor, aUseSelection, aImgPath, aPlainHtml);
end;

function TJanuaAdvRTFEditor.AsHtmlEmbedImages: string;
var
  AdvRichEditorMiniHTMLIO: TAdvRichEditorHTMLIO;
  rtfContentsAsHtml: string;
  posStart: integer;
  sStrings: TStringList;
  aStream: TMemoryStream;
begin
  // Create a advRichEditorMiniHTMLIO to get the RTF contents as HTML
  AdvRichEditorMiniHTMLIO := TAdvRichEditorHTMLIO.Create(nil);
  AdvRichEditorMiniHTMLIO.RichEditor := self.FEditor;
  //AdvRichEditorMiniHTMLIO.PlainHTML := true;
  AdvRichEditorMiniHTMLIO.InlineImages := true;
  // Get the RTF's HTML text
  sStrings:= TStringList.Create;
  aStream:= TMemoryStream.Create;

  AdvRichEditorMiniHTMLIO.Save(aStream);
  aStream.Position := 0;
  sStrings.LoadFromStream(aStream);
  aStream.Free;

  rtfContentsAsHtml := sStrings.Text;

  sStrings.Free;

  // Replace '&nbsp;' with spaces.
  posStart := pos('&nbsp;', rtfContentsAsHtml);
  while (posStart > 0) do
  begin
    delete(rtfContentsAsHtml, posStart, length('&nbsp;'));
    insert(#32, rtfContentsAsHtml, posStart);
    posStart := pos('&nbsp;', rtfContentsAsHtml);
  end;

  posStart := pos('HTML', rtfContentsAsHtml);
  while (posStart > 0) do
  begin
    delete(rtfContentsAsHtml, posStart, length('HTML'));
    insert('DIV', rtfContentsAsHtml, posStart);
    posStart := pos('HTML', rtfContentsAsHtml);
  end;

  posStart := pos('BODY', rtfContentsAsHtml);
  while (posStart > 0) do
  begin
    delete(rtfContentsAsHtml, posStart, length('BODY'));
    insert('DIV', rtfContentsAsHtml, posStart);
    posStart := pos('BODY', rtfContentsAsHtml);
  end;

  // Add rtfContentsAsHtml to htmlOutText, adding a <DIV> tag around the
  // rtfContentsAsHtml with the background color, default font, and font size.
  // backgroundRGBColor := ColorToRGB(AdvOfficeBkColorSelector.SelectedColor);
  Result := '<DIV style="font-family: ' + GetRTFDefaultFontName + '; font-size:' +
    IntToStr(GetRTFDefaultFontSize) + 'pt;">' + rtfContentsAsHtml + '</DIV>';

end;

procedure TJanuaAdvRTFEditor.Clear;
begin
  FEditor.Clear
end;

constructor TJanuaAdvRTFEditor.Create(aEditor: TAdvRichEditor);
begin
  self.Create;
  Guard.CheckNotNull(aEditor, 'TJanuaAdvRTFEditor.Create aEditor is nil');
  FEditor := aEditor
end;

procedure TJanuaAdvRTFEditor.LoadFromStream(aStream: TStream);
begin
  self.FEditor.LoadFromStream(aStream);
end;

procedure TJanuaAdvRTFEditor.SaveToStream(aStream: TStream);
begin
  self.FEditor.SaveToStream(aStream);
end;

procedure TJanuaAdvRTFEditor.UpdateEditor;
begin
  FEditor.UnSelect();
  FEditor.SelStart := -1;
  FEditor.SelLength := 0;
  // Set the caret to the first text char (if any - with no selction)
  FEditor.SelectText(0, 0);
  // Update AdvRichEditor and the toolbar
  TAdvRichEditorProtectedAccess(FEditor).DoSelectionChanged();
end;

end.

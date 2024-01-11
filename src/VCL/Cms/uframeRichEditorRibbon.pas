unit uframeRichEditorRibbon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.Actions,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  // Janua
  Janua.Controls.Editors.Intf,
  // Adv
  // ----------------------------------------------------------------------------
  AdvToolBar,
  AdvToolBarExt,
  AdvRichEditorToolBar,
  AdvRichEditorBase,
  AdvRichEditor,
  AdvScrollControl,
  AdvOfficeSelectors,
  AdvGlowButton, AdvRichEditorIO, AdvMemo, AdvmWS, AdvOfficePager, AdvOfficePagerStylers, Vcl.OleCtrls, SHDocVw,
  Vcl.StdCtrls, AdvOfficeComboBox, AdvToolBarStylers, AdvAppStyler, AdvStyleIF;
// ------------------------------------------------------------------------------
// Actions
{
  PlatformDefaultStyleActnCtrls, ActnMan,  DBAdvRichEditor, AdvOfficePager, AdvOfficePagerStylers,
  AdvMemo, AdvmWS, AdvRichEditorIO, Vcl.OleCtrls, SHDocVw;
}

type
  TframeRichEditorRibbon = class(TFrame)
    AdvFormStyler1: TAdvFormStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBarPager1: TAdvToolBarPager;
    AdvToolBarPager11: TAdvPage;
    AdvRichEditorClipboardRibbonToolBar1: TAdvRichEditorClipboardRibbonToolBar;
    AdvRichEditorFontRibbonToolBar1: TAdvRichEditorFontRibbonToolBar;
    AdvRichEditorParagraphRibbonToolBar1: TAdvRichEditorParagraphRibbonToolBar;
    AdvRichEditorEditingRibbonToolBar1: TAdvRichEditorEditingRibbonToolBar;
    AdvGlowButton1: TAdvGlowButton;
    AdvOfficePagerRibbon: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvRichEditor1: TAdvRichEditor;
    AdvOfficePage1: TAdvOfficePage;
    AdvMemo1: TAdvMemo;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    AdvRichEditorHTMLIO1: TAdvRichEditorHTMLIO;
    WebBrowser1: TWebBrowser;
    AdvGlowButton4: TAdvGlowButton;
    OpenDialog1: TOpenDialog;
    AdvToolBar2: TAdvToolBar;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvToolBar1: TAdvToolBar;
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvOfficePager11Show(Sender: TObject);
    procedure AdvOfficePager12Show(Sender: TObject);
    procedure AdvOfficePage1Show(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
  protected
    TMSFontListComboBox: TAdvOfficeFontSelector;
    TMSFontSizeComboBox: TAdvOfficeFontSizeSelector;
    function FindRTFEditContols(): boolean;
    procedure TrapRTFEditContols();
  private
    FRTFEditor: IJanuaRTFEditor;
    function GetRTFEditor: IJanuaRTFEditor;
    procedure SetRTFEditor(const Value: IJanuaRTFEditor);
    procedure CheckAssigned;
    { Private declarations }
  public
    { Public declarations }
    procedure Clear;
    procedure LoadHtml(aHtml: string);
    procedure SetupHtmlEnvironment; // Create Method
    procedure ShowHtmlEnvironment;
    // Updates Editor Environment after uploading/changin text inside.
    procedure UpdateEditor;
    function AsHtml(aUseSelection: boolean; aImgPath: string = ''; aPlainHtml: boolean = False): string;
    property RTFEditor: IJanuaRTFEditor read GetRTFEditor write SetRTFEditor;
  end;

implementation

uses
  ExtDlgs, Janua.Vcl.WebBrowser, Janua.Vcl.Functions, Janua.Vcl.Controls.Editors.Impl;

{$R *.dfm}

procedure TframeRichEditorRibbon.AdvGlowButton1Click(Sender: TObject);
var
  rb: TAdvClipboardRibbonToolBar;
begin
  rb := TAdvClipboardRibbonToolBar.Create(Self);
  rb.Parent := AdvToolBarPager11;

end;

procedure TframeRichEditorRibbon.AdvGlowButton2Click(Sender: TObject);
var
  pd: TOpenPictureDialog;
begin
  if Assigned(AdvRichEditor1) then
  begin
    pd := TOpenPictureDialog.Create(Self);
    try
      if pd.Execute then
      begin
        AdvRichEditor1.InsertImage(pd.FileName);
        AdvRichEditor1.SetFocus;
      end;
    finally
      pd.Free;
    end;
  end;

end;

procedure TframeRichEditorRibbon.AdvGlowButton3Click(Sender: TObject);
var
  url: string;
begin
  url := '';
  InputQuery('Hyperlink', 'URL', url);
  AdvRichEditor1.SetSelectionHyperlink(url);
end;

procedure TframeRichEditorRibbon.AdvGlowButton4Click(Sender: TObject);
begin
  if Self.OpenDialog1.Execute then
    Self.AdvRichEditor1.LoadFromFile(Self.OpenDialog1.FileName);
end;

procedure TframeRichEditorRibbon.AdvOfficePage1Show(Sender: TObject);
var
  aWrapper: Janua.Vcl.WebBrowser.TWebBrowserWrapper;
begin
  aWrapper := Janua.Vcl.WebBrowser.TWebBrowserWrapper.Create(Self.WebBrowser1);
  try
      aWrapper.LoadFromString(Self.AsHtml(False));
  finally
    aWrapper.Free
  end;
end;

procedure TframeRichEditorRibbon.AdvOfficePager11Show(Sender: TObject);
begin
  if Self.AdvMemo1.Lines.Text <> '' then
  begin
    Self.LoadHtml(AdvMemo1.Lines.Text);
    AdvMemo1.Lines.Clear
  end;
end;

procedure TframeRichEditorRibbon.AdvOfficePager12Show(Sender: TObject);
begin
  Self.AdvMemo1.Lines.Text := Self.AsHtml(False, '', True)
end;

function TframeRichEditorRibbon.AsHtml(aUseSelection: boolean; aImgPath: string = '';
  aPlainHtml: boolean = False): string;
begin
  Result := RTFEditor.AsHtmlEmbedImages;
  // AdvRichEditorAsHtml(Self.AdvRichEditor1, aUseSelection, aImgPath, aPlainHtml);
   // TAdvRichEditorExport(Self.AdvRichEditor1).GetContentAsHTML(aUseSelection, aImgPath, aPlainHtml);
end;

procedure TframeRichEditorRibbon.CheckAssigned;
begin
  if not Assigned(FRTFEditor) then
    FRTFEditor := TJanuaAdvRTFEditor.Create(AdvRichEditor1);
end;

procedure TframeRichEditorRibbon.Clear;
begin
  AdvRichEditor1.Clear
end;

function TframeRichEditorRibbon.FindRTFEditContols: boolean;
// ------------------------------------------------------------------------------
var
  idx: integer;
  aControl: TControl;
begin
  // Get a reference to the font ComboBoxes in AdvRichEditorEditToolBar
  for idx := 0 to (AdvRichEditorFontRibbonToolBar1.ControlCount - 1) do
  begin
    if ((Assigned(TMSFontListComboBox)) and (Assigned(TMSFontSizeComboBox))) then
    begin
      break;
    end;
    aControl := AdvRichEditorFontRibbonToolBar1.Controls[idx];
    if (aControl is TAdvOfficeFontSelector) then
    begin
      TMSFontListComboBox := TAdvOfficeFontSelector(aControl);
      continue;
    end;
    if (aControl is TAdvOfficeFontSizeSelector) then
    begin
      TMSFontSizeComboBox := TAdvOfficeFontSizeSelector(aControl);
      continue;
    end;
  end;
  // Make sure all references are valid
  if (not((Assigned(TMSFontListComboBox)) and (Assigned(TMSFontSizeComboBox)))) then
  begin
    FindRTFEditContols := False;
    exit;
  end;
  FindRTFEditContols := True;
end;

function TframeRichEditorRibbon.GetRTFEditor: IJanuaRTFEditor;
begin
  CheckAssigned;
  Result := FRTFEditor
end;

// ------------------------------------------------------------------------------

procedure TframeRichEditorRibbon.LoadHtml(aHtml: string);
begin
  // AdvRichEditorHTMLIO1.LoadHtml(aHtml);
  // Funzione disattivata in quanto il Memo RTF ricarica male l'html
end;

procedure TframeRichEditorRibbon.SetRTFEditor(const Value: IJanuaRTFEditor);
begin
  CheckAssigned;
  FRTFEditor := Value;
end;

procedure TframeRichEditorRibbon.SetupHtmlEnvironment;
begin
  // Set the default font and size for AdvRichEditor.
  RTFEditor.RTFDefaultFontName := 'Arial';
  RTFEditor.RTFDefaultFontSize := 12;
  AdvRichEditor1.Font.Name := RTFEditor.RTFDefaultFontName;
  AdvRichEditor1.Font.Size := RTFEditor.RTFDefaultFontSize;
  // Find the RTFEditContols
  if (not(FindRTFEditContols())) then
  begin
    ShowMessage('RTFEditContols not found - terminating');
    Application.Terminate();
  end;
  // Trap the RTFEditContols
  TrapRTFEditContols();
  // Open the RTF file (if it exists)
  // NewTMSOpenFileButtonOnClick(self);
end;

procedure TframeRichEditorRibbon.ShowHtmlEnvironment;
begin
  AdvRichEditor1.SetFocus();
  AdvRichEditor1.SelectText(0, 0);
end;

procedure TframeRichEditorRibbon.TrapRTFEditContols;
var
  idx: integer;
  fontName: string;
begin
  // Safely remove all non web compatible fonts from the FontListComboBox
  for idx := (TMSFontListComboBox.Items.Count - 1) downto 0 do
  begin
    fontName := TMSFontListComboBox.Items[idx].ToLower.Trim;
    if ((fontName <> 'arial') and (fontName <> 'courier new') and (fontName <> 'times new roman') and
         (fontName <> 'helvetica') and (fontName <> 'palatino') and (fontName <> 'times')  and
         (fontName <> 'georgia') and (fontName <> 'courier') and (fontName <> 'verdana')  and
         (fontName <> 'garamond') and (fontName <> 'Trebuchet MS') and (fontName <> 'comic sans ms')  and
         (fontName <> 'arial black') and (fontName <> 'impact') and (fontName <> 'bookman') and
      (not(Assigned(TMSFontListComboBox.Items.Objects[idx])))) then
    begin
      TMSFontListComboBox.Items.Delete(idx);
    end;
  end;

end;

procedure TframeRichEditorRibbon.UpdateEditor;
begin

end;

end.

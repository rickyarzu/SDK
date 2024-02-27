unit Janua.VCL.frameHtmlEditor;

{$I htmlinc.inc}
{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, StrUtils, Types, Controls, Forms, Dialogs, Math,
  Data.DB, ComCtrls, ToolWin, StdCtrls, ExtCtrls, ImgList, Clipbrd, Menus, Themes, StdActns, ActnList,
  UITypes,
{$IFDEF HRL}HtPreviewFrame, {$ENDIF}
  htmlcss, htmldraw, httables, htutils, htmledit, htmlcomp, htmlgraph, htinet,
  htmlpars, htsyntax, htcanvasgdip, htcanvas, htcanvasgdi,
{$IFDEF ADDICT}
  htAddict, ad3ThesaurusBase, ad3Thesaurus, ad3SpellBase, ad4Live,
{$ENDIF}
  hteditactions, htrtf, htclasses, htmlani, htsvg, htDefScriptAdapter, htxml, hthints,{ htimage,}
  htfontawesome, Actions, System.ImageList, VCL.Buttons;

type
  TframeHTMLEditor = class(TFrame)
    ToolBar1: TToolBar;
    BoldBtn: TToolButton;
    ItalicBtn: TToolButton;
    UnderlineBtn: TToolButton;
    ImageList1: TImageList;
    StrikeBtn: TToolButton;
    PasteImageBtn: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    PasteBtn: TToolButton;
    AlignLeftBtn: TToolButton;
    AlignCenterBtn: TToolButton;
    AlignRightBtn: TToolButton;
    OpenBtn: TToolButton;
    ToolButton5: TToolButton;
    HeaderMenu: TPopupMenu;
    Header1Item: TMenuItem;
    NormalItem: TMenuItem;
    Header2Item: TMenuItem;
    Header3Item: TMenuItem;
    Header4Item: TMenuItem;
    Header5Item: TMenuItem;
    ToolButton6: TToolButton;
    LinkBtn: TToolButton;
    ListULBtn: TToolButton;
    ListOLBtn: TToolButton;
    CopyBtn: TToolButton;
    ToolButton7: TToolButton;
    SubScriptBtn: TToolButton;
    SuperScriptBtn: TToolButton;
    ToolBar2: TToolBar;
    HeaderBtn: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    IncreaseIdentBtn: TToolButton;
    DecreaseIdentBtn: TToolButton;
    E: THtmlEditor;
    ImageMenu: TPopupMenu;
    AlignImageLeft: TMenuItem;
    AlignImageRight: TMenuItem;
    AlignImageInline: TMenuItem;
    PrintPreviewBtn: TToolButton;
    SaveAsBtn: TToolButton;
    AddImage: TToolButton;
    pnlFooter: TPanel;
    TrackBar1: TTrackBar;
    NewBtn: TToolButton;
    TagMenu: TPopupMenu;
    dl1: TMenuItem;
    NewTagBtn: TToolButton;
    BLOCKQUOTECITE1: TMenuItem;
    ActionList1: TActionList;
    HR1: TMenuItem;
    HtActionFontBold1: THtActionFontBold;
    HtActionFontItalic1: THtActionFontItalic;
    HtActionFontUnderline1: THtActionFontUnderline;
    HtActionFontStrikeout1: THtActionFontStrikeout;
    HtActionSubscript1: THtActionSubscript;
    HtActionSuperscript1: THtActionSuperscript;
    HtActionAlignLeft1: THtActionAlignLeft;
    HtActionAlignRight1: THtActionAlignRight;
    HtActionAlignCenter1: THtActionAlignCenter;
    HtActionUnorderedList1: THtActionUnorderedList;
    HtActionOrderedList1: THtActionOrderedList;
    HtActionIncreaseIndent1: THtActionIncreaseIndent;
    HtActionDecreaseIndent1: THtActionDecreaseIndent;
    HtActionCopy1: THtActionCopy;
    HtActionPaste1: THtActionPaste;
    HtFileSaveAs1: THtFileSaveAs;
    HtActionPasteImage1: THtActionPasteImage;
    HtActionAddUrl1: THtActionAddUrl;
    HtActionSetHeader1: THtActionSetHeader;
    FontCombo: THtFontCombo;
    HtActionNew1: THtActionNew;
    HtFontSizeCombo1: THtFontSizeCombo;
    HtTagNavigator1: THtTagNavigator;
    PRE1: TMenuItem;
    SyntaxMenu: TPopupMenu;
    Markdown1: TMenuItem;
    Pascal1: TMenuItem;
    HighlightBtn: TToolButton;
    ToolButton4: TToolButton;
    HtActionUndo1: THtActionUndo;
    HtActionMarkdownHighlight1: THtActionMarkdownHighlight;
    HtActionPascalHighlight1: THtActionPascalHighlight;
    HtActionHTMLHighlight1: THtActionHTMLHighlight;
    HTML1: TMenuItem;
    LoadSampleBtn: TToolButton;
    ToolButton10: TToolButton;
    HtTextColorCombo1: THtTextColorCombo;
    HtBgColorCombo1: THtBgColorCombo;
    HtTableAddRow1: THtTableAddRow;
    HtTableDeleteRow1: THtTableDeleteRow;
    HtTableInsertCol1: THtTableInsertCol;
    HtTableDeleteCol1: THtTableDeleteCol;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    HtFileOpen1: THtFileOpen;
    ImageDeleteItem: TMenuItem;
    N1: TMenuItem;
    HtAddTableCombo1: THtAddTableCombo;
    Pagebreak1: TMenuItem;
    Portrait1: TMenuItem;
    Landscape1: TMenuItem;
    Default1: TMenuItem;
    ToolButton1: TToolButton;
    HtActionAddChar1: THtActionAddChar;
    Splitter1: TSplitter;
    TreeViewBtn: TToolButton;
    LeftPages: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TreePanel: THtPanel;
    Panel2: TPanel;
    SearchEdit: TEdit;
    SearchTimer: TTimer;
    SearchPanel: THtPanel;
    CanvasCombo: TComboBox;
    HtBorderCombo1: THtBorderCombo;
    HtActionCut1: THtActionCut;
    ToolButton16: TToolButton;
    TemplateItem: TMenuItem;
    TemplateCombo: TComboBox;
    HtTableBorderCombo1: THtTableBorderCombo;
    ListStyleCombo: TComboBox;
    HtFileSave1: THtFileSave;
    ToolButton17: TToolButton;
    ToolSeachEdit: TButtonedEdit;
    HtActionAlignFull1: THtActionAlignFull;
    HtTableIncColspan1: THtTableIncColspan;
    HtTableDecColspan1: THtTableDecColspan;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    SyntaxCheckBtn: TToolButton;
    RedoBtn: TToolButton;
    HtActionRedo1: THtActionRedo;
    MergeCellsBtn: TToolButton;
    FindBtn: TToolButton;
    ToolButton21: TToolButton;
    tabTag: TTabSheet;
    pnlLists: TPanel;
    spl2: TSplitter;
    lst1: TListBox;
    lst2: TListBox;
    edLabelTag: TEdit;
    procedure EMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AlignImageLeftClick(Sender: TObject);
    procedure AlignImageRightClick(Sender: TObject);
    procedure AlignImageInlineClick(Sender: TObject);
    procedure PrintPreviewBtnClick(Sender: TObject);
    procedure AddImageClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure dl1Click(Sender: TObject);
{$IFDEF ADDICT}
    procedure AddictSpell1PopupResult(Sender: TObject; Word: string; var ResultWord: string;
      var PopupResult: TSpellPopupOption);
{$ENDIF}
    procedure OnCaretMoved(Sender: TObject);
    procedure LoadSampleBtnClick(Sender: TObject);
    procedure ImageDeleteItemClick(Sender: TObject);
    procedure TreeViewBtnClick(Sender: TObject);
    procedure TreePanelElementClick(Sender: TElement);
    procedure EAfterLoad(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure SearchTimerTimer(Sender: TObject);
    procedure SearchPanelUrlClick(Sender: TElement);
    procedure CanvasComboChange(Sender: TObject);
    procedure ImageMenuPopup(Sender: TObject);
    procedure TemplateComboChange(Sender: TObject);
    procedure ListStyleComboChange(Sender: TObject);
    procedure ToolSeachEditChange(Sender: TObject);
    procedure SyntaxCheckBtnClick(Sender: TObject);
    procedure RedoBtnClick(Sender: TObject);
    procedure MergeCellsBtnClick(Sender: TObject);
    procedure FindBtnClick(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure lst2Click(Sender: TObject);
    procedure lst1Click(Sender: TObject);
  private
    ImageElement: TElement;
    FOnSaveButton: TNotifyEvent;
    FDetailDataset: TDataset;
    FMasterDataset: TDataset;
    function GetHtml: string;
    procedure SetHtml(const Value: string);
    procedure SetOnSaveButton(const Value: TNotifyEvent);
    procedure SetDetailDataset(const Value: TDataset);
    procedure SetMasterDataset(const Value: TDataset);
{$IFDEF ADDICT}
    SpellElement: TTextElement;
    SpellChar: Integer;
{$ENDIF}
  public
    procedure Setup(const aPagesVisible: boolean = False);
  public
    procedure AfterConstruction; override;
    property Html: string read GetHtml write SetHtml;
    property OnSaveButton: TNotifyEvent read FOnSaveButton write SetOnSaveButton;
    property MasterDataset: TDataset read FMasterDataset write SetMasterDataset;
    property DetailDataset: TDataset read FDetailDataset write SetDetailDataset;
  public
    selempty: boolean;
{$IFDEF ADDICT}
    AddictSpell1: TAddictSpell;
{$ENDIF}
  end;

implementation

uses Janua.VCL.dlgHtmlEditorAddImage, udmSVGImageList;

{$R *.dfm}

procedure TframeHTMLEditor.ImageDeleteItemClick(Sender: TObject);
begin
  if MessageDlg('Delete image?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    E.DeleteElement(ImageElement, true);
end;

procedure TframeHTMLEditor.ImageMenuPopup(Sender: TObject);
begin
  E.Templates.CreateMenu(TemplateItem);
end;

procedure TframeHTMLEditor.LoadSampleBtnClick(Sender: TObject);
begin
  E.DocChanged(E.Doc);
  E.LoadFromFile(ExtractFilePath(Paramstr(0)) + 'css3selectors.htm');
end;

procedure TframeHTMLEditor.lst1Click(Sender: TObject);
begin
  Clipboard.AsText := lst1.Items[lst1.ItemIndex];
  edLabelTag.Text := lst1.Items[lst1.ItemIndex];
end;

procedure TframeHTMLEditor.lst2Click(Sender: TObject);
begin
  Clipboard.AsText := lst2.Items[lst2.ItemIndex];
  edLabelTag.Text := lst2.Items[lst2.ItemIndex];
end;

procedure TframeHTMLEditor.MergeCellsBtnClick(Sender: TObject);
begin
  E.MergeSelectedCells
end;

procedure TframeHTMLEditor.OnCaretMoved(Sender: TObject);
var
  EP: TElement;
  V: boolean;
begin
  if E.Current <> nil then
  begin
    EP := TElement(E.Current.NearestBlockParent);
    if Assigned(EP) then
    begin
      if EP.Tag = 'h1' then
        HeaderBtn.Caption := 'Header 1'
      else if EP.Tag = 'h2' then
        HeaderBtn.Caption := 'Header 2'
      else if EP.Tag = 'h3' then
        HeaderBtn.Caption := 'Header 3'
      else if EP.Tag = 'h4' then
        HeaderBtn.Caption := 'Header 4'
      else if EP.Tag = 'h5' then
        HeaderBtn.Caption := 'Header 5'
      else
        HeaderBtn.Caption := 'Normal';
    end;
    V := E.Current.UpTo('ol') <> nil;
    if V <> ListStyleCombo.Enabled then
    begin
      ListStyleCombo.Enabled := V;
    end;

  end;
end;

procedure TframeHTMLEditor.TreeViewBtnClick(Sender: TObject);
begin
  LeftPages.Visible := not LeftPages.Visible;
  if LeftPages.Visible then
  begin
    TreePanel.Html.Text := E.CreateTableofContents;
    SearchPanel.Html.Clear;
  end;
end;

procedure TframeHTMLEditor.TemplateComboChange(Sender: TObject);
begin
  E.TemplateMode := THtTemplateMode(TemplateCombo.ItemIndex);
  E.Refresh;
end;

procedure TframeHTMLEditor.FindBtnClick(Sender: TObject);
begin
  E.FindDialog;
end;

function TframeHTMLEditor.GetHtml: string;
begin
  Result := E.Html.Text;
end;

procedure TframeHTMLEditor.ToolButton21Click(Sender: TObject);
begin
  if Assigned(FOnSaveButton) then
  begin
    FOnSaveButton(self);
    ShowMessage('Modifiche Registrate');
  end
  else
    ShowMessage('Procedura non Registrata');
end;

procedure TframeHTMLEditor.ToolSeachEditChange(Sender: TObject);
begin
  if Assigned(E.Doc) then
    E.Doc.HighlightText := AnsiLowerCase(ToolSeachEdit.Text);
  E.Paint;
end;

procedure TframeHTMLEditor.TrackBar1Change(Sender: TObject);
begin
  E.Scale := TrackBar1.Position;
end;

procedure TframeHTMLEditor.TreePanelElementClick(Sender: TElement);
var
  s: string;
  EX: TElement;
begin
  s := Sender['content'];
  if s <> '' then
  begin
    EX := E.Doc;
    while Assigned(EX) do
    begin
      if (EX.Tag = Sender.Tag) and (EX.InnerText = s) then
      begin
        E.ScrollIntoTop(EX);
        exit
      end;
      EX := EX.NextElement;
    end;
  end;
end;

procedure TframeHTMLEditor.PrintPreviewBtnClick(Sender: TObject);
begin
{$IFDEF HRL}
  ShowHtPrintPreview(E.Doc, E.Styles.Text);
{$ENDIF}
end;

procedure TframeHTMLEditor.RedoBtnClick(Sender: TObject);
begin
  E.Redo;
end;

procedure TframeHTMLEditor.SearchEditChange(Sender: TObject);
begin
  if length(SearchEdit.Text) > 1 then
  begin
    SearchTimer.Enabled := False;
    SearchTimer.Enabled := true;
  end;
end;

procedure TframeHTMLEditor.SearchPanelUrlClick(Sender: TElement);
var
  EX: TElement;
  n, k: Integer;
begin
  if not TrystrtoInt(Sender['pos'], n) then
    exit;
  if not TrystrtoInt(Sender['charpos'], k) then
    k := 1;
  EX := E.GetElementbyAbsolutePosition(n, true);
  if Assigned(EX) then
  begin
    E.Doc.Selection.StartElement := EX;
    E.Doc.Selection.EndElement := EX;
    E.Doc.Selection.StartPos := k;
    E.Doc.Selection.EndPos := k + length(SearchEdit.Text);
    E.ScrollSelectionIntoView;
    E.Repaint;
  end;
end;

procedure TframeHTMLEditor.SearchTimerTimer(Sender: TObject);
begin
  SearchTimer.Enabled := False;
  SearchPanel.Html.Text := E.CreateSearchResult(SearchEdit.Text);
  SearchPanel.Doc.Recalc;
  SearchPanel.Repaint;
end;

procedure TframeHTMLEditor.SetDetailDataset(const Value: TDataset);
var
  aField: TField;
begin
  FDetailDataset := Value;
  if Assigned(FDetailDataset) then
    for aField in FDetailDataset.Fields do
      lst2.Items.Add('$$' + aField.FieldName + '$$');
end;

procedure TframeHTMLEditor.SetHtml(const Value: string);
begin
  E.LoadFromString(Value);
end;

procedure TframeHTMLEditor.SetMasterDataset(const Value: TDataset);
var
  aField: TField;
begin
  FMasterDataset := Value;
  if Assigned(FMasterDataset) then
    for aField in FMasterDataset.Fields do
      lst1.Items.Add('$$' + aField.FieldName + '$$');
end;

procedure TframeHTMLEditor.SetOnSaveButton(const Value: TNotifyEvent);
begin
  FOnSaveButton := Value;
end;

procedure TframeHTMLEditor.Setup(const aPagesVisible: boolean);
begin
  LeftPages.Visible := aPagesVisible;
  TreePanel.Html.Text := E.CreateTableofContents;
  SearchPanel.Html.Clear;
end;

procedure TframeHTMLEditor.SyntaxCheckBtnClick(Sender: TObject);
begin
{$IFDEF ADDICT}
  HtAddictCheckEditor(E, TCheckType.ctAll, AddictSpell1);
{$ENDIF}
end;

procedure TframeHTMLEditor.dl1Click(Sender: TObject);
begin
  E.AddHTMLAtCursor(TMenuItem(Sender).Hint);
end;

{$IFDEF ADDICT}

procedure TForm1.AddictSpell1PopupResult(Sender: TObject; Word: string; var ResultWord: string;
  var PopupResult: TSpellPopupOption);
begin
  case PopupResult of
    spReplace:
      begin
        SpellElement.ReplaceWordAt(SpellChar, ResultWord);
        E.Doc.Recalc;
        E.Repaint;
      end;
    spDialog:
      begin
        E.CarettoElement(SpellElement, SpellChar);
        E.SelectWordAtCursor;
        HtAddictCheckEditor(E, ctSelected, AddictSpell1);
      end;
    spAdd:
      begin
        SpellElement.IgnoreWordAt(SpellChar);
        E.Doc.Recalc;
        E.Repaint;
      end;
    spIgnore:
      begin
        SpellElement.IgnoreWordAt(SpellChar);
        E.Doc.Recalc;
        E.Repaint;
      end;
  end;
end;
{$ENDIF}

procedure TframeHTMLEditor.AddImageClick(Sender: TObject);
var
  AF: TdlgVCLHtmlEditorAddImage;
  URL, align: string;
  P: TElement;
  i: Integer;
  BS: TBytesStream;
begin
  if E.Current = nil then
    exit;
  AF := TdlgVCLHtmlEditorAddImage.Create(self);
  try
    P := TElement(E.Current.NearestBlockParent);
    while Assigned(P) and (P.Tag <> 'html') do
    begin
      AF.ElementCombo.Items.Add(P.Tag);
      P := P.Parent;
    end;
    AF.ElementCombo.ItemIndex := 0;
    if AF.ShowModal = mrOk then
    begin
      if AF.FileNameEdit.Text <> '' then
      begin
        if AF.EmbedBox.Checked then
        begin
          URL := AF.FileNameEdit.Text;
          BS := TBytesStream.Create;
          try
            BS.LoadFromFile(URL);
            E.AddImageAtCursor(BS.Bytes);
          finally
            BS.Free
          end;
          exit;
        end
        else
        begin
          URL := ReplaceStr(AF.FileNameEdit.Text, '\', '/');
          if not AnsiStartsWith(AnsiLowerCase(URL), 'file://') then
            URL := 'file://' + URL;
        end;
      end
      else
      begin
        URL := AF.URLEdit.Text;
        if not AnsiStartsWith(AnsiLowerCase(URL), 'http://') and not AnsiStartsWith(AnsiLowerCase(URL),
          'https://') then
          URL := 'http://' + URL;
      end;
      if AF.AlignLeft.Checked then
        align := 'left'
      else if AF.AlignRight.Checked then
        align := 'right';
    end;
    if AF.AlignBackground.Checked then
    begin
      P := TElement(E.Current.NearestBlockParent);
      for i := 0 to AF.ElementCombo.ItemIndex - 1 do
        P := P.Parent;

      P.AddCSS('background-image: url(''' + URL + ''');', true);

      E.Refresh;
    end
    else
      E.AddImageAtCursor(URL, AF.WidthEdit.Value, AF.HeightEdit.Value, align);
  finally
    AF.Free;
  end;
end;

procedure TframeHTMLEditor.AfterConstruction;
begin
  inherited;
  { workaround for bug in toolbar }
  Width := Width - 1;
{$IFDEF ADDICT}
  AddictSpell1 := TAddictSpell.Create(self);
  AddictSpell1.OnPopupResult := AddictSpell1PopupResult;
  E.AddictSpell := AddictSpell1;
{$ENDIF}
  E.PreserveStyleOnNewBlock := true;
  E.Templates.RegisterVariable(THtXMLNode.Create('<CUSTOMER caption="Customer Name" sample="Embarcadero"/>'));
  E.Refresh;
  E.Options := E.Options + [eoEmbedDroppedImages, eoEmbedPastedImages];
  FontCombo.LivePreview := true;
  HtFontSizeCombo1.LivePreview := true;
  HtTextColorCombo1.LivePreview := true;
  HtBgColorCombo1.LivePreview := true;
end;

procedure TframeHTMLEditor.AlignImageInlineClick(Sender: TObject);
begin
  ImageElement.AddCSS('float: none;', true);
  E.Refresh;
end;

procedure TframeHTMLEditor.AlignImageLeftClick(Sender: TObject);
begin
  ImageElement.AddCSS('float: left;', true);
  E.Refresh;
end;

procedure TframeHTMLEditor.AlignImageRightClick(Sender: TObject);
begin
  ImageElement.AddCSS('float: right;', true);
  E.Refresh;
end;

procedure TframeHTMLEditor.CanvasComboChange(Sender: TObject);
begin
  if CanvasCombo.ItemIndex = 0 then
    HtDefaultCanvasClass := THtCanvasGDI
  else
    HtDefaultCanvasClass := THtCanvasGP;
  E.Html.Text := E.Doc.OuterHTML;
  TrackBar1Change(TrackBar1);
end;

procedure TframeHTMLEditor.ListStyleComboChange(Sender: TObject);
var
  EX: TElement;
begin
  EX := TElement(E.Current.UpTo('ol'));
  if Assigned(EX) then
    EX.AddCSS('list-style-type: ' + ReplaceStr(ListStyleCombo.Items[ListStyleCombo.ItemIndex], ' ', '-'));
  E.Refresh;
end;

procedure TframeHTMLEditor.EAfterLoad(Sender: TObject);
begin
  if LeftPages.Visible then
    TreePanel.Html.Text := E.CreateTableofContents;
  FontCombo.LoadFonts;
end;

procedure TframeHTMLEditor.EMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P: TElement;
  SP: TPoint;
{$IFDEF ADDICT}
  s: string;
{$ENDIF}
begin
  if Button = mbRight then
  begin
    P := E.Doc.GetElementAt(X, Y);
    SP := E.ClientToScreen(Point(X, Y));
    if Assigned(P) and (P.Tag = 'img') then
    begin
      ImageElement := P;
      if P.Style.Float = fLeft then
        AlignImageLeft.Checked := true
      else if P.Style.Float = fRight then
        AlignImageRight.Checked := true
      else
        AlignImageInline.Checked := true;
      ImageMenu.Popup(SP.X, SP.Y);
    end
    else
    begin
{$IFDEF ADDICT}
      if Assigned(P) and P.HasParentTag('_template') then
        exit;
      s := E.WordAt(X, Y, SpellElement, SpellChar);
      if s <> '' then
        AddictSpell1.ShowPopupMenu(E, [spDialog, spAutoCorrect, spReplace, spIgnore, spAdd], SP.X, SP.Y, s);
{$ENDIF}
    end;
  end;
end;

end.

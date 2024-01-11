unit Main;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniSplitter, uniEdit, uniTreeView, uniStatusBar, uniMultiItem, uniComboBox,
  uniTimer, uniPageControl, uniButton, uniBitBtn, uniGUIFrame, uniToolBar,
  uniImageList, uniLabel, Menus, uniMainMenu, pngimage, uniImage, umain;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    NavTree: TUniTreeView;
    UniStatusBar1: TUniStatusBar;
    UniClockTimer: TUniTimer;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniImageList1: TUniImageList;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniMainMenu1: TUniMainMenu;
    File1: TUniMenuItem;
    Navigate1: TUniMenuItem;
    Exit1: TUniMenuItem;
    UniImageList2: TUniImageList;
    UniToolButton5: TUniToolButton;
    UniToolButton6: TUniToolButton;
    uniGUIWebsite1: TUniMenuItem;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniSimplePanel3: TUniSimplePanel;
    UniBitBtn1: TUniBitBtn;
    ThemeComboBox: TUniComboBox;
    UniContainerPanel2: TUniSimplePanel;
    UniContainerPanel1: TUniSimplePanel;
    FrameMain1: TFrameMain;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniClockTimerTimer(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure NavTreeClick(Sender: TObject);
    procedure TabSheetClose(Sender: TObject; var AllowClose: Boolean);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniPageControl1Change(Sender: TObject);
    procedure UniToolButton1Click(Sender: TObject);
    procedure UniToolButton2Click(Sender: TObject);
    procedure UniToolButton4Click(Sender: TObject);
    procedure ThemeComboBoxChange(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Navigate1Click(Sender: TObject);
    procedure UniToolButton6Click(Sender: TObject);
  private
    { Private declarations }
    FileNames : TStrings;
    FHomeUrl : string;
    procedure RefreshTime;
    procedure ShowSource(AName: string );
    procedure ConstructNavigator;
    procedure GetThemes;
    function CreateImageIndex(filename: string): Integer;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ShowSource, ServerModule,
  uniStrUtils, uniGUITheme, UniGUIJSUtils;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.ShowSource(AName: string );
var
  Ix : Integer;
  Pg : TUniTabSheet;
begin
  Pg := UniPageControl1.ActivePage;
  if Assigned(Pg) then
  begin
    Ix := Pg.ImageIndex;
    if Ix>-1 then
      UniImageList2.GetIcon(Ix, SourceForm.Icon);
    SourceForm.Caption := 'Source files for [ '+Pg.Caption+' ]';
  end;

  SourceForm.SourceName:=AName;
  SourceForm.ShowModal;
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  ShowSource(FileNames.Values[UniPageControl1.ActivePage.Caption]);
end;

procedure TMainForm.UniClockTimerTimer(Sender: TObject);
begin
  RefreshTime;
end;

function TMainForm.CreateImageIndex(filename: string): Integer;
begin
  Result := UniImageList2.AddIconFile(filename);
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.GetThemes;
var
  S : TUniStringArray;
  I : Integer;
begin
  S := UniServerModule.ThemeManager.AllThemes;

  ThemeComboBox.Items.Clear;
  for I := Low(S) to High(S) do
    ThemeComboBox.Items.Add(S[I]);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  FileNames := TStringList.Create;
  RefreshTime;
  ConstructNavigator;

  FHomeUrl := 'http://www.unigui.com';

{$ifdef COMPILER_14_UP}
  with FormatSettings do
{$endif}
  begin
    DateSeparator:='/';
    CurrencyFormat:=0;
    CurrencyString:='$';
  end;
end;

procedure TMainForm.UniFormDestroy(Sender: TObject);
begin
  FileNames.Free;
end;

procedure TMainForm.UniPageControl1Change(Sender: TObject);
var
  Ts : TUniTabSheet;
  Nd : TUniTreeNode;
begin
  Ts := UniPageControl1.ActivePage;
  Nd := Pointer(Ts.Tag);
  NavTree.Selected := Nd;
end;

procedure TMainForm.UniToolButton1Click(Sender: TObject);
begin
  NavTree.FullExpand;
end;

procedure TMainForm.UniToolButton2Click(Sender: TObject);
begin
  NavTree.FullCollapse;
end;

procedure TMainForm.UniToolButton4Click(Sender: TObject);
var
  I: Integer;
  Ts : TUniTabSheet;
begin
  for I := UniPageControl1.PageCount - 1 downto 0 do
  begin
    Ts := UniPageControl1.Pages[I];
    if Ts.Closable then Ts.Close;
  end;
end;

procedure TMainForm.UniToolButton6Click(Sender: TObject);
begin
  UniSession.UrlRedirect(FHomeUrl);
end;

procedure TMainForm.TabSheetClose(Sender: TObject; var AllowClose: Boolean);
var
  Ts : TUniTabSheet;
  Nd : TUniTreeNode;
begin
  Ts := Sender as TUniTabSheet;
  Nd := Pointer(Ts.Tag);
  if Assigned(Nd) then
  begin
    Nd.Data := nil;
    if NavTree.Selected = Nd then
      NavTree.Selected := nil;
  end;
end;

procedure TMainForm.ThemeComboBoxChange(Sender: TObject);
begin
  UniMainModule.Theme:=ThemeComboBox.Text;
end;

procedure TMainForm.ConstructNavigator;
var
  RawS : RawByteString;
  S, S1, Path, SubS : string;
  sr: TSearchRec;
  Ls : TStringList;
  Txt : TextFile;
  I, iPos, index, groupindex, mainindex : Integer;
  Nd : TUniTreeNode;
  Mt, Mt1 : TUniMenuItem;
  iconfile, groupIconFile, mainIconFile: string;
begin
  Path := UniServerModule.StartPath + 'units\';

  Ls := TStringList.Create;
  try
    if SysUtils.FindFirst(Path+'*.pas', faAnyFile, sr) = 0 then
    begin
      repeat
        if (sr.Attr and faDirectory) = 0 then
        begin
          AssignFile(Txt, Path + Sr.Name);
          Reset(Txt);
          ReadLn(Txt, RawS);
          CloseFile(Txt);

          S := DecodeCharSet(RawS, 'utf-8');

          S := Trim(StringReplace(S, '//', '', [rfReplaceAll]));
          iPos := Pos('=', S);

          if iPos>0 then
          begin
            S1 := Trim(Copy(S, 1, iPos-1));
            S := Trim(Copy(S, iPos+1, MaxInt));
            Ls.Add(S+'='+S1);
            FileNames.Values[S1] := ExtractFileNameNoExt(Sr.Name);
          end;
        end;
      until FindNext(sr) <> 0;
      FindClose(sr);
    end;

    Ls.Sorted := True;

    for I := 0 to Ls.Count -1  do
    begin
      S := Ls.Names[I];
      SubS := Trim(Ls.ValueFromIndex[I]);
      if S = '' then // Main
      begin
        Nd := NavTree.Items.Add(nil, SubS);
        Nd.Data := UniTabSheet1;
        mainIconFile :=  Path+'Icons\main.ico';
        if FileExists(mainIconFile)  then
        begin
          mainindex := CreateImageIndex(mainIconFile);
        end
        else
          mainindex := -1;
        nd.ImageIndex := mainindex;
        UniTabSheet1.Caption := SubS;
        UniTabSheet1.Tag := NativeInt(Nd);
        UniTabSheet1.ImageIndex := mainindex;
        NavTree.Selected := Nd;
      end
      else
      begin
        Nd := NavTree.Items.FindNodeByCaption(S);
        if Nd = nil then
        begin
          Nd := NavTree.Items.Add(nil, S);
          groupIconFile :=  Path+'Icons\'+S+'.ico';
          if FileExists(groupIconFile)  then
          begin
            groupindex := CreateImageIndex(groupIconFile);
            nd.ImageIndex := groupindex;
          end
          else
            nd.ImageIndex := -1;
        end;

        iconfile := Path+'Icons\'+FileNames.Values[SubS] +'.ico';
        if FileExists(iconfile) then
          index := CreateImageIndex(iconfile)
        else
          index := -1;

        Nd := NavTree.Items.Add(Nd, SubS);
        Nd.ImageIndex := index;

        // construct top menu
        Mt := Navigate1.Find(S);
        if Mt = nil then
        begin
          Mt := TUniMenuItem.Create(Self);
          Mt.Caption := S;
          mt.ImageIndex := groupindex;
          Navigate1.Add(Mt);
        end;

        Mt1 := TUniMenuItem.Create(Self);
        Mt1.Caption := SubS;
        Mt1.ImageIndex := index;
        Mt1.OnClick := Navigate1Click;
        Mt1.Tag := UniInteger(Nd);
        Mt.Add(Mt1);
      end;

    end;
  finally
    Ls.Free;
  end;
end;

procedure TMainForm.Navigate1Click(Sender: TObject);
var
  Nd : TUniTreeNode;
begin
  Nd := Pointer((Sender as TUniMenuItem).Tag);
  if Assigned(Nd) then
  begin
    NavTree.Selected := Nd;
    NavTreeClick(Nd);
  end;
end;

procedure TMainForm.NavTreeClick(Sender: TObject);
var
  Nd : TUniTreeNode;
  Ts : TUniTabSheet;
  FrC : TUniFrameClass;
  Fr : TUniFrame;
  FClassName, iconfile, Path : string;
  index: Integer;
begin
  Path := UniServerModule.StartPath + 'units\';
  Nd := NavTree.Selected;
  if Nd.Count = 0 then
  begin
    Ts := Nd.Data;
    if not Assigned(Ts) then
    begin
      Ts := TUniTabSheet.Create(Self);
      Ts.Closable := True;
      Ts.AlignmentControl := uniAlignmentClient;
      Ts.Layout := 'fit';
      Ts.OnClose := TabSheetClose;
      Ts.PageControl := UniPageControl1;
      Ts.Tag := NativeInt(Nd);
      Ts.Caption := Nd.Text;
      Ts.ImageIndex := Nd.ImageIndex;

      FClassName := 'TUni' + FileNames.Values[Nd.Text];

      FrC := TUniFrameClass(FindClass(FClassName));

      Fr := FrC.Create(Ts);
      Fr.Align := alClient;
      Fr.Parent := Ts;

      Nd.Data := Ts;
    end;
    UniPageControl1.ActivePage := Ts;
  end;
end;

procedure TMainForm.RefreshTime;
begin
  UniStatusBar1.Panels[0].Text := FormatDateTime('dd/mm/yyyy hh:nn', Now);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

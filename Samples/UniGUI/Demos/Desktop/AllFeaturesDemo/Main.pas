unit Main;
{$I uniCompilers.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniSplitter, uniEdit, uniTreeView, uniStatusBar, uniMultiItem, uniComboBox,
  uniTimer, uniPageControl, uniButton, uniBitBtn, uniGUIFrame, umain, uniToolBar,
  uniImageList, uniLabel, Menus, uniMainMenu, pngimage, uniImage, uniMenuButton;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniSplitter1: TUniSplitter;
    NavTree: TUniTreeView;
    UniStatusBar1: TUniStatusBar;
    UniContainerPanel2: TUniContainerPanel;
    UniContainerPanel3: TUniContainerPanel;
    ThemeComboBox: TUniComboBox;
    UniClockTimer: TUniTimer;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    FrameMain1: TFrameMain;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniNativeImageList1: TUniNativeImageList;
    SearchEdit: TUniComboBox;
    UniPopupMenu1: TUniPopupMenu;
    AddtoFavorites1: TUniMenuItem;
    RemoveFromFavorites1: TUniMenuItem;
    UniNativeImageList2: TUniNativeImageList;
    UniFavMenu: TUniPopupMenu;
    UniToolButton8: TUniToolButton;
    est1: TUniMenuItem;
    UniToolButton6: TUniToolButton;
    UniToolButton7: TUniToolButton;
    UniThemePopup: TUniPopupMenu;
    UniToolButton10: TUniToolButton;
    UniPopupMenu3: TUniPopupMenu;
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
    procedure UniFormAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure FrameMain1Create(Sender: TObject);
    procedure SearchEditTriggerEvent(Sender: TUniCustomComboBox;
      AButtonId: Integer);
    procedure SearchEditChange(Sender: TObject);
    procedure NavTreeLoaded(Sender: TObject);
    procedure AddtoFavorites1Click(Sender: TObject);
    procedure NavTreeCellContextClick(ANode: TUniTreeNode; X, Y: Integer);
    procedure RemoveFromFavorites1Click(Sender: TObject);
  private
    { Private declarations }
    FileNames : TStrings;
    PSString : string;
    procedure RefreshTime;
    procedure ShowSource(AName: string );
    procedure ConstructNavigator;
    procedure GetThemes;
    function CreateImageIndex(filename: string): Integer;
    procedure SearchTree(const AText: string);
    procedure AddToSubMenu(ANode: TUniTreeNode);
    procedure WriteFavs;
    procedure ThemeClick(Sender: TObject);

  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ShowSource, ServerModule,
  uniStrUtils, uniGUITheme, UniGUIJSUtils, IniFiles;

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
    if Ix > -1 then
      UniNativeImageList2.GetIcon(Ix, SourceForm.Icon);
    SourceForm.Caption := 'Source files for [ ' + Pg.Caption + ' ]';
  end;

  SourceForm.SourceName := AName;
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

procedure TMainForm.SearchEditChange(Sender: TObject);
begin
  SearchTree(SearchEdit.Text);
end;

procedure TMainForm.SearchTree(const AText: string);
var
  S, SString : string;
  I : Integer;
  aExpand : Boolean;
begin
  SString := Trim(AText);
  if SString<>PSString then
  begin
    PSString := LowerCase(SString);
    if (Length(PSString) > 1) or (PSString = '') then
    begin
      aExpand := PSString<>'';
      NavTree.BeginUpdate;
      try
        NavTree.ResetData;
        for I := 0 to NavTree.Items.Count - 1 do
        begin
          S := LowerCase(NavTree.Items[I].Text);
          NavTree.Items[I].Visible := (Length(PSString) = 0) or (Pos(PSString, S)>0);
          NavTree.Items[I].Expanded := aExpand;
        end;
      finally
        NavTree.EndUpdate;
      end;
    end;
  end;
end;

procedure TMainForm.SearchEditTriggerEvent(Sender: TUniCustomComboBox;
  AButtonId: Integer);
begin
  case AButtonId of
    0 : SearchTree(Sender.Text);
  end;
end;

function TMainForm.CreateImageIndex(filename: string): Integer;
begin
  Result := UniNativeImageList2.AddIconFile(filename);
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.FrameMain1Create(Sender: TObject);
begin
  FrameMain1.UniFrameCreate(Sender);
end;

procedure TMainForm.GetThemes;
var
  S : TUniStringArray;
  I : Integer;
  M : TUniMenuItem;
begin
  S := UniServerModule.ThemeManager.AllThemes;

  ThemeComboBox.Items.Clear;
  for I := Low(S) to High(S) do
    ThemeComboBox.Items.Add(S[I]);

  UniThemePopup.Items.Clear;
  for I := Low(S) to High(S) do
  begin
    M := TUniMenuItem.Create(Self);
    M.Caption := S[I];
    M.Checked := SameText(M.Caption, UniMainModule.Theme);
    M.OnClick := ThemeClick;
    UniThemePopup.Items.Add(M);
  end;
end;

procedure TMainForm.UniFormAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName = 'mybrowsercallback' then
  begin
    if Params.Values['RES'] = 'OK' then
      ShowMessage('Operation Succeeded: '+Params.Values['firstname'] +' '+Params.Values['lastname'])
    else if Params.Values['RES']='CANCEL' then
      ShowMessage('Operation Cancelled.');
  end
  else if EventName = 'mycallback' then
  begin
    ShowMessage('Operation Succeeded:'^M^M+Params.Values['user']+^M^M+Params.Text)
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I, Count : Integer;
  Ini: TIniFile;
begin
  if UniApplication.Parameters.Values['notheme'] = '1' then
    UniContainerPanel3.Visible := False;

  UniMainModule.Main := Self;
  FileNames := TStringList.Create;
  RefreshTime;
  ConstructNavigator;
  GetThemes;
  ThemeComboBox.Text := UniMainModule.Theme;

  SearchEdit.Text := '';

  //Favorites
  Ini := TIniFile.Create(UniServerModule.FilesFolderPath + 'Favorites.ini');
  try
    Count := Ini.ReadInteger('favorites','FavoritesCount', 0);
    for I := 0 to Count - 1 do
      AddToSubMenu(NavTree.Items.FindNodeByCaption(
        Ini.ReadString('favorites', IntToStr(I), '')
      ));
  finally
    Ini.Free;
  end;
end;

procedure TMainForm.WriteFavs;
var
  Ini: TIniFile;
  C, I: Integer;
begin
  Ini := TIniFile.Create(UniServerModule.FilesFolderPath+'Favorites.ini');
  try
    C := UniFavMenu.Items.Count;
    Ini.WriteInteger('favorites', 'FavoritesCount', C);
    for I := 0 to C - 1 do
      Ini.WriteString('favorites', IntToStr(I), UniFavMenu.Items[I].Caption);
  finally
    Ini.Free;
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
  UniMainModule.Theme := ThemeComboBox.Text;
end;

procedure TMainForm.AddtoFavorites1Click(Sender: TObject);
var
  ANode : TUniTreeNode;
begin
  ANode := NavTree.Selected;
  AddToSubMenu(ANode);
  WriteFavs;
end;

procedure TMainForm.AddToSubMenu(ANode: TUniTreeNode);
var
  M : TUniMenuItem;
begin
  if Assigned(ANode) then
  begin
    M := TUniMenuItem.Create(Self);
    M.Caption:= ANode.Text;
    M.Tag := UniInteger(ANode);
    M.ImageIndex := ANode.ImageIndex;
    M.OnClick := Navigate1Click;
    UniFavMenu.Items.Add(M);
  end;
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
          iPos := Pos('//', S);
          S := Trim(Copy(S, iPos + 2, MaxInt));
          iPos := Pos('=', S);

          if iPos > 0 then
          begin
            S1 := Trim(Copy(S, 1, iPos - 1));
            S := Trim(Copy(S, iPos+1, MaxInt));
            Ls.Add(S + '=' + S1);

            FileNames.Values[S1] :=  ExtractFileNameNoExt(Sr.Name);
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
          groupIconFile :=  Path + 'Icons\' + S +'.ico';
          if FileExists(groupIconFile)  then
          begin
            groupindex := CreateImageIndex(groupIconFile);
            nd.ImageIndex := groupindex;
          end
          else
            nd.ImageIndex := -1;
        end;

        iconfile := Path + 'Icons\' + FileNames.Values[SubS] + '.ico';
        if FileExists(iconfile) then
          index := CreateImageIndex(iconfile)
        else
          index := -1;

        Nd := NavTree.Items.Add(Nd, SubS);
        Nd.ImageIndex := index;
      end;
    end;
  finally
    Ls.Free;
  end;
end;

procedure TMainForm.ThemeClick(Sender: TObject);
var
  S : string;
begin
  S := UniSession.UrlReferer;
  if Pos('xtheme', S) > 0 then
  begin
    S := StringReplace(S, 'xtheme=', 'nnn=', []); // remove theme from current URL
    UniSession.UrlReferer := S;
  end;

  UniMainModule.Theme := (Sender as TUniMenuItem).Caption;
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

procedure TMainForm.NavTreeCellContextClick(ANode: TUniTreeNode; X, Y: Integer);
begin
  if ANode.Count = 0 then
  begin
    if UniFavMenu.Items.Find(ANode.Text) =  nil then
    begin
      AddtoFavorites1.Enabled := True;
      RemoveFromFavorites1.Enabled := False;
    end
    else
    begin
      AddtoFavorites1.Enabled := False;
      RemoveFromFavorites1.Enabled := True;
    end;
    UniPopupMenu1.Popup(X, Y, NavTree);
  end;
end;

procedure TMainForm.NavTreeClick(Sender: TObject);
var
  Nd : TUniTreeNode;
  Ts : TUniTabSheet;
  FrC : TUniFrameClass;
  Fr : TUniFrame;
  FClassName, Path: string;
begin
  Path := UniServerModule.StartPath + 'units\';
  Nd := NavTree.Selected;
  if Nd.Count = 0 then
  begin
    Ts := Nd.Data;
    if not Assigned(Ts) then
    begin
      Ts := TUniTabSheet.Create(Self);
      Ts.PageControl := UniPageControl1;

      Ts.Closable := True;
      Ts.OnClose := TabSheetClose;
      Ts.Tag := NativeInt(Nd);
      Ts.Caption := Nd.Text;
      Ts.ImageIndex := Nd.ImageIndex;

      FClassName := 'TUni' + FileNames.Values[Nd.Text];

      FrC := TUniFrameClass(FindClass(FClassName));

      Fr := FrC.Create(Self);
      Fr.Align := alClient;
      Fr.Parent := Ts;

      Nd.Data := Ts;
    end;
    UniPageControl1.ActivePage := Ts;
  end;
end;

procedure TMainForm.NavTreeLoaded(Sender: TObject);
const
  RandomModules : array [0..9] of string =
    ('Fish Facts', 'Bar Chart', 'Pie Chart', 'Radar Chart',
     'Filter', 'DBLookupComboBox', 'Thread Sort', 'Multi Data Series Chart',
     'Bar3D Chart', 'Horizontal Bar3D Chart');
var
  Nd : TUniTreeNode;
  ModuleName : string;
begin
  if UniApplication.Parameters.Values['no_focus'] = '' then
    SearchEdit.SetFocus;

  ModuleName := UniApplication.Parameters.Values['module_name'];
  if ModuleName = 'random' then
  begin
    Randomize;
    ModuleName := RandomModules[Random(Length(RandomModules))];
  end;

  if ModuleName <> '' then
  begin
    Nd := NavTree.Items.FindNodeByCaption(ModuleName);
    if Assigned(Nd) then
    begin
      NavTree.Selected := Nd;
      NavTreeClick(nil);
    end;
  end;
end;

procedure TMainForm.RefreshTime;
begin
  UniStatusBar1.Panels[0].Text := FormatDateTime('dd/mm/yyyy hh:nn', Now);
end;

procedure TMainForm.RemoveFromFavorites1Click(Sender: TObject);
var
  M : TUniMenuItem;
begin
  M := UniFavMenu.Items.Find(NavTree.Selected.Text);
  if Assigned(M) then
  begin
    M.Free;
    WriteFavs;
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

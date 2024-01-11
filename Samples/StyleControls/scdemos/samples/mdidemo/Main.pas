unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList, System.Actions, scStyledForm,
  scImageCollection, scControls, scStyleManager;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileCloseItem: TMenuItem;
    Window1: TMenuItem;
    Help1: TMenuItem;
    N1: TMenuItem;
    FileExitItem: TMenuItem;
    WindowCascadeItem: TMenuItem;
    WindowTileItem: TMenuItem;
    WindowArrangeItem: TMenuItem;
    HelpAboutItem: TMenuItem;
    OpenDialog: TOpenDialog;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    Edit1: TMenuItem;
    CutItem: TMenuItem;
    CopyItem: TMenuItem;
    PasteItem: TMenuItem;
    WindowMinimizeItem: TMenuItem;
    StatusBar: TscStatusBar;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    FileNew1: TAction;
    FileSave1: TAction;
    FileExit1: TAction;
    FileOpen1: TAction;
    FileSaveAs1: TAction;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowArrangeAll1: TWindowArrange;
    WindowMinimizeAll1: TWindowMinimizeAll;
    HelpAbout1: TAction;
    FileClose1: TWindowClose;
    WindowTileVertical1: TWindowTileVertical;
    WindowTileItem2: TMenuItem;
    ToolBar2: TscToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ImageList1: TImageList;
    ActionMDICascade: TAction;
    ActionMDITileHorizontal: TAction;
    ActionMDITileVertical: TAction;
    ActionMDIArrange: TAction;
    ActionMDIMinimize: TAction;
    scStyledForm1: TscStyledForm;
    Style1: TMenuItem;
    Styledmenualphablend1: TMenuItem;
    Showstylesmenuinsystemmenu1: TMenuItem;
    scStyleManager1: TscStyleManager;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure ActionMDITileHorizontalExecute(Sender: TObject);
    procedure ActionMDITileVerticalExecute(Sender: TObject);
    procedure ActionMDICascadeExecute(Sender: TObject);
    procedure ActionMDIArrangeExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Styledmenualphablend1Click(Sender: TObject);
    procedure Showstylesmenuinsystemmenu1Click(Sender: TObject);
  private
    { Private declarations }
    FWindowList: array of Integer;
    procedure CreateMDIChild(const Name: string);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses CHILDWIN, about;

procedure DoTile(TileMode: TTileMode);
const
  TileParams: array[TTileMode] of Word = (MDITILE_HORIZONTAL, MDITILE_VERTICAL);
var
  LForm: TForm;
begin
  LForm := MainForm;
  if (LForm.FormStyle = fsMDIForm) and (LForm.ClientHandle <> 0) then
    SendMessage(LForm.ClientHandle, WM_MDITILE, TileParams[TileMode], 0);
end;

procedure ExecNewProcess(ProgramName : String; Wait: Boolean);
var
  StartInfo : TStartupInfo;
  ProcInfo : TProcessInformation;
  CreateOK : Boolean;
begin
    { fill with known state }
  FillChar(StartInfo,SizeOf(TStartupInfo),#0);
  FillChar(ProcInfo,SizeOf(TProcessInformation),#0);
  StartInfo.cb := SizeOf(TStartupInfo);
  CreateOK := CreateProcess(nil, PChar(ProgramName), nil, nil,False,
              CREATE_NEW_PROCESS_GROUP+NORMAL_PRIORITY_CLASS,
              nil, nil, StartInfo, ProcInfo);
  WaitForInputIdle(ProcInfo.hProcess, INFINITE);
    { check to see if successful }
  if CreateOK then
    begin
        //may or may not be needed. Usually wait for child processes
      if Wait then
        WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    end
  else
    begin
      ShowMessage('Unable to run '+ProgramName);
     end;
  CloseHandle(ProcInfo.hProcess);
  CloseHandle(ProcInfo.hThread);
end;

procedure TMainForm.ActionMDIArrangeExecute(Sender: TObject);
begin
  if (FormStyle = fsMDIForm) and (ClientHandle <> 0) then
    SendMessage(ClientHandle, WM_MDIICONARRANGE, 0, 0);
end;

procedure TMainForm.ActionMDICascadeExecute(Sender: TObject);
begin
  if (FormStyle = fsMDIForm) and (ClientHandle <> 0) then
    SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);
end;

procedure TMainForm.ActionMDITileHorizontalExecute(Sender: TObject);
begin
  DoTile(tbHorizontal);
end;

procedure TMainForm.ActionMDITileVerticalExecute(Sender: TObject);
begin
  DoTile(tbVertical);
end;

procedure TMainForm.Showstylesmenuinsystemmenu1Click(Sender: TObject);
begin
  Showstylesmenuinsystemmenu1.Checked := not Showstylesmenuinsystemmenu1.Checked;
  scStyledForm1.ShowStylesMenu := Showstylesmenuinsystemmenu1.Checked;
end;

procedure TMainForm.Styledmenualphablend1Click(Sender: TObject);
begin
  if not Styledmenualphablend1.Checked then
  begin
    scStyleManager1.MenuAlphaBlendValue := 235;
    Styledmenualphablend1.Checked := True;
  end
  else
  begin
    scStyleManager1.MenuAlphaBlendValue := 255;
    Styledmenualphablend1.Checked := False;
  end;
end;

procedure TMainForm.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  Child := TMDIChild.Create(Application);
  Child.Caption := Name;
  if FileExists(Name) then Child.Memo1.Lines.LoadFromFile(Name);
end;

procedure TMainForm.FileNew1Execute(Sender: TObject);
begin
  CreateMDIChild('NONAME' + IntToStr(MDIChildCount + 1));
end;

procedure TMainForm.FileOpen1Execute(Sender: TObject);
begin
  if OpenDialog.Execute then
    CreateMDIChild(OpenDialog.FileName);
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I: Integer;
  AHandle: HWND;
begin
  for I := Low(FWindowList) to High(FWindowList) do
    begin
      AHandle := FWindowList[I];
      if Windows.IsWindow(AHandle) then
        begin
          Windows.SendMessage(AHandle, WM_CLOSE, 0, 0);
        end;
    end;
end;

procedure TMainForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TMainForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

end.

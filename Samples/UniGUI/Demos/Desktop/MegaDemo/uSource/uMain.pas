unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, Menus, ExtCtrls,
  ComCtrls, UniTreeView, uniGUIFrame, UniPageControl, StdCtrls, UniMainMenu,
  ImgList, UniStatusBar, UniSplitter, UniMemo, UniLabel,
  UniImage, UniPanel, uniGUIClasses, uniGUIRegClasses, uniGUIBaseClasses, uniScreenMask,
  uniImageList, uniTimer;

type
  TMainForm = class(TUniForm)
    NavTreeView: TUniTreeView;
    NavPage: TUniPageControl;
    FormSheet: TUniTabSheet;
    UniMainMenu1: TUniMainMenu;
    File1: TUniMenuItem;
    Exit1: TUniMenuItem;
    heme1: TUniMenuItem;
    Blue1: TUniMenuItem;
    Gray1: TUniMenuItem;
    Classic1: TUniMenuItem;
    UniSplitter1: TUniSplitter;
    CPLabel: TUniLabel;
    UniLabel1: TUniLabel;
    UniImage1: TUniImage;
    UniImageList1: TUniImageList;
    ImageList2: TUniImageList;
    UniStatusBar1: TUniStatusBar;
    UniTimer1: TUniTimer;
    procedure NavTreeViewClick(Sender: TObject);
    procedure ThemeClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
  private
    { Private declarations }
    FFrameName : string;
    FCurrentFrame : TUniFrame;
  public
    { Public declarations }
    procedure InsertFrame(Name: string);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, uButtons, uEdits, UniGUIRTTI, uLabels,
  uStringGrid, uDBGrid, uPanels, uMemo, uTabControl, uPageControl, uImages,
  uCheckBox, uRadioButton, ServerModule, UniGUIApplication, uStatusBar,
  uToolBar, uTimer, uFishFacts, uniWinUtils, uTreeView, uProgressBar, uForms,
  uTrackBar, uSplitter, UniBitBtn, uDialogs, uListBox, uKeyEvents;

var
  cPath : string;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.ThemeClick(Sender: TObject);
begin
  if UniApplication<>nil then
  begin
    UniServerModule.Lock;
    try
      case TComponent(Sender).Tag of
        1 : UniServerModule.CurrentTheme:='default';
        2 : UniServerModule.CurrentTheme:='blue';
        3 : UniServerModule.CurrentTheme:='gray';
      end;
    finally
      UniServerModule.UnLock;
    end;
    TUniGUIApplication(UniApplication).Restart;
  end;
end;

procedure TMainForm.InsertFrame(Name: string);
begin
  if FFrameName=Name then Exit;
  FFrameName:=Name;

  NavPage.TabIndex:=0;
  FreeAndNil(FCurrentFrame);
  if Name<>'Main' then
  begin
    FCurrentFrame:=TUniFrameClass(FindClass('TU'+Name+'Frame')).Create(Self);
    FCurrentFrame.Align:=alClient;
    FCurrentFrame.Parent:=FormSheet;
  end;
  if Name='Main' then
    Caption:='uniGUI Demo'
  else
    Caption:=Name;
end;

procedure TMainForm.NavTreeViewClick(Sender: TObject);
begin
  InsertFrame(NavTreeView.Selected.Text);
  ImageList2.GetIcon(NavTreeView.Selected.ImageIndex, Icon);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  Width:=800;
  Height:=600;
  FFrameName:='Main';
  NavPage.TabIndex:=0;
  UniLabel1.Caption := UniLabel1.Caption + ' ' + UniServerModule.UniGUIVersion;
  CPLabel.Caption := CPLabel.Caption + ' 2009 - ' + FormatDateTime('yyyy', Date);
  UniTimer1Timer(nil);
end;

procedure TMainForm.UniTimer1Timer(Sender: TObject);
begin
  UniStatusBar1.Panels[0].Text := FormatDateTime('dd/mm/yyyy hh:nn', Now);
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

initialization
  cPath:=GetModulePath(HInstance)+'Resources\';

  RegisterClasses([TuButtonsFrame,
                   TuEditsFrame,
                   TuLabelsFrame,
                   TuStringGridFrame,
                   TuDBGridFrame,
                   TuPanelsFrame,
                   TuMemoFrame,
                   TuTabControlFrame,
                   TuPageControlFrame,
                   TuImagesFrame,
                   TuCheckBoxFrame,
                   TuRadioButtonFrame,
                   TuStatusBarFrame,
                   TuToolBarFrame,
                   TuTimerFrame,
                   TuFishFactsFrame,
                   TuTreeViewFrame,
                   TuProgressBarFrame,
                   TuFormsFrame,
                   TuTrackBarFrame,
                   TuSplitterFrame,
                   TuDialogsFrame,
                   TuListBoxFrame,
                   TuKeyEventsFrame]);

  RegisterMainFormClass(TMainForm);
end.

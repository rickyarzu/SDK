{ ******************************************************************** }
{ TAdvNavBar demo }
{ }
{ written by TMS Software }
{ copyright © 2005 - 2012 }
{ Email : info@tmssoftware.com }
{ Website : http://www.tmssoftware.com }
{ ******************************************************************** }

unit UAdvNavBarDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvNavBar, ImgList, ComCtrls, StdCtrls, uNavBarFrame,
  CheckLst, Menus, System.ImageList, AdvPanel, Janua.VCL.CategoryButtonsFrame;

type
  TfrmAdvNavBarDemo = class(TForm)
    AdvNavBar1: TAdvNavBar;
    AdvNavBarPanel1: TAdvNavBarPanel;
    AdvNavBarPanel2: TAdvNavBarPanel;
    AdvNavBarPanel3: TAdvNavBarPanel;
    ImageList1: TImageList;
    AdvNavBarPanel4: TAdvNavBarPanel;
    AdvNavBarPanel5: TAdvNavBarPanel;
    MonthCalendar1: TMonthCalendar;
    TreeView1: TTreeView;
    ImageList2: TImageList;
    Edit1: TEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckListBox1: TCheckListBox;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    Label2: TLabel;
    Label3: TLabel;
    PopupMenu1: TPopupMenu;
    Moreoptions1: TMenuItem;
    Button1: TButton;
    Infolabel: TLabel;
    Button2: TButton;
    AdvNavBarPanel6: TAdvNavBarPanel;
    AdvPanel1: TAdvPanel;
    Button3: TButton;
    Button4: TButton;
    procedure AdvNavBar1PopupMenuClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure AdvNavBar1SplitterMove(Sender: TObject; OldSplitterPosition, NewSplitterPosition: Integer);
    procedure AdvNavBar1PanelActivate(Sender: TObject; OldActivePanel, NewActivePanel: Integer;
      var Allow: Boolean);
    procedure Moreoptions1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    FPNum: Byte;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmAdvNavBarDemo: TfrmAdvNavBarDemo;

implementation

uses System.Types, uNavaBarFrameListview, uNavBarDemoDataModule, Janua.VCL.Infrastructure;

{$R *.dfm}

procedure TfrmAdvNavBarDemo.AdvNavBar1PopupMenuClick(Sender: TObject);
var
  pt: tpoint;
begin
  pt := point(AdvNavBar1.Left + AdvNavBar1.Width, AdvNavBar1.Top + AdvNavBar1.Height);
  pt.X := pt.X - 8;
  pt.Y := pt.Y - 8;
  pt := ClientToScreen(pt);

  PopupMenu1.Popup(pt.X, pt.Y);
end;

procedure TfrmAdvNavBarDemo.Button1Click(Sender: TObject);
begin
  AdvNavBar1.ActiveTabIndex := 2;
end;

procedure TfrmAdvNavBarDemo.Button2Click(Sender: TObject);
var
  lNPanel: TAdvNavBarPanel;
  lFrame: TFrameNavBar;
  lPanel: TAdvPanel;
  lLabel: TLabel;
begin
  Inc(FPNum);
  lNPanel := AdvNavBar1.AddPanel;
  lNPanel.Caption := 'Dinamico ' + FPNum.ToString;
  lNPanel.Name := 'Panel' + FPNum.ToString;

  lPanel := TAdvPanel.Create(lNPanel);
  lPanel.Name := 'lFrame' + FPNum.ToString;
  lPanel.Align := alClient;
  lPanel.Parent := lNPanel;

  lFrame := TFrameNavBar.Create(self);
  lFrame.Name := 'lFrame' + FPNum.ToString;
  lFrame.Align := alClient;
  lFrame.Parent := lPanel;

  self.Invalidate;
  self.Refresh;
  // AdvNavBar1.ActiveTabIndex := lNPanel.PanelIndex;
end;

procedure TfrmAdvNavBarDemo.Button3Click(Sender: TObject);
var
  lNPanel: TAdvNavBarPanel;
  lFrame: TJanuaCategoryButtonsFrame;
  lLabel: TLabel;
begin
  Inc(FPNum);
  lNPanel := AdvNavBar1.AddPanel;
  lNPanel.Caption := 'Dinamico ' + FPNum.ToString;
  lNPanel.Name := 'Panel' + FPNum.ToString;
  lNPanel.ImageIndex := 7;

  lFrame := TJanuaCategoryButtonsFrame.Create(self);
  lFrame.Name := 'lFrame' + FPNum.ToString;
  lFrame.Align := alClient;
  lFrame.Parent := lNPanel;
  lFrame.catMenuItems.Images := TJanuaVCLInfrastructure.ImgListVCLIcons24;

  self.Invalidate;
  self.Refresh;
  // AdvNavBar1.ActiveTabIndex := lNPanel.PanelIndex;

end;

procedure TfrmAdvNavBarDemo.Button4Click(Sender: TObject);
begin
  self.AdvNavBar1.ShowSplitter := True;
  if AdvNavBar1.SplitterPosition = 2 then
    self.AdvNavBar1.SplitterPosition := 4
  else
    self.AdvNavBar1.SplitterPosition := 2;
end;

constructor TfrmAdvNavBarDemo.Create(AOwner: TComponent);
begin
  inherited;
  FPNum := 0;
end;

procedure TfrmAdvNavBarDemo.FormCreate(Sender: TObject);
begin
  self.AdvNavBar1.Images := TJanuaVCLInfrastructure.ImgListVCLIcons24;
end;

procedure TfrmAdvNavBarDemo.AdvNavBar1SplitterMove(Sender: TObject;
  OldSplitterPosition, NewSplitterPosition: Integer);
begin
  Infolabel.Caption := 'Active panel:' + IntToStr(AdvNavBar1.ActivePanel.PanelIndex) + ' - splitter : ' +
    IntToStr(NewSplitterPosition);
end;

procedure TfrmAdvNavBarDemo.AdvNavBar1PanelActivate(Sender: TObject; OldActivePanel, NewActivePanel: Integer;
  var Allow: Boolean);
begin
  Infolabel.Caption := 'Active panel:' + IntToStr(NewActivePanel) + ' - splitter : ' +
    IntToStr(AdvNavBar1.SplitterPosition);
end;

procedure TfrmAdvNavBarDemo.Moreoptions1Click(Sender: TObject);
begin
  ShowMessage('More options can be set from here ...');
end;

end.

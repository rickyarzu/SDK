unit ufrmTestingMobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, uframeKeyboardTest, Janua.Core.Classes,
  Janua.FMX.Forms, Janua.Core.System, FMX.Controls.Presentation, FMX.StdCtrls, FMX.TMSBaseControl, FMX.TMSLabelEdit,
  FMX.Layouts, FMX.Edit;

type
  TfrmTestingMobile = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabControl2: TTabControl;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    TabItem5: TTabItem;
    TabItem6: TTabItem;
    Frame21: TFrame2;
    Frame22: TFrame2;
    Frame23: TFrame2;
    Frame24: TFrame2;
    JanuaCoreOS1: TJanuaCoreOS;
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaFMXFormManager1: TJanuaFMXFormManager;
    VertScrollBox2: TVertScrollBox;
    Button1: TButton;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit1: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure TabControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabControl2Change(Sender: TObject);
    procedure Layout2Paint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
  private
    { Private declarations }
    procedure TabControl2Set;
  public
    { Public declarations }
  end;

var
  frmTestingMobile: TfrmTestingMobile;

implementation

{$R *.fmx}

procedure TfrmTestingMobile.FormCreate(Sender: TObject);
begin
  Self.TabControl1.ActiveTab := Self.TabItem1;
  Self.TabControl2.ActiveTab := Self.TabItem3;
  Self.JanuaFMXFormManager1.Activate;
end;

procedure TfrmTestingMobile.TabControl2Change(Sender: TObject);
begin
  TabControl2Set
end;

procedure TfrmTestingMobile.TabControl2Set;
begin
  if Self.TabControl2.ActiveTab = Self.TabItem3 then
  begin
    Self.JanuaFMXFormManager1.VertScrollBox := Self.Frame21.VertScrollBox1;
    Self.JanuaFMXFormManager1.MainLayout := Self.Frame21.MainLayout1;
  end
  else if Self.TabControl2.ActiveTab = Self.TabItem4 then
  begin
    Self.JanuaFMXFormManager1.VertScrollBox := Self.Frame22.VertScrollBox1;
    Self.JanuaFMXFormManager1.MainLayout := Self.Frame22.MainLayout1;
  end
  else if Self.TabControl2.ActiveTab = Self.TabItem5 then
  begin
    Self.JanuaFMXFormManager1.VertScrollBox := Self.Frame23.VertScrollBox1;
    Self.JanuaFMXFormManager1.MainLayout := Self.Frame23.MainLayout1;
  end
  else if Self.TabControl2.ActiveTab = Self.TabItem6 then
  begin
    Self.JanuaFMXFormManager1.VertScrollBox := Self.Frame24.VertScrollBox1;
    Self.JanuaFMXFormManager1.MainLayout := Self.Frame24.MainLayout1;
  end;
end;

procedure TfrmTestingMobile.FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
var
  control: TStyledControl;
begin
  if (Self.GetFocused is TStyledControl) then
  begin
    control := (Self.GetFocused as TStyledControl);
    case Key of
      vkReturn:
        TControl(Self).SelectNext(control, True);
      vkTab:
        TControl(Self).SelectNext(control, (not(ssShift in Shift)));
    end;
  end;
end;

procedure TfrmTestingMobile.Layout2Paint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
begin
  self.Button1.Text := self.Height.ToString
end;

procedure TfrmTestingMobile.TabControl1Change(Sender: TObject);
begin
  if Self.TabControl1.ActiveTab = Self.TabItem1 then
  begin
    TabControl2Set
  end
  else if Self.TabControl1.ActiveTab = Self.TabItem2 then
  begin
    Self.JanuaFMXFormManager1.VertScrollBox := Self.VertScrollBox2;
    // Self.JanuaFMXFormManager1.MainLayout := Self.Layout2;
  end;
end;

end.

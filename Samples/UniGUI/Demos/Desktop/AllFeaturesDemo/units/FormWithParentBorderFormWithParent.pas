// Border Form With Parent = Form With Parent
unit FormWithParentBorderFormWithParent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniGUIBaseClasses, uniStatusBar,
  Menus, uniMainMenu, UnitBorder1, UnitBorder2, UnitBorder3, UnitBorder4, UnitBorder5,
  uniGUIForm;

type
  TUniFormWithParentBorderFormWithParent = class(TUniFrame)
    UniMainMenu1: TUniMainMenu;
    UniForm11: TUniMenuItem;
    Show1: TUniMenuItem;
    Close1: TUniMenuItem;
    UniForm21: TUniMenuItem;
    Show2: TUniMenuItem;
    Close2: TUniMenuItem;
    UniForm31: TUniMenuItem;
    Show3: TUniMenuItem;
    Close3: TUniMenuItem;
    UniForm41: TUniMenuItem;
    Show4: TUniMenuItem;
    Close4: TUniMenuItem;
    UniForm51: TUniMenuItem;
    Show5: TUniMenuItem;
    Close5: TUniMenuItem;
    UniStatusBar1: TUniStatusBar;
    UniPanel1: TUniPanel;
    procedure UniFrameCreate(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Close2Click(Sender: TObject);
    procedure Close3Click(Sender: TObject);
    procedure Close4Click(Sender: TObject);
    procedure Close5Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure Show2Click(Sender: TObject);
    procedure Show3Click(Sender: TObject);
    procedure Show4Click(Sender: TObject);
    procedure Show5Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowForm(Form: TUniForm; MenuItem1, MenuItem2: TUniMenuItem);
    procedure CloseForm(Form: TUniFormClass; MenuItem1, MenuItem2: TUniMenuItem);
    procedure StatusText(Form: TUniFormClass; Status: Boolean);
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}


procedure TUniFormWithParentBorderFormWithParent.Close1Click(Sender: TObject);
begin
  CloseForm(TUnitBorder1Form, Show1, Close1);
  StatusText(TUnitBorder1Form, False);
end;

procedure TUniFormWithParentBorderFormWithParent.Close2Click(Sender: TObject);
begin
  CloseForm(TUnitBorder2Form, Show2, Close2);
  StatusText(TUnitBorder2Form, False);
end;

procedure TUniFormWithParentBorderFormWithParent.Close3Click(Sender: TObject);
begin
  CloseForm(TUnitBorder3Form, Show3, Close3);
  StatusText(TUnitBorder3Form, False);
end;

procedure TUniFormWithParentBorderFormWithParent.Close4Click(Sender: TObject);
begin
  CloseForm(TUnitBorder4Form, Show4, Close4);
  StatusText(TUnitBorder4Form, False);
end;

procedure TUniFormWithParentBorderFormWithParent.Close5Click(Sender: TObject);
begin
  CloseForm(TUnitBorder5Form, Show5, Close5);
  StatusText(TUnitBorder5Form, False);
end;

procedure TUniFormWithParentBorderFormWithParent.CloseForm(Form: TUniFormClass; MenuItem1, MenuItem2: TUniMenuItem);
var
  XForm : TComponent;
begin
  // We must first check to see if form is already created by framework.
  XForm := UniApplication.FormInstance(Form);
  if Assigned(XForm) then (XForm as TUniForm).Close;
  MenuItem1.Enabled := True;
  MenuItem2.Enabled := False;
end;

procedure TUniFormWithParentBorderFormWithParent.Show1Click(Sender: TObject);
begin
  ShowForm(UnitBorder1Form, Show1, Close1);
  StatusText(TUnitBorder1Form, True);
end;

procedure TUniFormWithParentBorderFormWithParent.Show2Click(Sender: TObject);
begin
  ShowForm(UnitBorder2Form, Show2, Close2);
  StatusText(TUnitBorder2Form, True);
end;

procedure TUniFormWithParentBorderFormWithParent.Show3Click(Sender: TObject);
begin
  ShowForm(UnitBorder3Form, Show3, Close3);
  StatusText(TUnitBorder3Form, True);
end;

procedure TUniFormWithParentBorderFormWithParent.Show4Click(Sender: TObject);
begin
  ShowForm(UnitBorder4Form, Show4, Close4);
  StatusText(TUnitBorder4Form, True);
end;

procedure TUniFormWithParentBorderFormWithParent.Show5Click(Sender: TObject);
begin
  ShowForm(UnitBorder5Form, Show5, Close5);
  StatusText(TUnitBorder5Form, True);
end;

procedure TUniFormWithParentBorderFormWithParent.ShowForm(Form: TUniForm; MenuItem1, MenuItem2: TUniMenuItem);
begin
  Form.Parent := UniPanel1;
  Form.Show;
  MenuItem1.Enabled := False;
  MenuItem2.Enabled := True;
end;

procedure TUniFormWithParentBorderFormWithParent.StatusText(Form: TUniFormClass; Status: Boolean);
var
  XForm : TComponent;
begin
  // We must first check to see if form is already created by framework.
  XForm := UniApplication.FormInstance(Form);
  if Assigned(XForm) then
  begin
    if Status then
      UniStatusBar1.Panels.Items[0].Text := XForm.Name + ' is opened! '
    else
      UniStatusBar1.Panels.Items[0].Text := XForm.Name + ' is closed! '
  end;
end;

procedure TUniFormWithParentBorderFormWithParent.UniFrameCreate(Sender: TObject);
begin
  UnitBorder1Form.Parent := UniPanel1;
  UnitBorder1Form.Show();

  UnitBorder2Form.Parent := UniPanel1;
  UnitBorder2Form.Show();

  UnitBorder3Form.Parent := UniPanel1;
  UnitBorder3Form.Show();

  UnitBorder4Form.Parent := UniPanel1;
  UnitBorder4Form.Show();

  UnitBorder5Form.Parent := UniPanel1;
  UnitBorder5Form.Show();
end;

initialization
  RegisterClass(TUniFormWithParentBorderFormWithParent);
end.

//AllFeatures: Forms,Form With Parent 4,icon-layout-form
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniStatusBar,
  Menus, uniMainMenu, Unit1, Unit2, Unit3, Unit4, Unit5;

type
  TMainForm = class(TUniForm)
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
    procedure UniFormBeforeShow(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure Show2Click(Sender: TObject);
    procedure Close2Click(Sender: TObject);
    procedure Show3Click(Sender: TObject);
    procedure Close3Click(Sender: TObject);
    procedure Show4Click(Sender: TObject);
    procedure Close4Click(Sender: TObject);
    procedure Show5Click(Sender: TObject);
    procedure Close5Click(Sender: TObject);
  private
    procedure ShowForm(Form: TUniForm; MenuItem1, MenuItem2: TUniMenuItem);
    procedure CloseForm(Form: TUniForm; MenuItem1, MenuItem2: TUniMenuItem);
    procedure StatusText(Form: TUniForm; Status: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.Close1Click(Sender: TObject);
begin
  CloseForm(UniForm1, Show1, Close1);
  StatusText(UniForm1, False);

end;

procedure TMainForm.Close2Click(Sender: TObject);
begin
  CloseForm(UniForm2, Show2, Close2);
  StatusText(UniForm2, False);
end;

procedure TMainForm.Close3Click(Sender: TObject);
begin
  CloseForm(UniForm3, Show3, Close3);
  StatusText(UniForm3, False);
end;

procedure TMainForm.Close4Click(Sender: TObject);
begin
  CloseForm(UniForm4, Show4, Close4);
  StatusText(UniForm4, False);
end;

procedure TMainForm.Close5Click(Sender: TObject);
begin
  CloseForm(UniForm5, Show5, Close5);
  StatusText(UniForm5, False);
end;

procedure TMainForm.CloseForm(Form: TUniForm; MenuItem1, MenuItem2: TUniMenuItem);
begin
  Form.Close;
  MenuItem1.Enabled := True;
  MenuItem2.Enabled := False;
end;

procedure TMainForm.Show1Click(Sender: TObject);
begin
  ShowForm(UniForm1, Show1, Close1);
  StatusText(UniForm1, True);
end;

procedure TMainForm.Show2Click(Sender: TObject);
begin
  ShowForm(UniForm2, Show2, Close2);
  StatusText(UniForm2, True);
end;

procedure TMainForm.Show3Click(Sender: TObject);
begin
  ShowForm(UniForm3, Show3, Close3);
  StatusText(UniForm3, True);
end;

procedure TMainForm.Show4Click(Sender: TObject);
begin
  ShowForm(UniForm4, Show4, Close4);
  StatusText(UniForm4, True);
end;

procedure TMainForm.Show5Click(Sender: TObject);
begin
  ShowForm(UniForm5, Show5, Close5);
  StatusText(UniForm5, True);
end;

procedure TMainForm.ShowForm(Form: TUniForm; MenuItem1, MenuItem2: TUniMenuItem);
begin
  Form.Parent := MainForm;
  Form.Show;
  MenuItem1.Enabled := False;
  MenuItem2.Enabled := True;
end;

procedure TMainForm.StatusText(Form: TUniForm; Status: Boolean);
begin
  if Status then
    UniStatusBar1.Panels.Items[0].Text := Form.Name + ' is opened! '
  else
    UniStatusBar1.Panels.Items[0].Text := Form.Name + ' is closed! '
end;

procedure TMainForm.UniFormBeforeShow(Sender: TObject);
begin
  UniForm1.Parent := MainForm;
  UniForm1.Show();

  UniForm2.Parent := MainForm;
  UniForm2.Show();

  UniForm3.Parent := MainForm;
  UniForm3.Show();

  UniForm4.Parent := MainForm;
  UniForm4.Show();

  UniForm5.Parent := MainForm;
  UniForm5.Show();
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

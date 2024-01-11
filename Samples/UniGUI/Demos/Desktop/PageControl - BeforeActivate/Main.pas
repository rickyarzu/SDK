//AllFeatures: Page Control,Before Activate,icon-framed-tabs
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniPanel, uniPageControl,
  uniGUIBaseClasses, uniCheckBox, uniLabel;

type
  TMainForm = class(TUniForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    UniCheckBox1: TUniCheckBox;
    UniLabel1: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure UniTabSheet2BeforeFirstActivate(Sender: TObject;
      var AllowActivate: Boolean);
    procedure UniTabSheet3BeforeActivate(Sender: TObject;
      var AllowActivate: Boolean);
    procedure UniCheckBox1Click(Sender: TObject);
    procedure UniTabSheet4BeforeFirstActivate(Sender: TObject;
      var AllowActivate: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1, Unit2;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniCheckBox1Click(Sender: TObject);
begin
  if UniCheckBox1.Checked then
    UniCheckBox1.Caption := 'TabSheet3 can be shown.'
  else
    UniCheckBox1.Caption := 'TabSheet3 can not be shown!';
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniPageControl1.ActivePage := UniTabSheet1;
end;

procedure TMainForm.UniTabSheet2BeforeFirstActivate(Sender: TObject;
  var AllowActivate: Boolean);
var
  F : TUniFrame1;
begin
  F := TUniFrame1.Create(Self);
  F.Parent := UniTabSheet2;
end;

procedure TMainForm.UniTabSheet3BeforeActivate(Sender: TObject;
  var AllowActivate: Boolean);
begin
  AllowActivate := UniCheckBox1.Checked;
  if not AllowActivate then
    ShowMessage('You can not see this TabSheet!');
end;

procedure TMainForm.UniTabSheet4BeforeFirstActivate(Sender: TObject;
  var AllowActivate: Boolean);
var
  F : TUniFrame2;
begin
  F := TUniFrame2.Create(Self);
  F.Parent := UniTabSheet4;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

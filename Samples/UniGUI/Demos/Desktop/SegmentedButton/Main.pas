unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniSegmentedButton, uniMemo, uniLabel;

type
  TMainForm = class(TUniForm)
    UniSegmentedButton1: TUniSegmentedButton;
    UniMemo1: TUniMemo;
    UniSegmentedButton2: TUniSegmentedButton;
    UniSegmentedButton3: TUniSegmentedButton;
    UniSegmentedButton4: TUniSegmentedButton;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure UniSegmentedButton1Click(Sender: TUniCustomButtonItem);
    procedure UniSegmentedButton2Pressed(Sender: TUniCustomButtonItem;
      Pressed: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, StrUtils;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniMemo1.Lines.Clear;
end;

procedure TMainForm.UniSegmentedButton1Click(Sender: TUniCustomButtonItem);
begin
  UniMemo1.Lines.Add(Sender.Caption);
end;

procedure TMainForm.UniSegmentedButton2Pressed(Sender: TUniCustomButtonItem;
  Pressed: Boolean);
begin
  UniMemo1.Lines.Add(Sender.Caption + ' -> ' + IfThen(Pressed, 'Down', 'Up'));
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

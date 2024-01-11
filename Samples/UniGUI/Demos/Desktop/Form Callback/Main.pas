//AllFeatures: Forms,Callback,icon-form-fieldui
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniMemo, uniGUIBaseClasses, uniButton;

type
  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniMemo1: TUniMemo;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowCallBack(Sender: TComponent; AResult:Integer);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniForm1.Show(ShowCallBack);
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniForm1.ShowModal(ShowCallBack);
end;

procedure TMainForm.ShowCallBack(Sender: TComponent; AResult:Integer);
begin
  UniMemo1.Lines.Add('Form: '+(Sender as TuniForm).Name+', Result: '+IntToStr(AResult));
end;

initialization
  RegisterMainFormClass(TMainForm);

end.

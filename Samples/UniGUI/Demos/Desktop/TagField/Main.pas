//AllFeatures: Tag Field,Basic Demo,icon-form-tag
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniMultiItem,
  uniListBox, uniMemo, uniButton;

type
  TMainForm = class(TUniForm)
    UniTagField1: TUniTagField;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    procedure UniTagField1Change(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
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

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniTagField1.Text := 'Orange';
end;

procedure TMainForm.UniTagField1Change(Sender: TObject);
begin
  UniMemo1.Lines.Add(UniTagField1.Text);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

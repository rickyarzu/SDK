unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniGUIClasses, uniGUIForm, uniGUIBaseClasses,
  uniButton, uniPanel, uniCustomControl5, uniMemo;

type
  TMainForm = class(TUniForm)
    UniRoundPanel1: TUniRoundPanel;
    UniButton1: TUniButton;
    UniMemo1: TUniMemo;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniRoundPanel1ChangeRadius(Sender: TComponent; NewRadius,
      OldRadius: Integer);
    procedure UniButton2Click(Sender: TObject);
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
  if UniRoundPanel1.Radius < UniRoundPanel1.Width then
    UniRoundPanel1.Radius := UniRoundPanel1.Radius + 5;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  if UniRoundPanel1.Radius >= 5 then
    UniRoundPanel1.Radius := UniRoundPanel1.Radius - 5;
end;

procedure TMainForm.UniRoundPanel1ChangeRadius(Sender: TComponent; NewRadius,
  OldRadius: Integer);
begin
  UniMemo1.Lines.Add(Format('%d  %d', [NewRadius, OldRadius]));
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

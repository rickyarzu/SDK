unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, unimButton, UniFSToast;

type
  TMainmForm = class(TUnimForm)
    Toast: TUniFSToast;
    btnSucess: TUnimButton;
    btnInfo: TUnimButton;
    btnQuestion: TUnimButton;
    btnCustom: TUnimButton;
    procedure btnSucessClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnQuestionClick(Sender: TObject);
    procedure btnCustomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.btnCustomClick(Sender: TObject);
begin
  Toast.Clear;
  Toast.Title := 'WhatsApp';
  Toast.Msg := 'Grupo do Unigui Brasil';
  Toast.IconText := 'shop'; //https://material.io/icons
  Toast.Theme := TToastTheme.Dark;
  Toast.Balloon := False;
  Toast.Layout := TToastLayout.Medium;
  Toast.Position := TToastPosition.topCenter;
  Toast.ProgressBarColor := 'RGB(80,139,255)';
  Toast.Image := '/image/marlon.jpg'; // or 'https://www.falconsistemas.com.br/assets/images/falcon_sistema_branco_100.fw.png';
  Toast.TimeOut := 10000;
  Toast.Overlay := True;
  Toast.Show;
end;

procedure TMainmForm.btnInfoClick(Sender: TObject);
begin
  Toast.Info('Hello','');
end;

procedure TMainmForm.btnQuestionClick(Sender: TObject);
begin
  Toast.Question('Mobile','Pergunta no Mobile', procedure(ButtonCallBack: Integer)
  begin
    if ButtonCallBack = mrYes then
      Self.Caption := 'CallBack YES';
    if ButtonCallBack = mrNo then
      Self.Caption := 'CallBack NO';
  end
  );
end;

procedure TMainmForm.btnSucessClick(Sender: TObject);
begin
  Toast.Success('Success','Toast powerd by Falcon');
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.

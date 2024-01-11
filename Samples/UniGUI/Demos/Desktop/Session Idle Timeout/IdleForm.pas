unit IdleForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniTimer, uniButton, uniLabel;

type
  TUniIdleForm = class(TUniForm)
    UniButton1: TUniButton;
    UniTimer1: TUniTimer;
    UniLabel1: TUniLabel;
    procedure UniTimer1Timer(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FCnt : Integer;
  end;

function UniIdleForm: TUniIdleForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniIdleForm: TUniIdleForm;
begin
  Result := TUniIdleForm(UniMainModule.GetFormInstance(TUniIdleForm));
end;

procedure TUniIdleForm.UniFormCreate(Sender: TObject);
begin
  FCnt := 6;
  UniTimer1Timer(nil);
end;

procedure TUniIdleForm.UniTimer1Timer(Sender: TObject);
begin
  if FCnt <= 0 then
  begin
    ModalResult := mrCancel;
    Exit;
  end;
  UniLabel1.Caption := 'Session will be terminated in <b>' +
                      IntToStr(FCnt * 5) + '</b> seconds.<br>' +
                      'Please press "Continue" to return to your session.';

  Dec(FCnt);
end;

end.

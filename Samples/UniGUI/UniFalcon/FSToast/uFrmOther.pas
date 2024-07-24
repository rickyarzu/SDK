unit uFrmOther;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, UniFSToast, uniButton, uniBitBtn;

type
  TfrmOther = class(TUniForm)
    Toast: TUniFSToast;
    btnToast: TUniBitBtn;
    procedure btnToastClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmOther: TfrmOther;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmOther: TfrmOther;
begin
  Result := TfrmOther(UniMainModule.GetFormInstance(TfrmOther));
end;

procedure TfrmOther.btnToastClick(Sender: TObject);
begin
  Toast.Question('Test','Test',procedure(ToastButton: Integer)
  begin
    if ToastButton = mrYes then
      Toast.Success('Yes','',TToastPosition.topCenter);
    if ToastButton = mrNo then
      Toast.Info('No','',TToastPosition.topCenter);
  end);
end;

end.

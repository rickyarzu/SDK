unit Janua.VCL.frmOverlayAnimation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmVCLOverlayAnimation = class(TForm)
    pbAnimation: TProgressBar;
    tmrAnimations: TTimer;
    procedure tmrAnimationsTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLOverlayAnimation: TfrmVCLOverlayAnimation;

implementation

{$R *.dfm}

procedure TfrmVCLOverlayAnimation.tmrAnimationsTimer(Sender: TObject);
begin
  if (pbAnimation.Position < 100) then
  begin
    pbAnimation.Position := pbAnimation.Position + 1;
    Application.ProcessMessages;
  end
  else
    pbAnimation.Position := 0;
end;

end.

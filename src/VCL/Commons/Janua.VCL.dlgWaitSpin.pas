unit Janua.VCL.dlgWaitSpin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, scGPControls, scControls, scModernControls;

type
  TdlgVCLWaitSpin = class(TForm)
    scActivityIndicator1: TscActivityIndicator;
    tmrTimer: TTimer;
    scGPProgressBar1: TscGPProgressBar;
    procedure FormShow(Sender: TObject);
    procedure tmrTimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVCLWaitSpin: TdlgVCLWaitSpin;

implementation

{$R *.dfm}

procedure TdlgVCLWaitSpin.FormShow(Sender: TObject);
begin
{$IFDEF DEBUG}
  scGPProgressBar1.MaxValue := 5;
{$ELSE}
  scGPProgressBar1.MaxValue := 10;
{$ENDIF}
  tmrTimer.Enabled := True;
  scActivityIndicator1.Active := True;
end;

procedure TdlgVCLWaitSpin.tmrTimerTimer(Sender: TObject);
begin
  if scGPProgressBar1.Value = scGPProgressBar1.MaxValue then
    Close
  else
    scGPProgressBar1.Value := scGPProgressBar1.Value + 1;
end;

end.

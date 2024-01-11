unit AniForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IKAnimation, IKTypes, StdCtrls, ComCtrls;

type
  TAnimatedForm = class(TForm)
    Button1: TButton;
    DurationLabel: TLabel;
    Duration: TTrackBar;
    procedure Button1Click(Sender: TObject);
    procedure DurationChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnimatedForm: TAnimatedForm;

implementation

{$R *.dfm}

procedure TAnimatedForm.Button1Click(Sender: TObject);
var
  A: TIKPropertyAnimation;
begin
  Button1.Enabled := False;

  A := TIKPropertyAnimation.Create(Self, 'ClientHeight', ClientHeight + 50);
  A.Duration := Duration.Position / 1000;
  A.Start;

  A := TIKPropertyAnimation.Create(Self, 'ClientHeight', ClientHeight,
    procedure
    begin
      Button1.Enabled := True;
    end);
  A.Duration := Duration.Position / 1000;
  A.Delay := Duration.Position / 1000;
  A.Start;
end;

procedure TAnimatedForm.DurationChange(Sender: TObject);
begin
  DurationLabel.Caption := 'Duration ' + IntToStr(Duration.Position) + 'ms:';
end;

end.

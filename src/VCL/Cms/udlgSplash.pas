unit udlgSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage, AdvCircularProgress, Vcl.StdCtrls;

type
  TFormSplast = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Timer1: TTimer;
    Label1: TLabel;
    AdvCircularProgress1: TAdvCircularProgress;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSplast: TFormSplast;

implementation

{$R *.dfm}

procedure TFormSplast.Timer1Timer(Sender: TObject);
begin
  self.AdvCircularProgress1.StepIt
end;

end.

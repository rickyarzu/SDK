unit ufrmCustomLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TMSCustomButton, FMX.TMSSpeedButton,
  FMX.TMSCustomEdit, FMX.TMSEdit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TfrmCustomLogin = class(TForm)
    TMSFMXEdit2: TTMSFMXEdit;
    TMSFMXSpeedButton1: TTMSFMXSpeedButton;
    TMSFMXSpeedButton2: TTMSFMXSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    edPassword: TTMSFMXEditBtn;
    Image1: TImage;
  private
    FPassword: string;
    FUserName: string;
    procedure SetPassword(const Value: string);
    procedure SetUserName(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property UserName: string read FUserName write SetUserName;
    property Password: string read FPassword write SetPassword;
  end;

  TClassCustomLogin = class of TfrmCustomLogin;

var
  frmCustomLogin: TfrmCustomLogin;

implementation

{$R *.fmx}
{ TfrmLogin }

procedure TfrmCustomLogin.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TfrmCustomLogin.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

end.

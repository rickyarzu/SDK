unit uFrmGoogleSign;

interface

uses
  UniFSGoogleSign,
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniImage, uniLabel, uniGUIBaseClasses, uniPanel,
  uniButton, uniBitBtn, UniFSButton, uniImageList;

type
  TfrmGoogleSign = class(TUniFrame)
    pnlInfo: TUniPanel;
    lblOK: TUniLabel;
    lblStatus: TUniLabel;
    lblNome: TUniLabel;
    lblEmail: TUniLabel;
    pnlLogin: TUniPanel;
    btnConnect: TUniFSButton;
    btnDisconnect: TUniFSButton;
    imgl24: TUniNativeImageList;
    imgl80: TUniNativeImageList;
    lblFoto: TUniLabel;
    procedure btnConnectClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Connect;
    procedure Disconnect;
  end;

implementation

{$R *.dfm}

{ TfrmGoogleSign }

procedure TfrmGoogleSign.btnConnectClick(Sender: TObject);
begin
  Connect;
end;

procedure TfrmGoogleSign.btnDisconnectClick(Sender: TObject);
begin
  Disconnect;
end;

procedure TfrmGoogleSign.Connect;
begin
  lblOK.Caption := '<i class="far fa-3x fa-check-circle"></i>';
  lblStatus.Caption := 'Conectado com sucesso!';
  lblOK.Font.Color := $0000D66A;
  lblStatus.Font.Color := $0000D66A;
end;

procedure TfrmGoogleSign.Disconnect;
var
  vCaminho: string;
begin
  lblOK.Caption := '<i class="fas fa-3x fa-exclamation-circle"></i>';
  lblStatus.Caption := 'Usuário desconectado.';
  lblOK.Font.Color := $004EADF0;
  lblStatus.Font.Color := $004EADF0;
  vCaminho := imgl80.GetImagePngUrl(1);
  vCaminho := 'https://lh3.googleusercontent.com/a-/AOh14Gjgr6aHnnYrmsJSgvGXsovLdPkxva7t2FrdxAq1WOU=s96-c';
  lblFoto.Caption := '<img style="cursor: pointer; max-height: 80px; border-radius:40px;" src="'+vCaminho+'" />';
end;

initialization
  RegisterClass(TfrmGoogleSign)

end.

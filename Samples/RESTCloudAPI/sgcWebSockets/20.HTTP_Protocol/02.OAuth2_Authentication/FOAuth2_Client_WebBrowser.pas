unit FOAuth2_Client_WebBrowser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw;

type
  TFRMOAuth2_Client_WebBrowser = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure OpenWebBrowser(const aURL: string);
  procedure CloseWebBrowser;


implementation

var
  oForm: TFRMOAuth2_Client_WebBrowser = nil;

{$R *.dfm}

  function GetForm: TFRMOAuth2_Client_WebBrowser;
  begin
    if not Assigned(oForm) then
      oForm := TFRMOAuth2_Client_WebBrowser.Create(nil);
    result := oForm;
  end;

  procedure OpenWebBrowser(const aURL: string);
  begin
    GetForm.WebBrowser1.Navigate(aURL);
    GetForm.Show;
  end;

  procedure CloseWebBrowser;
  begin
    GetForm.Close;
  end;

procedure TFRMOAuth2_Client_WebBrowser.FormCreate(Sender: TObject);
begin
  KeyPreview := True;
end;

procedure TFRMOAuth2_Client_WebBrowser.FormKeyPress(Sender: TObject; var Key:
    Char);
begin
  if Key = #13 then
  begin
    keybd_event(VK_LCONTROL, 0, 0, 0);
    keybd_event(Ord('M'), MapVirtualKey(Ord('M'), 0), 0, 0);
    keybd_event(Ord('M'), MapVirtualKey(Ord('M'), 0), KEYEVENTF_KEYUP, 0);
    keybd_event(VK_LCONTROL, 0, KEYEVENTF_KEYUP, 0);
  end
end;

initialization

finalization
  FreeAndNil(oForm);

end.

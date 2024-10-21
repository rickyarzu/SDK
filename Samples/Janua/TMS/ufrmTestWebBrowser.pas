unit ufrmTestWebBrowser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Janua.TMS.WebView, Vcl.ExtCtrls, uJanuaVCLFrame;

type
  TfrmJanuaVCLTestWebBrowser = class(TForm)
    JanuaVCLWebView1: TJanuaVCLWebView;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJanuaVCLTestWebBrowser: TfrmJanuaVCLTestWebBrowser;

implementation

{$R *.dfm}

procedure TfrmJanuaVCLTestWebBrowser.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TfrmJanuaVCLTestWebBrowser.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  JanuaVCLWebView1.Active := True;
  JanuaVCLWebView1.WebControlsPanel.Visible := False;
  JanuaVCLWebView1.Url := 'https://calendar.google.com/calendar';
end;

end.

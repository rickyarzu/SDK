unit Janua.Phoenix.VCL.dlgWhatsAppMessages;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, uframeWhatsAppMessage, Winapi.WebView2, Winapi.ActiveX, VCL.Edge;

type
  TdlgPhoenixVCLWhatsAppMessages = class(TForm)
    frameVCLWhatsAppMessages1: TframeVCLWhatsAppMessages;
    EdgeBrowser1: TEdgeBrowser;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frameVCLWhatsAppMessages1TMSFNCChat1SendButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgPhoenixVCLWhatsAppMessages: TdlgPhoenixVCLWhatsAppMessages;

implementation

{$R *.dfm}

procedure TdlgPhoenixVCLWhatsAppMessages.FormCreate(Sender: TObject);
begin
  frameVCLWhatsAppMessages1.Setup;
end;

procedure TdlgPhoenixVCLWhatsAppMessages.FormShow(Sender: TObject);
begin
  EdgeBrowser1.Navigate('https://calendar.google.com/calendar/u/0/r');
end;

procedure TdlgPhoenixVCLWhatsAppMessages.frameVCLWhatsAppMessages1TMSFNCChat1SendButtonClick(Sender: TObject);
begin
  // Test Debug click
  frameVCLWhatsAppMessages1.TMSFNCChat1SendButtonClick(Sender);

end;

end.

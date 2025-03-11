unit ufrmTestWhatsAppWeb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Winapi.WebView2, Winapi.ActiveX, Vcl.Edge,
  AdvMemo, AdvmWS;

type
  TfrmTestWhatsAppWeb = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    EdgeBrowser1: TEdgeBrowser;
    pnlWhatsAppSend: TPanel;
    btnSendMessage: TButton;
    edPhone: TEdit;
    Label1: TLabel;
    AdvMemo1: TAdvMemo;
    AdvJSMemoStyler1: TAdvJSMemoStyler;
    btnTesScritp: TButton;
    procedure btnSendMessageClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTesScritpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestWhatsAppWeb: TfrmTestWhatsAppWeb;

implementation

{$R *.dfm}

procedure TfrmTestWhatsAppWeb.btnSendMessageClick(Sender: TObject);
var
  JsCode: string;
begin
  // Aprire la chat del numero specificato
  EdgeBrowser1.Navigate('https://web.whatsapp.com/send?phone=+39' + edPhone.Text);

  // Attendere qualche secondo per il caricamento della pagina
  Sleep(10000); // Potrebbe essere necessario un tempo maggiore in base alla connessione

  var
  Testo := Memo1.Lines.Text;

  JsCode :=
    'var inputBox = document.querySelector("div[contenteditable=true] p.selectable-text.copyable-text");' + sLineBreak +
    'if (inputBox) {' + sLineBreak +
    '    inputBox.innerHTML = "' + Testo + '";' + sLineBreak +
    '    inputBox.dispatchEvent(new Event("input", { bubbles: true }));' + sLineBreak +
    '    setTimeout(function() {' + sLineBreak +
    '        var sendButton = document.querySelector("[data-testid=send]");' + sLineBreak +
    '        if (sendButton) sendButton.click();' + sLineBreak +
    '    }, 500);' + sLineBreak + // Attendere un attimo per assicurarsi che il testo sia riconosciuto
    '}';

  // Eseguire lo script nella pagina
  EdgeBrowser1.ExecuteScript(JsCode);

  self.AdvMemo1.Lines.Text := JsCode;

end;

procedure TfrmTestWhatsAppWeb.btnTesScritpClick(Sender: TObject);
begin
  var
  JsCode := AdvMemo1.Lines.Text;

  // Eseguire lo script nella pagina
  EdgeBrowser1.ExecuteScript(JsCode)
end;

procedure TfrmTestWhatsAppWeb.FormShow(Sender: TObject);
begin
  EdgeBrowser1.Navigate('https://web.whatsapp.com/');
end;

end.

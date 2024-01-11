unit udlgMailLoader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.Buttons, Vcl.ComCtrls, Janua.Core.Classes, Janua.Core.Mail, Janua.Core.System, AdvMemo, AdvmWS;

type
  TdlgMailLoader = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    PageControl6: TPageControl;
    TabSheet13: TTabSheet;
    Panel4: TPanel;
    TabSheet14: TTabSheet;
    Panel5: TPanel;
    SpeedButton5: TSpeedButton;
    lbMailFirstName: TLabel;
    lbMailLastName: TLabel;
    lbMailEmail: TLabel;
    SpeedButton1: TSpeedButton;
    WebBrowser1: TWebBrowser;
    OpenDialog1: TOpenDialog;
    SpeedButton2: TSpeedButton;
    AdvMemo1: TAdvMemo;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgMailLoader: TdlgMailLoader;

implementation

{$R *.dfm}

procedure TdlgMailLoader.SpeedButton2Click(Sender: TObject);
var
  // You may need to change this path to suit your environment.
  Path: String;
  myEncoding : TEncoding;
begin
  if OpenDialog1.Execute then
  begin
     // self.AdvMemo1.Lines.Encoding := myEncoding.UTF8;
     myEncoding := TEncoding.UTF8;
     self.AdvMemo1.Lines.LoadFromFile(self.OpenDialog1.FileName, myEncoding );
     self.Label1.Caption := self.AdvMemo1.Lines.Encoding.ToString;
  end;
end;

end.

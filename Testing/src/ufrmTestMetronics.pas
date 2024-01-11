unit ufrmTestMetronics;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw, AdvMemo, Janua.Core.Classes,
  Janua.Core.Servers, Janua.Core.Http, Janua.Core.Health, Janua.Postgres.Health, Janua.Vcl.OS, advmjson, AdvmWS,
  Vcl.StdCtrls, Janua.Core.Metronics, Janua.Core.System;

type
  TfrmTestMetronics = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    Json: TTabSheet;
    tabGraphicBuilder: TTabSheet;
    tabHtml: TTabSheet;
    Panel2: TPanel;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    Panel3: TPanel;
    Splitter2: TSplitter;
    TabSheet1: TTabSheet;
    WebBrowser1: TWebBrowser;
    memHtml: TAdvMemo;
    JanuaPgTemplateHealth1: TJanuaPgTemplateHealth;
    JanuaVCLOS1: TJanuaVCLOS;
    AdvMemo2: TAdvMemo;
    AdvJSMemoStyler1: TAdvJSMemoStyler;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    AdvWebMemoStyler1: TAdvWebMemoStyler;
    Button1: TButton;
    JanuaServerHealthBooking1: TJanuaServerHealthBooking;
    JanuaCoreLogger1: TJanuaCoreLogger;
    TabSheet2: TTabSheet;
    pgTemplateTester: TPageControl;
    tabPage: TTabSheet;
    tabHead: TTabSheet;
    tabHeader: TTabSheet;
    tabFooter: TTabSheet;
    AdvMemo1: TAdvMemo;
    AdvMemo3: TAdvMemo;
    AdvMemo4: TAdvMemo;
    AdvMemo5: TAdvMemo;
    tabScripts: TTabSheet;
    AdvMemo6: TAdvMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestMetronics: TfrmTestMetronics;

implementation

{$R *.dfm}

procedure TfrmTestMetronics.Button1Click(Sender: TObject);
begin
  memHtml.Lines.Text := Janua.Core.Metronics.TestForm
end;

end.

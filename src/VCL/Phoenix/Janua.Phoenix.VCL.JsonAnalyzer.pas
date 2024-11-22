unit Janua.Phoenix.VCL.JsonAnalyzer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.ActiveX, Vcl.Edge, Vcl.ExtCtrls, Vcl.StdCtrls,
  AdvMemo, advmjson, Winapi.WebView2, Vcl.ComCtrls;

type
  TfrmPhoenixVCLJsonAnalyzer = class(TForm)
    pnlTop: TPanel;
    OpenDialog1: TOpenDialog;
    btnLoadJson: TButton;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    AdvMemo1: TAdvMemo;
    EdgeBrowser2: TEdgeBrowser;
    procedure btnLoadJsonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPhoenixVCLJsonAnalyzer: TfrmPhoenixVCLJsonAnalyzer;

implementation

{$R *.dfm}

procedure TfrmPhoenixVCLJsonAnalyzer.btnLoadJsonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    self.AdvMemo1.Lines.LoadFromFile(OpenDialog1.FileName)
end;

end.

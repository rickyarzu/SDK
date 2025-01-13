unit Janua.VCL.HtmlPreviewDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, AdvGlowButton, AdvOfficePager, AdvMemo,
  VCL.OleCtrls,
  // ThirdParty
  SHDocVw,
  // Janua
  Janua.VCL.WebBrowser, Winapi.WebView2, Winapi.ActiveX, Vcl.Edge, AdvmWS;

type
  THtmlPreviewDialog = class(TForm)
    Panel1: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvMemo1: TAdvMemo;
    EdgeBrowser1: TEdgeBrowser;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
  private
    { Private declarations }
    aWrapper: Janua.VCL.WebBrowser.TWebBrowserWrapper;
    FHtmlText: string;
    procedure SetHtmlText(const Value: string);
  public
    { Public declarations }
    property HtmlText: string read FHtmlText write SetHtmlText;
  end;

var
  HtmlPreviewDialog: THtmlPreviewDialog;

implementation

{$R *.dfm}

procedure THtmlPreviewDialog.SetHtmlText(const Value: string);
begin
  FHtmlText := Value;
  AdvMemo1.Lines.Text := FHtmlText;
  EdgeBrowser1.NavigateToString(FHtmlText);
end;

end.

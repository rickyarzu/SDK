unit Janua.VCL.dlgMobilePreview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl, VCL.TMSFNCWebBrowser;

type
  TdlgVCLMobilePreview = class(TForm)
    brwTestMessage: TTMSFNCWebBrowser;
  private
    FHtmlText: string;
    FHtml: TStrings;
    FUrl: string;
    procedure SetHtml(const Value: TStrings);
    procedure SetHtmlText(const Value: string);
    procedure SetUrl(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    procedure LoadHtml(FileName: string);
    procedure NavigateToUrl(aUrl: string);
    procedure LoadFromStream(aStream: TStream);
    property HtmlText: string read FHtmlText write SetHtmlText;
    property Html: TStrings read FHtml write SetHtml;
    property Url: string read FUrl write SetUrl;
  end;

var
  dlgVCLMobilePreview: TdlgVCLMobilePreview;

implementation

{$R *.dfm}

{ TdlgVCLMobilePreview }

procedure TdlgVCLMobilePreview.LoadFromStream(aStream: TStream);
begin

end;

procedure TdlgVCLMobilePreview.LoadHtml(FileName: string);
begin

end;

procedure TdlgVCLMobilePreview.NavigateToUrl(aUrl: string);
begin
  FUrl := aUrl;
  brwTestMessage.Navigate(FUrl);
end;

procedure TdlgVCLMobilePreview.SetHtml(const Value: TStrings);
begin
  FHtml := Value;
end;

procedure TdlgVCLMobilePreview.SetHtmlText(const Value: string);
begin
  FHtmlText := Value;
end;

procedure TdlgVCLMobilePreview.SetUrl(const Value: string);
begin
  FUrl := Value;
  brwTestMessage.Navigate(FUrl);
end;

end.

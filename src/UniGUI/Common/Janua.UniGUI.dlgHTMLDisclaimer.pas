unit Janua.UniGUI.dlgHTMLDisclaimer;

interface

uses
  // RTL
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniHTMLFrame, uniGUIBaseClasses, uniPanel,
  uniButton, uniBitBtn, UniFSButton, uniScrollBox;

type
  TfrmUniGUIHtmlDisclaimer = class(TUniForm)
    pnlBottom: TUniPanel;
    btnOK: TUniFSButton;
    btnCancel: TUniFSButton;
    scbHtml: TUniScrollBox;
    htmlFrameText: TUniHTMLFrame;
  private
    procedure SetHtml(const Value: string);
    procedure SetLines(const Value: TStrings);
    function GetHtml: string;
    function GetLines: TStrings;
    { Private declarations }
  public
    { Public declarations }
    property Html: string read GetHtml write SetHtml;
    property Lines: TStrings read GetLines write SetLines;
  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}
{ TfrmUniGUIHtmlDisclaimer }

function TfrmUniGUIHtmlDisclaimer.GetHtml: string;
begin
  Result := htmlFrameText.Html.Text
end;

function TfrmUniGUIHtmlDisclaimer.GetLines: TStrings;
begin
  Result := htmlFrameText.Html
end;

procedure TfrmUniGUIHtmlDisclaimer.SetHtml(const Value: string);
begin
  htmlFrameText.Html.Text := Value;
end;

procedure TfrmUniGUIHtmlDisclaimer.SetLines(const Value: TStrings);
begin
  htmlFrameText.Html.Assign(Value);
end;

end.

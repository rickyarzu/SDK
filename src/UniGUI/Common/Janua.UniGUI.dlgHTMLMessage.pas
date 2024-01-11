unit Janua.UniGUI.dlgHTMLMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, uniGUITypes,
  uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniHTMLFrame, uniGUIBaseClasses, uniPanel, uniButton,
  uniBitBtn, UniFSButton,  uniScrollBox;

type
  TfrmUniGUIHtmlMessage = class(TUniForm)
    pnlBottom: TUniPanel;
    btnOK: TUniFSButton;
    btnCancel: TUniFSButton;
    htmlFrameText: TUniHTMLFrame;
    procedure UniFormCreate(Sender: TObject);
  private
    FHasCancel: boolean;
    procedure SetHtml(const Value: string);
    procedure SetLines(const Value: TStrings);
    function GetHtml: string;
    function GetLines: TStrings;
    procedure SetHasCancel(const Value: boolean);
    { Private declarations }
  public
    { Public declarations }
    property Html: string read GetHtml write SetHtml;
    property Lines: TStrings read GetLines write SetLines;
    property HasCancel: boolean read FHasCancel write SetHasCancel;
  end;

implementation

uses
  uniGUIApplication;

{$R *.dfm}
{ TfrmUniGUIHtmlDisclaimer }

function TfrmUniGUIHtmlMessage.GetHtml: string;
begin
  Result := htmlFrameText.Html.Text
end;

function TfrmUniGUIHtmlMessage.GetLines: TStrings;
begin
  Result := htmlFrameText.Html
end;

procedure TfrmUniGUIHtmlMessage.SetHasCancel(const Value: boolean);
begin
  FHasCancel := Value;
end;

procedure TfrmUniGUIHtmlMessage.SetHtml(const Value: string);
begin
  htmlFrameText.Html.Text := Value;
end;

procedure TfrmUniGUIHtmlMessage.SetLines(const Value: TStrings);
begin
  htmlFrameText.Html.Assign(Value);
end;

procedure TfrmUniGUIHtmlMessage.UniFormCreate(Sender: TObject);
begin
  FHasCancel := False;
end;

end.

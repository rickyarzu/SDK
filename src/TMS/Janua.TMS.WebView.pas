unit Janua.TMS.WebView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvCustomControl, AdvWebBrowser
  // Januaproject
    , Janua.Core.Types, uJanuaVCLFrame, Vcl.StdCtrls, System.ImageList, Vcl.ImgList, JvImageList;

type
  TJanuaTmsCookies = TJanuaArray<TAdvWebBrowserCookie>;

  TJanuaVCLWebView = class(TJanuaVCLFrameModel)
    AdvWebBrowser: TAdvWebBrowser;
    WebControlsPanel: TPanel;
    edUrl: TButtonedEdit;
    JvImageList1: TJvImageList;
    procedure AdvWebBrowserGetCookies(Sender: TObject; ACookies: array of TAdvWebBrowserCookie);
    procedure AdvWebBrowserInitialized(Sender: TObject);
    procedure AdvWebBrowserNavigateComplete(Sender: TObject;
      var Params: TAdvCustomWebBrowserNavigateCompleteParams);
    procedure edUrlRightButtonClick(Sender: TObject);
  private
    FCookies: TJanuaTmsCookies;
    FCookiesSet: Boolean;
    FJsonFile: string;
    FUrl: string;
    procedure SetUrl(const Value: string);
  protected
    function InternalActivate: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    property Url: string read FUrl write SetUrl;
  end;

  // procedure Register;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{
  procedure Register;
  begin
  RegisterComponents('Januaproject VCL Controls', [TJanuaVCLWebView]);
  end;
}

{ TJanuaVCLWebView }

procedure TJanuaVCLWebView.AdvWebBrowserGetCookies(Sender: TObject; ACookies: array of TAdvWebBrowserCookie);
  function UpdateCookie(aCookie: TAdvWebBrowserCookie): Boolean;
  begin
    Result := False;
    var
    J := 0;
    While not Result and (J < FCookies.Count) do
    begin
      if (FCookies[J].Name = aCookie.Name) and (FCookies[J].Domain = aCookie.Domain) and
        (FCookies[J].Path = aCookie.Path) then
      begin
        FCookies.Items[J] := aCookie;
        Result := True;
      end
      else
        Inc(J);
    end;
  end;

begin
  for var I := 0 to length(ACookies) - 1 do
    if not UpdateCookie(ACookies[I]) then
      FCookies.AddItem(ACookies[I]);

  if FCookies.Count > 0 then
  begin
    var
    lJson := FCookies.JsonSerialize;
    TJanuaCoreOS.SaveCookies(lJson);
  end;
end;

procedure TJanuaVCLWebView.AdvWebBrowserInitialized(Sender: TObject);
begin
  if Pos('http', AdvWebBrowser.Url) > 0 then
  begin
    FUrl := AdvWebBrowser.Url;
    edUrl.Text := AdvWebBrowser.Url;
  end;
end;

procedure TJanuaVCLWebView.AdvWebBrowserNavigateComplete(Sender: TObject;
  var Params: TAdvCustomWebBrowserNavigateCompleteParams);
begin
  AdvWebBrowser.GetCookies;
end;

constructor TJanuaVCLWebView.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FCookiesSet := False;
end;

procedure TJanuaVCLWebView.edUrlRightButtonClick(Sender: TObject);
begin
  Url := edUrl.Text
end;

function TJanuaVCLWebView.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := False;
        var
        lCookies := TJanuaCoreOS.LoadCookies;
        if lCookies <> '' then
          FCookies.JsonDeserialize(lCookies);
        Result := True
      end;
    except
      on e: exception do
        raise exception.Create('TJanuaVCLWebView.InternalActivate' + e.Message);
    end;
end;

procedure TJanuaVCLWebView.SetUrl(const Value: string);
begin
  if FUrl <> Value then
  begin
    FUrl := Value;
    if Active and (Pos('http', FUrl) > 0) then
    begin
      if not FCookiesSet then
      begin
        if FCookies.Count > 0 then
          for var I := 0 to FCookies.Count - 1 do
            AdvWebBrowser.AddCookie(FCookies[I]);
        FCookiesSet := True;
      end;
      edUrl.Text := FUrl;
      AdvWebBrowser.Navigate(FUrl);
    end;
  end;
end;

end.

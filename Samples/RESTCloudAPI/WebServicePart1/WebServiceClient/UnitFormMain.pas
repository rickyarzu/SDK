unit UnitFormMain;

{===============================================================================
 Demo Web Service Part 1

 For Blaise Pascal Magazine 2021
 https://www.blaisepascalmagazine.eu/

 Author: Danny Wind (https://dannywind.nl)
 License: Creative Commons CC-BY
===============================================================================}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls;

type
  TFormMain = class(TForm)
    NetHTTPClient: TNetHTTPClient;
    NetHTTPRequest: TNetHTTPRequest;
    EditURL: TEdit;
    ButtonGET: TButton;
    PanelTop: TPanel;
    MemoResponse: TMemo;
    procedure NetHTTPRequestRequestCompleted(const Sender: TObject;
      const AResponse: IHTTPResponse);
    procedure ButtonGETClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.ButtonGETClick(Sender: TObject);
begin
  NetHTTPRequest.MethodString := 'GET';
  NetHTTPRequest.URL := EditURL.Text;
  NetHTTPRequest.Execute();
end;

procedure TFormMain.NetHTTPRequestRequestCompleted(const Sender: TObject;
  const AResponse: IHTTPResponse);
begin
  MemoResponse.Text := AResponse.ContentAsString;
end;

end.

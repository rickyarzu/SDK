unit FSSEClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sgcHTTP, StdCtrls;

type
  TForm16 = class(TForm)
    btnGetSSE: TButton;
    btnCancel: TButton;
    txtURL: TEdit;
    Label3: TLabel;
    Log: TMemo;
    Label6: TLabel;
    procedure btnCancelClick(Sender: TObject);
    procedure btnGetSSEClick(Sender: TObject);
  private
    FCancel: Boolean;
    FHTTPClient: TsgcHTTP1Client;
    function GetHTTPClient: TsgcHTTP1Client;
    procedure OnSSEMessageEvent(Sender: TObject; const aMessage: string; var
        Cancel: Boolean);
  protected
    property HTTPClient: TsgcHTTP1Client read GetHTTPClient write FHTTPClient;
  public
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

procedure TForm16.btnCancelClick(Sender: TObject);
begin
  FCancel := True;
end;

procedure TForm16.btnGetSSEClick(Sender: TObject);
begin
  FCancel := False;
  Log.Lines.clear;

  HTTPClient.GetSSE(txtURL.Text);
end;

function TForm16.GetHTTPClient: TsgcHTTP1Client;
begin
  if not Assigned(FHTTPClient) then
  begin
    FHTTPClient := TsgcHTTP1Client.Create(self);
    FHTTPClient.OnSSEMessage := OnSSEMessageEvent;
  end;
  Result := FHTTPClient;
end;

procedure TForm16.OnSSEMessageEvent(Sender: TObject; const aMessage: string;
    var Cancel: Boolean);
begin
  Log.Lines.Add(aMessage);

  Application.ProcessMessages; // let form update controls

  Cancel := FCancel;
end;

end.

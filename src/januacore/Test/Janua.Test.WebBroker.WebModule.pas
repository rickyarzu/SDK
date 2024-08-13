unit Janua.Test.WebBroker.WebModule;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp;

type
  TTestWebModule = class(TWebModule)
    procedure WebModule2DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
    procedure WebModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FDefaultContent: string;
  public
    { Public declarations }
  end;

var
  TestWebModuleClass: TComponentClass = TTestWebModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TTestWebModule.WebModule2DefaultHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content := FDefaultContent
end;

procedure TTestWebModule.WebModuleCreate(Sender: TObject);
begin
  FDefaultContent := '<html>' + '<head><title>Web Server Application</title></head>' +
    '<body>Web Server Application</body>' + '</html>';
end;

end.

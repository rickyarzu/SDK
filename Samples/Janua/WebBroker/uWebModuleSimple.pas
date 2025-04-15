unit uWebModuleSimple;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp  ;

type
  TWebModule1 = class(TWebModule)
    procedure WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
    procedure WebModule1ParametriAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
begin
  Response.Content := '<html>' + '<head><title>Test Web Server</title></head>' + '<body>Ciao Mondo</body>' +
    '</html>';
end;

procedure TWebModule1.WebModule1ParametriAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
begin
  var
  vNome := Request.ContentFields.Values['nome'];
  var
  vTest := 'Cognome' + sLineBreak + 'Cognome';

  vNome := StringReplace(vNome, sLineBreak, '<br />', [rfReplaceAll]);

  Response.Content := '<html>' + '<head><title>Test Web Server</title></head>' + '<body>Ciao ' + vNome +
    '</body>' + '</html>';
end;

end.

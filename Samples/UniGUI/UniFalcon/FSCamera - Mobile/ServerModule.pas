unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, uniGUIClasses;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleCreate(Sender: TObject);
    procedure UniGUIServerModuleBeforeInit(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleBeforeInit(Sender: TObject);
begin
  with CustomMeta do
  begin
    Add('<meta name="Author" content="Marlon Nardi">');
    Add('<meta name="copyright" content="'+FormatDateTime('YYYY',Now)+' Falcon Sistemas">');
    Add('<meta name="keywords" content="FSCamera, Delphi, uniGUI, QrCode, BarCode, DataMatrix, Code_128, PDF_417">');
    Add('<meta name="description" content="FSCamera Componente de camera."/>');

    Add('<meta property="og:locale" content="pt_BR">');
    Add('<meta property="og:url" content="https://camera.falconsistemas.com.br/">');
    Add('<meta property="og:title" content="FSCamera - Falcon Sistemas">');
    Add('<meta property="og:site_name" content="Falcon Sistemas">');
    Add('<meta property="og:description" content="FSCamera Componente de camera.">');
    Add('<meta property="og:image" content="https://camera.falconsistemas.com.br/images/TUniFSQrCodeScanner.png">');
    Add('<meta property="og:image:type" content="image/png">');
    Add('<meta property="og:image:width" content="200">');
    Add('<meta property="og:image:height" content="200">');
  end;

  UniAddCSSLibrary('https://fonts.googleapis.com/css?family=Roboto', True, [upoFolderUni, upoPlatformBoth]);
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
begin
  {Em modo de desenvolvimento}
//  Self.ExtRoot := 'c:\unigui\[ext]\';
//  Self.UniRoot := 'c:\unigui\[uni]\';
//  Self.UniMobileRoot := 'c:\unigui\[unim]\';
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.

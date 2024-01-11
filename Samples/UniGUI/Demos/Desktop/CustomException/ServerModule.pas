unit ServerModule;

interface

uses
  SysUtils, UniGUIServer, UniGUIMainModule;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleException(Sender: TUniGUIMainModule;
      AException: Exception; var Handled: Boolean);
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
  UniGUIVars, MainModule;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleException(
  Sender: TUniGUIMainModule; AException: Exception; var Handled: Boolean);
begin
  if Assigned(Sender) then
  begin
    (sender as TUniMainModule).LogException(AException);
    Handled := True;
  end;
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.

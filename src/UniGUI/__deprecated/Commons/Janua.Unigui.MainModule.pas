unit Janua.Unigui.MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes;

type
  TJanuaUniMainModule = class(TUniGUIMainModule)
  private
    { Private declarations }
  public
    { Public declarations }

  end;

function JanuaUniMainModule: TJanuaUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, {ServerModule,} uniGUIApplication;

function JanuaUniMainModule: TJanuaUniMainModule;
begin
  Result := TJanuaUniMainModule(UniApplication.UniMainModule)
end;

initialization

{ RegisterMainModuleClass(TUniMainModule); }
end.

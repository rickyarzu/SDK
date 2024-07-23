unit uDmMensagens;

interface

uses
  SysUtils, Classes, UniFSiGrowl;

type
  TdmMensagens = class(TDataModule)
    FSiGrowlComp: TUniFSiGrowl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function dmMensagens: TdmMensagens;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function dmMensagens: TdmMensagens;
begin
  Result := TdmMensagens(UniMainModule.GetModuleInstance(TdmMensagens));
end;

initialization
  RegisterModuleClass(TdmMensagens);

end.

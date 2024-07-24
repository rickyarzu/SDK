unit uDmToast;

interface

uses
  SysUtils, Classes, uniGUIBaseClasses, uniGUIClasses, UniFSToast;

type
  TdmToast = class(TDataModule)
    Toast: TUniFSToast;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function dmToast: TdmToast;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function dmToast: TdmToast;
begin
  Result := TdmToast(UniMainModule.GetModuleInstance(TdmToast));
end;

initialization
  RegisterModuleClass(TdmToast);

end.

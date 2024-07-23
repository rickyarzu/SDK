unit uDmMsg;

interface

uses
  SysUtils, Classes, uniGUIBaseClasses, uniGUIClasses, UniFSToast;

type
  TdmMsg = class(TDataModule)
    Toast: TUniFSToast;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function dmMsg: TdmMsg;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function dmMsg: TdmMsg;
begin
  Result := TdmMsg(UniMainModule.GetModuleInstance(TdmMsg));
end;

initialization
  RegisterModuleClass(TdmMsg);

end.

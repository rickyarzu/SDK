unit uDmImagens;

interface

uses
  SysUtils, Classes, uniGUIBaseClasses, uniGUIClasses, uniImageList;

type
  TdmImagens = class(TDataModule)
    imglFA: TUniNativeImageList;
    imgl20: TUniNativeImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function dmImagens: TdmImagens;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function dmImagens: TdmImagens;
begin
  Result := TdmImagens(UniMainModule.GetModuleInstance(TdmImagens));
end;

initialization
  RegisterModuleClass(TdmImagens);

end.

unit Janua.VCL.MVVM.Framework;

interface

type
  TJanuaVCLMVVMFramework = class
    class procedure Initialize;
  end;

implementation

uses Janua.Application.Framework, Janua.VCL.dlgViewModelSearch, Janua.Search.ViewModels.Intf;

{ TJanuaVCLMVVMFramework }

class procedure TJanuaVCLMVVMFramework.Initialize;
begin
  TJanuaApplicationFactory.RegisterComponent(ISearchForm, TdlgViewModelSearch);
end;

end.

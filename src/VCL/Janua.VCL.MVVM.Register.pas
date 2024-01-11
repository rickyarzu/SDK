unit Janua.VCL.MVVM.Register;

interface

type
  TJanuaMVVMFramework = class
    class procedure Initialize;
  end;

implementation

uses Janua.Application.Framework, udlgViewModelSearch, Janua.Search.ViewModels.Intf;

{ TJanuaMVVMFramework }

class procedure TJanuaMVVMFramework.Initialize;
begin
  TJanuaApplicationFactory.RegisterComponent(ISearchForm, TdlgViewModelSearch);
end;

end.

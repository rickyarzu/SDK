unit Janua.ViewModels.Factory;

interface

uses
  System.SysUtils,
  // Janua Framework
  Janua.Models.Templates, Janua.Core.Types,
  // inferface
  Janua.Anagraph.ViewModel.intf;

type
  TJanuaViewModelsFactory = class
  private
    class var FAnagraphDataModuleClass: TJanuaDataModuleTemplateClass;
  public
    class function GetAnagraphDataModule(const aValues: TValueArray): IJanuaAnagraphDataModule;

  end;

implementation

uses Janua.Application.Framework;

{ TJanuaViewModelsFactory }

class function TJanuaViewModelsFactory.GetAnagraphDataModule(const aValues: TValueArray)
  : IJanuaAnagraphDataModule;
begin
  if not Assigned(FAnagraphDataModuleClass) then
  begin

  end;

  if not supports(FAnagraphDataModuleClass.Create, IJanuaAnagraphDataModule, Result) then
    raise Exception.Create('IJanuaAnagraphDataModule Interface not supported');
end;

end.

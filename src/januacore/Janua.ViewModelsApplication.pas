unit Janua.ViewModelsApplication;

interface

uses Janua.ViewModels.Settings.Intf, Janua.Search.ViewModels.Impl,
  // Spring
  Spring.Collections,
  // Januaproject Core Framework
  Janua.Core.Classes.Intf, Janua.Application.Intf, Janua.Core.Types, Janua.Bindings.Intf;

type
  TJanuaCoreViewModelFramework = class
  private
    class var FInitialized: Boolean;
  public
    class procedure Initialize;
    class Constructor Create;
  end;

type
  TJanuaViewModelApplication = class
  private
    class var FSettings: IJanuaViewModelSettings;
  private
    // Model Search Basket
    class var SearchModelClasses: IDictionary<TGUID, TSearchModelClass>;
    class function GetSearchModelClasses: IDictionary<TGUID, TSearchModelClass>;
    // View Model Search Basket
    class var SearchViewModelClasses: IDictionary<TGUID, TSearchViewModelClass>;
    class function GetSearchViewModelClasses: IDictionary<TGUID, TSearchViewModelClass>;
  public
    // Model Search Basket
    class procedure RegisterSearchModelClass(const aGUID: TGUID; aClass: TSearchModelClass);
    class function GetSerchModelObject(const aGUID: TGUID; const GId: Integer;
      out aObject: TSearchModel): Boolean;
    class function TryGetSearchModel(const IID: TGUID; const GId: Integer; out Intf): Boolean;
    // View Model Search Basket
    class procedure RegisterSearchViewModelClass(const aGUID: TGUID; aClass: TSearchViewModelClass);
    class function GetSerchViewModelObject(const aGUID: TGUID; const GId: Integer;
      out aObject: TSearchViewModel): Boolean;
    class function TryGetSearchViewModel(const IID: TGUID; const GId: Integer; out Intf): Boolean;
  protected
    class function GetSettings: IJanuaViewModelSettings; static;
    class procedure SetSettings(const Value: IJanuaViewModelSettings); static;
  public
    class Procedure Initialize;
  public
    class property Settings: IJanuaViewModelSettings read GetSettings write SetSettings;
  end;

implementation

uses
  System.Classes, System.SysUtils,

  Janua.Application.Framework, Janua.ViewModels.Settings.Impl,
  // Anagraph
  Janua.Anagraph.ViewModel.Intf, Janua.Anagraph.Model.Impl, Janua.Anagraph.ViewModel.Impl,
  // Documents
  Janua.Documents.ViewModel.Intf, Janua.Documents.Model.Impl, Janua.Documents.ViewModel.Impl,
  // Test Framework
  Janua.Test.Model.Impl, Janua.Test.ViewModel.Impl, Janua.Test.ViewModel.Intf;

{ TJanuaCoreViewModelFramework }

class constructor TJanuaCoreViewModelFramework.Create;
begin
  FInitialized := False;
end;

class procedure TJanuaCoreViewModelFramework.Initialize;
begin
  if not FInitialized then
  begin
    // ------------------ Models ------------------------------------------------------------------------
    TJanuaApplicationFactory.RegisterClass(IJanuaDBAnagraphModel, TJanuaDBAnagraphModel);
    // TAnagraphViewModel = class(TJanuaViewModelMDTemplate, IJanuaDBAnagraphViewModel, IJanuaDBViewModel)
    TJanuaApplicationFactory.RegisterClass(IJanuaDBAnagraphViewModel, TAnagraphViewModel);

    TJanuaApplicationFactory.RegisterClass(IJanuaDBDocumentsModel, TJanuaDBDocumentsModel);
    // TAnagraphViewModel = class(TJanuaViewModelMDTemplate, IJanuaDBAnagraphViewModel, IJanuaDBViewModel)
    TJanuaApplicationFactory.RegisterClass(IJanuaDBDocumentsViewModel, TJanuaDBDocumentsViewModel);

    // TJanuaDBTestModel = class(TJanuaModelDBTemplate, IJanuaDBTestModel, IJanuaDBModel, IJanuaModel)
    TJanuaApplicationFactory.RegisterClass(IJanuaDBTestModel, TJanuaDBTestModel);
    // TTestViewModel = class(TJanuaViewModelMDTemplate, IJanuaTestViewModel, IJanuaDBViewModel)
    TJanuaApplicationFactory.RegisterClass(IJanuaTestViewModel, TTestViewModel);

    // ------------------- Search Models ----------------------------------------------------------------

    TJanuaViewModelApplication.RegisterSearchViewModelClass(TJanuaSearchAnagraphViewModel);

  end;

  FInitialized := True;
end;

class function TJanuaViewModelApplication.GetSearchModelClasses: IDictionary<TGUID, TSearchModelClass>;
begin
  try
    if not Assigned(SearchModelClasses) then
      SearchModelClasses := TCollections.CreateDictionary<TGUID, TSearchModelClass>;
    // if not Assigned(SearchModelClasses) then
    // raise Exception.Create('TJanuaApplicationFactory.GetObjClasses not Assigned(GetObjClasses) ');
    Result := SearchModelClasses;
  except
    on e: Exception do
      raise Exception.Create('TJanuaApplicationFactory.GetObjClasses ' + e.Message);
  end;
end;

class function TJanuaViewModelApplication.GetSearchViewModelClasses
  : IDictionary<TGUID, TSearchViewModelClass>;
begin
  try
    if not Assigned(SearchViewModelClasses) then
      SearchViewModelClasses := TCollections.CreateDictionary<TGUID, TSearchViewModelClass>;
    // if not Assigned(SearchViewModelClasses) then
    // raise Exception.Create('TJanuaApplicationFactory.GetObjClasses not Assigned(GetObjClasses) ');
    Result := SearchViewModelClasses;
  except
    on e: Exception do
      raise Exception.Create('TJanuaApplicationFactory.GetObjClasses ' + e.Message);
  end;
end;

class function TJanuaViewModelApplication.GetSerchModelObject(const aGUID: TGUID; const GId: Integer;
  out aObject: TSearchModel): Boolean;
var
  lClass: TSearchModelClass;
begin
  Result := GetSearchModelClasses.TryGetValue(aGUID, lClass);
  if Result then
    aObject := lClass.Create(GId);
end;

class function TJanuaViewModelApplication.GetSerchViewModelObject(const aGUID: TGUID; const GId: Integer;
  out aObject: TSearchViewModel): Boolean;
var
  lClass: TSearchViewModelClass;
begin
  Result := GetSearchViewModelClasses.TryGetValue(aGUID, GId, lClass);
  if Result then
    aObject := lClass.Create(GId);
end;

class function TJanuaViewModelApplication.GetSettings: IJanuaViewModelSettings;
begin
  Result := FSettings;
end;

class procedure TJanuaViewModelApplication.Initialize;
begin
  FSettings := TJanuaViewModelSettings.Create;
  FSettings.Initialize;
end;

class procedure TJanuaViewModelApplication.RegisterSearchModelClass(const aGUID: TGUID;
  aClass: TSearchModelClass);
begin
  try
    // LObjClasses := GetObjClasses;
    // if not Assigned(LObjClasses) then
    // raise Exception.Create('RegisterClass not Assigned(GetObjClasses) ');
    if Supports(aClass, aGUID) then
    begin
      if not GetSearchModelClasses.ContainsKey(aGUID) then
        GetSearchModelClasses.Add(aGUID, aClass)
      else
        GetSearchModelClasses.AddOrSetValue(aGUID, aClass)
    end
    else
      raise Exception.Create('TJanuaViewModelApplication.RegisterSearchModelClass  ' + aClass.ClassName +
        ' does not support ' + GUIDToString(aGUID));
    // GetObjClasses.Add(aGUID, aClass);
    // 202000720 Replaced Add with Add Or Set Value using a Cascade updating Rule
  except
    on e: Exception do
      raise Exception.Create('TJanuaApplicationFactory.RegisterClass ' + e.Message);
  end;
end;

class procedure TJanuaViewModelApplication.RegisterSearchViewModelClass(const aGUID: TGUID;
  aClass: TSearchViewModelClass);
begin
  try
    // LObjClasses := GetObjClasses;
    // if not Assigned(LObjClasses) then
    // raise Exception.Create('RegisterClass not Assigned(GetObjClasses) ');
    if Supports(aClass, aGUID) then
    begin
      if not GetSearchViewModelClasses.ContainsKey(aGUID) then
        GetSearchViewModelClasses.Add(aGUID, aClass)
      else
        GetSearchViewModelClasses.AddOrSetValue(aGUID, aClass)
    end
    else
      raise Exception.Create('TJanuaViewModelApplication.RegisterSearchModelClass  ' + aClass.ClassName +
        ' does not support ' + GUIDToString(aGUID));
    // GetObjClasses.Add(aGUID, aClass);
    // 202000720 Replaced Add with Add Or Set Value using a Cascade updating Rule
  except
    on e: Exception do
      raise Exception.Create('TJanuaApplicationFactory.RegisterClass ' + e.Message);
  end;
end;

class procedure TJanuaViewModelApplication.SetSettings(const Value: IJanuaViewModelSettings);
begin
  FSettings := Value;
end;

class function TJanuaViewModelApplication.TryGetSearchModel(const IID: TGUID; const GId: Integer;
  out Intf): Boolean;
var
  lObject: TSearchModel;
begin
  // GetSerchModelObject(const aGUID: TGUID; const GId: Integer; out aObject: TSearchModel)
  Result := GetSerchModelObject(IID, GId, lObject);
  if Result then
    Result := Supports(lObject, IID, Intf);
end;

class function TJanuaViewModelApplication.TryGetSearchViewModel(const IID: TGUID; const GId: Integer;
  out Intf): Boolean;
var
  lObject: TSearchViewModel;
begin
  // GetSerchModelObject(const aGUID: TGUID; const GId: Integer; out aObject: TSearchModel)
  Result := GetSerchViewModelObject(IID, GId, lObject);
  if Result then
    Result := Supports(lObject, IID, Intf);

end;

initialization

TJanuaCoreViewModelFramework.Initialize;

end.

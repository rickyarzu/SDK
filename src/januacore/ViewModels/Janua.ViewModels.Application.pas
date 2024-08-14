unit Janua.ViewModels.Application;

interface

uses Janua.ViewModels.Settings.Intf, Janua.Search.ViewModels.Impl, Janua.Search.ViewModels.Intf,
  // Spring
  Spring.Collections,
  // View Model Classes Templates
  Janua.ViewModels.Templates, Janua.Models.Templates,
  // Januaproject Core Framework
  Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Application.Intf, Janua.Core.Types, Janua.Bindings.Intf;

type
  TJanuaViewModelApplication = class
  private
    class var FSearchViewModels: IDictionary<string, ISearchViewModel>;
    class var FViewModels: IDictionary<string, TJanuaViewModelDataTemplate>;
    class var FSettings: IJanuaViewModelSettings;
  private
    // Model Search Basket
    class var SearchModelClasses: IDictionary<TGUID, TSearchModelClass>;
    class function GetSearchModelClasses: IDictionary<TGUID, TSearchModelClass>;
    // View Model Search Basket
    class var FSearchViewModelClasses: IDictionary<TGUID, TSearchViewModelClass>;
    class function GetSearchViewModelClasses: IDictionary<TGUID, TSearchViewModelClass>;
    // View Model Lookup Basket
    class var LookupModelClasses: IDictionary<TGUID, TLookupModelClass>;
    class function GetLookupModelClasses: IDictionary<TGUID, TLookupModelClass>;
    // View Model Basket
    class var FViewModelClasses: IDictionary<TGUID, TViewModelClass>;
    class function GetViewModelClasses: IDictionary<TGUID, TViewModelClass>;
  public
    // Lookup Search Basket
    class procedure RegisterLookupModelClass(const aGUID: TGUID; aClass: TLookupModelClass);
    class function GetLookupModelObject(const aGUID: TGUID; const GId: Integer;
      out aObject: TLookupModel): Boolean;
    class function TryGetLookupModel(const IID: TGUID; const GId: Integer; out Intf): Boolean;
    // Model Search Basket
    class procedure RegisterSearchModelClass(const aGUID: TGUID; aClass: TSearchModelClass);
    class function GetSearchModelObject(const aGUID: TGUID; const GId: Integer; out aObject: TSearchModel;
      const aDataset: IJanuaDBDataset = nil): Boolean;
    class function TryGetSearchModel(const IID: TGUID; const GId: Integer; out Intf;
      const aDataset: IJanuaDBDataset = nil): Boolean;
    procedure GetSearchModel(const IID: TGUID; const GId: Integer; out Intf;
      const aDataset: IJanuaDBDataset = nil);
    // View Model Search Basket
    class procedure RegisterSearchViewModelClass(const aGUID: TGUID; aClass: TSearchViewModelClass);
    class function GetSerchViewModelObject(const aGUID: TGUID; const GId: Integer;
      out aObject: TSearchViewModel; const aDataset: IJanuaDBDataset = nil): Boolean;
    class function TryGetSearchViewModel(const IID: TGUID; const GId: Integer; out Intf;
      const aDataset: IJanuaDBDataset = nil): Boolean;
    class procedure GetSearchViewModel(const IID: TGUID; const GId: Integer; out Intf;
      const aDataset: IJanuaDBDataset = nil);
    // View Models Basket
    class procedure RegisterViewModelClass(const aGUID: TGUID; aClass: TViewModelClass);
    class function GetViewModelObject(const aGUID: TGUID; const GId: Integer;
      out aObject: TJanuaViewModelDataTemplate): Boolean;
    class function TryGetCachedViewModel(const IID: TGUID; const aGroupID: Integer; out Intf): Boolean;
  protected
    class function GetSettings: IJanuaViewModelSettings; static;
    class procedure SetSettings(const Value: IJanuaViewModelSettings); static;
  private
    class var FIsTerminating: Boolean;
    class function GetIsTerminating: Boolean;
  public
    class Procedure Initialize;
    class constructor Create;
    class destructor Destroy;
    class Procedure Terminate;
  public
    /// <summary> This Interface is the ViewModel for Global Application Settings </summary>
    class property Settings: IJanuaViewModelSettings read GetSettings write SetSettings;
  end;

implementation

uses
  System.Classes, System.SysUtils, System.SyncObjs, Janua.Application.Framework,
  Janua.ViewModels.Settings.Impl;

var
  FLock: TCriticalSection;

class constructor TJanuaViewModelApplication.Create;
begin
  try
    FLock := TCriticalSection.Create;
  except
    on e: exception do
      raise exception.Create('TJanuaViewModelApplication.Create ' + e.Message);
  end;
end;

procedure TJanuaViewModelApplication.GetSearchModel(const IID: TGUID; const GId: Integer; out Intf;
  const aDataset: IJanuaDBDataset);
begin

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
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.GetObjClasses ' + e.Message);
  end;
end;

class procedure TJanuaViewModelApplication.GetSearchViewModel(const IID: TGUID; const GId: Integer; out Intf;
  const aDataset: IJanuaDBDataset);
var
  lIntfName: string;
begin
  lIntfName := GetInterfaceName(IID);
  if not TryGetSearchViewModel(IID, GId, Intf, aDataset) then
    raise exception.Create('GetSearchViewModel Intf not registered: ' + lIntfName);
end;

class function TJanuaViewModelApplication.GetSearchViewModelClasses
  : IDictionary<TGUID, TSearchViewModelClass>;
begin
  try
    if not Assigned(FSearchViewModelClasses) then
      FSearchViewModelClasses := TCollections.CreateDictionary<TGUID, TSearchViewModelClass>;
    Result := FSearchViewModelClasses;
  except
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.GetObjClasses ' + e.Message);
  end;
end;

class function TJanuaViewModelApplication.GetSearchModelObject(const aGUID: TGUID; const GId: Integer;
  out aObject: TSearchModel; const aDataset: IJanuaDBDataset): Boolean;
var
  lClass: TSearchModelClass;
begin
  Result := GetSearchModelClasses.TryGetValue(aGUID, lClass);
  if Result then
    if Assigned(aDataset) then
      aObject := lClass.Create(aDataset)
    else
      aObject := lClass.Create(GId);
end;

class destructor TJanuaViewModelApplication.Destroy;
begin
  FSettings := nil;
  LookupModelClasses := nil;
  SearchModelClasses := nil;
  FSearchViewModelClasses := nil;
  if Assigned(FLock) then
    FLock.Free;
  FLock := nil;
end;

class function TJanuaViewModelApplication.GetIsTerminating: Boolean;
begin
  Result := FIsTerminating
end;

class function TJanuaViewModelApplication.GetLookupModelClasses: IDictionary<TGUID, TLookupModelClass>;
begin
  try
    if not Assigned(LookupModelClasses) then
      LookupModelClasses := TCollections.CreateDictionary<TGUID, TLookupModelClass>;
    Result := LookupModelClasses;
  except
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.GetObjClasses ' + e.Message);
  end;
end;

class function TJanuaViewModelApplication.GetLookupModelObject(const aGUID: TGUID; const GId: Integer;
  out aObject: TLookupModel): Boolean;
var
  lClass: TLookupModelClass;
begin
  Result := GetLookupModelClasses.TryGetValue(aGUID, lClass);
  if Result then
    aObject := lClass.Create(GId);
end;

class function TJanuaViewModelApplication.GetSerchViewModelObject(const aGUID: TGUID; const GId: Integer;
  out aObject: TSearchViewModel; const aDataset: IJanuaDBDataset): Boolean;
var
  lClass: TSearchViewModelClass;
  lIntfName: string;
begin
  lIntfName := GetInterfaceName(aGUID);
  lClass := nil;
  Result := GetSearchViewModelClasses.TryGetValue(aGUID, lClass);
  if Result then
    if Assigned(aDataset) then
      aObject := lClass.Create(aDataset)
    else
      aObject := lClass.Create(GId);
end;

class function TJanuaViewModelApplication.GetSettings: IJanuaViewModelSettings;
begin
  Result := FSettings;
end;

class function TJanuaViewModelApplication.GetViewModelClasses: IDictionary<TGUID, TViewModelClass>;
begin
  try
    if not Assigned(FViewModelClasses) then
      FViewModelClasses := TCollections.CreateDictionary<TGUID, TViewModelClass>;
    Result := FViewModelClasses;
  except
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.GetViewModelClasses ' + e.Message);
  end;
end;

class function TJanuaViewModelApplication.GetViewModelObject(const aGUID: TGUID; const GId: Integer;
  out aObject: TJanuaViewModelDataTemplate): Boolean;
var
  lClass: TViewModelClass;
begin
  Result := GetViewModelClasses.TryGetValue(aGUID, lClass);
  if Result then
    aObject := lClass.CreateWithGroupID(GId);
end;

class procedure TJanuaViewModelApplication.Initialize;
begin
  if not Assigned(FSettings) then
    FSettings := TJanuaViewModelSettings.Create;
end;

class procedure TJanuaViewModelApplication.RegisterLookupModelClass(const aGUID: TGUID;
  aClass: TLookupModelClass);
begin
  try
    // LObjClasses := GetObjClasses;
    // if not Assigned(LObjClasses) then
    // raise Exception.Create('RegisterClass not Assigned(GetObjClasses) ');
    if Supports(aClass, aGUID) then
    begin
      if not GetLookupModelClasses.ContainsKey(aGUID) then
        GetLookupModelClasses.Add(aGUID, aClass)
      else
        GetLookupModelClasses[aGUID] := aClass; // .AddOrSetValue(aGUID, aClass)
    end
    else
      raise exception.Create(aClass.ClassName + ' does not support ' + GUIDToString(aGUID));
    // GetObjClasses.Add(aGUID, aClass);
    // 202000720 Replaced Add with Add Or Set Value using a Cascade updating Rule
  except
    on e: exception do
      RaiseException('TJanuaViewModelApplication.RegisterLookupModelClass', e);
    // raise Exception.Create('TJanuaApplicationFactory.RegisterClass ' + e.Message);
  end;
end;

class procedure TJanuaViewModelApplication.RegisterSearchModelClass(const aGUID: TGUID;
  aClass: TSearchModelClass);
begin
  try
    if Supports(aClass, aGUID) then
    begin
      if not GetSearchModelClasses.ContainsKey(aGUID) then
        GetSearchModelClasses.Add(aGUID, aClass)
      else
        GetSearchModelClasses[aGUID] := aClass; // .AddOrSetValue(aGUID, aClass)
    end
    else
      raise exception.Create(aClass.ClassName + ' does not support ' + GetInterfaceName(aGUID));
    // GetObjClasses.Add(aGUID, aClass);
    // 202000720 Replaced Add with Add Or Set Value using a Cascade updating Rule
  except
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.RegisterClass ' + GetInterfaceName(aGUID) + e.Message);
  end;
end;

class procedure TJanuaViewModelApplication.RegisterSearchViewModelClass(const aGUID: TGUID;
  aClass: TSearchViewModelClass);
var
  lIntfName: string;
begin
  try
    lIntfName := GetInterfaceName(aGUID);
    if Supports(aClass, aGUID) then
    begin
      if not GetSearchViewModelClasses.ContainsKey(aGUID) then
        GetSearchViewModelClasses.Add(aGUID, aClass)
      else
        GetSearchViewModelClasses[aGUID] := aClass; // .AddOrSetValue(aGUID, aClass)
    end
    else
      raise exception.Create('TJanuaViewModelApplication.RegisterSearchModelClass  ' + aClass.ClassName +
        ' does not support ' + lIntfName);
  except
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.RegisterClass ' + e.Message);
  end;
end;

class procedure TJanuaViewModelApplication.RegisterViewModelClass(const aGUID: TGUID;
  aClass: TViewModelClass);
begin
  try
    if Supports(aClass, aGUID) then
    begin
      if not GetViewModelClasses.ContainsKey(aGUID) then
        GetViewModelClasses.Add(aGUID, aClass)
      else
        GetViewModelClasses[aGUID] := aClass; // .AddOrSetValue(aGUID, aClass)
    end
    else
      raise exception.Create(aClass.ClassName + ' does not support ' + GetInterfaceName(aGUID));
  except
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.RegisterViewModelClass ' + e.Message);
  end;

end;

class procedure TJanuaViewModelApplication.SetSettings(const Value: IJanuaViewModelSettings);
begin
  FSettings := Value;
end;

class procedure TJanuaViewModelApplication.Terminate;
begin
  FIsTerminating := True;
  FSettings := nil;
end;

class function TJanuaViewModelApplication.TryGetCachedViewModel(const IID: TGUID; const aGroupID: Integer;
  out Intf): Boolean;
var
  lObject: TJanuaViewModelDataTemplate;
  lFound: Boolean;
  lSearchString: string;
begin
  FLock.Acquire;
  try
    lSearchString := IID.ToString + aGroupID.ToHexString;
    Result := False;
    if not Assigned(FViewModels) then
      FViewModels := TCollections.CreateDictionary<string, TJanuaViewModelDataTemplate>;

    lFound := FViewModels.TryGetValue(lSearchString, lObject);

    if not lFound then
    begin
      Result := GetViewModelObject(IID, aGroupID, lObject);
    end;

    if Result or lFound then
      Result := Supports(lObject, IID, Intf);

    if Result and not lFound then
      FViewModels.Add(lSearchString, lObject);
  finally
    FLock.Release;
  end;

end;

class function TJanuaViewModelApplication.TryGetLookupModel(const IID: TGUID; const GId: Integer;
  out Intf): Boolean;
var
  lObject: TLookupModel;
begin
  // GetSerchModelObject(const aGUID: TGUID; const GId: Integer; out aObject: TSearchModel)
  Result := GetLookupModelObject(IID, GId, lObject);
  if Result then
    Result := Supports(lObject, IID, Intf);
end;

class function TJanuaViewModelApplication.TryGetSearchModel(const IID: TGUID; const GId: Integer; out Intf;
  const aDataset: IJanuaDBDataset): Boolean;
var
  lObject: TSearchModel;
begin
  // GetSerchModelObject(const aGUID: TGUID; const GId: Integer; out aObject: TSearchModel)
  Result := GetSearchModelObject(IID, GId, lObject, aDataset);
  if Result then
    Result := Supports(lObject, IID, Intf);
end;

class function TJanuaViewModelApplication.TryGetSearchViewModel(const IID: TGUID; const GId: Integer;
  out Intf; const aDataset: IJanuaDBDataset): Boolean;
var
  lObject: TSearchViewModel;
  lIntf: ISearchViewModel;
  lFound: Boolean;
  lSearchString: string;
  lIntfName: string;
  lClassName: string;
begin
  lIntfName := GetInterfaceName(IID);

  FLock.Acquire;
  try
    lFound := not Assigned(aDataset);
    Result := False;
    if not Assigned(FSearchViewModels) then
      FSearchViewModels := TCollections.CreateDictionary<string, ISearchViewModel>;
    lObject := nil;

    if lFound then
    begin
      lSearchString := IID.ToString + GId.ToHexString;
      lFound := FSearchViewModels.TryGetValue(lSearchString, lIntf) and Assigned(lIntf) and
        Supports(lIntf, IID, Intf);
    end;

    Result := lFound or GetSerchViewModelObject(IID, GId, lObject, aDataset);

    if Result then
    begin
      if not lFound then
      begin
        lClassName := lObject.ClassName;
        Result := Supports(lObject, ISearchViewModel, lIntf) and Supports(lObject, IID, Intf);
        if not Result then
          raise exception.Create(lObject.ClassName + ' does not support Interface: ' + lIntfName);
      end;
    end
    else
      raise exception.Create('Interface not Found: ' + lIntfName);

    if not Assigned(aDataset) and Result and not lFound then
      FSearchViewModels[lSearchString] := lIntf; // AddOrSetValue(lSearchString, lIntf);
  finally
    FLock.Release;
  end;

end;

end.

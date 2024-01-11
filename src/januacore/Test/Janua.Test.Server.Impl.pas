/// <summary> This unit contains the class implementing server and the template class for Data Storage </summary>
/// <seealso cref="Janua.Test.Server.Intf">   Test Server Interface </seealso>
unit Janua.Test.Server.Impl;

interface

uses
  // Janua Orm Framework and Server Framework are needed for any server implementation
  Janua.Orm.Intf, Janua.Server.Intf,
  // Includes Specific Test Orm Entities
  Janua.Orm.Test.Intf,
  // Uses its interface but also Orm and Server Impl units to extend Template Classes.
  Janua.Core.DB.Impl, Janua.Core.DB.Intf, Janua.Test.Server.Intf, Janua.Orm.Impl, Janua.Server.Impl;

type
  /// <summary>
  /// Storage Implementation. In this class we find the Fields definitions and common methods
  /// </summary>
  TJanuaCustomTestStorage = class(TJanuaStorage, IJanuaStorage, IJanuaTestStorage)
  strict protected
    FTestRecordsetStorage: IJanuaRecordSetStorage;
  protected
    function GetTestRecordsetStorage: IJanuaRecordSetStorage;
    procedure SetTestRecordsetStorage(const Value: IJanuaRecordSetStorage);
  public
    /// <summary>
    /// This procedure Tests thee opens and load Data for Test Recordset
    /// </summary>
    function OpenTest: NativeUInt; virtual;
  end;

type
  TJanuaCustomDBTestStorage = class(TJanuaCustomTestStorage, IJanuaStorage, IJanuaTestStorage)
  strict protected
    FjdsDetail: IJanuaDBDataset;
    FjdsMaster: IJanuaDBDataset;
  protected
    function GetjdsDetail: IJanuaDBDataset;
    function GetjdsMaster: IJanuaDBDataset;
    procedure SetjdsDetail(Value: IJanuaDBDataset);
    procedure SetjdsMaster(Value: IJanuaDBDataset);
  end;

implementation

{ TJanuaCustomTestStorage }

function TJanuaCustomTestStorage.GetTestRecordsetStorage: IJanuaRecordSetStorage;
begin
  Result := FTestRecordsetStorage;
end;

function TJanuaCustomTestStorage.OpenTest: NativeUInt;
begin
  // not implemented at this stage just sets Result to 0
  Result := 0;
  if Assigned(Self.FTestRecordsetStorage) then
    Result := FTestRecordsetStorage.Open;
end;

procedure TJanuaCustomTestStorage.SetTestRecordsetStorage(const Value: IJanuaRecordSetStorage);
begin
  FTestRecordsetStorage := Value;
end;

{ TJanuaCustomDBTestStorage }

function TJanuaCustomDBTestStorage.GetjdsDetail: IJanuaDBDataset;
begin

end;

function TJanuaCustomDBTestStorage.GetjdsMaster: IJanuaDBDataset;
begin

end;

procedure TJanuaCustomDBTestStorage.SetjdsDetail(Value: IJanuaDBDataset);
begin

end;

procedure TJanuaCustomDBTestStorage.SetjdsMaster(Value: IJanuaDBDataset);
begin

end;

end.


unit Janua.Orm.Test.Impl;

interface

uses System.SysUtils, Janua.Orm.Intf, Janua.Orm.Impl, Janua.Orm.Test.Intf;

type
  TJanuaTestSubRecord = class(TJanuaRecord, IJanuaTestSubRecord)
  private
    FInteger: IJanuaField;
    FString: IJanuaField;
  private
    function GetInteger: IJanuaField;
    procedure SetInteger(const Value: IJanuaField);
    function GetString: IJanuaField;
    procedure SetString(const Value: IJanuaField);
  public
    constructor Create; override;
    property TestString: IJanuaField read GetString write SetString;
    property TestInteger: IJanuaField read GetInteger write SetInteger;
  end;

type
  TJanuaTestSubRecordSet = class(TJanuaRecordSet, IJanuaRecordSet, IJanuaTestSubRecordSet)
  private
    FInteger: Integer;
    FString: Integer;
    FSubRecord: IJanuaTestSubRecord;
  private
    function GetInteger: IJanuaField;
    procedure SetInteger(const Value: IJanuaField);
    function GetString: IJanuaField;
    procedure SetString(const Value: IJanuaField);
    // Nested Record
    function GetSubRecord: IJanuaTestSubRecord;
    procedure SetSubRecord(const Value: IJanuaTestSubRecord);
  public
    Constructor Create; override;
    property TestString: IJanuaField read GetString write SetString;
    property TestInteger: IJanuaField read GetInteger write SetInteger;
    // Record
    property TestSubRecord: IJanuaTestSubRecord read GetSubRecord write SetSubRecord;
  end;

type
  TJanuaTestNestedRecord = class(TJanuaRecord, IJanuaTestNestedRecord)
  private
    FFieldIndex: Integer;
    FTestSubRecord: IJanuaTestSubRecord;
    FInteger: IJanuaField;
    FString: IJanuaField;
    FDateTime: IJanuaField;
    FDouble: IJanuaField;
    FBoolean: IJanuaField;
    FMemo: IJanuaField;
    FSubRecordSet: IJanuaTestSubRecordSet;
    FSubRecordSet2: IJanuaTestSubRecordSet;
  private
    function GetInteger: IJanuaField;
    procedure SetInteger(const Value: IJanuaField);
    function GetString: IJanuaField;
    procedure SetString(const Value: IJanuaField);
    function GetDateTime: IJanuaField;
    procedure SetDateTime(const Value: IJanuaField);
    function GetDouble: IJanuaField;
    procedure SetDouble(const Value: IJanuaField);
    function GetBoolean: IJanuaField;
    procedure SetBoolean(const Value: IJanuaField);
    function GetMemo: IJanuaField;
    procedure SetMemo(const Value: IJanuaField);
    // Sub RecordSet ..................................................................................................
    function GetSubRecordSet: IJanuaTestSubRecordSet;
    procedure SetSubRecordSet(const Value: IJanuaTestSubRecordSet);
    function GetSubRecordSet2: IJanuaTestSubRecordSet;
    procedure SetSubRecordSet2(const Value: IJanuaTestSubRecordSet);
  public
    constructor Create; override;
    property TestBoolean: IJanuaField read GetBoolean write SetBoolean;
    property TestDateTime: IJanuaField read GetDateTime write SetDateTime;
    property TestString: IJanuaField read GetString write SetString;
    property TestInteger: IJanuaField read GetInteger write SetInteger;
    property TestDouble: IJanuaField read GetDouble write SetDouble;
    // Sub RecordSet Nested into Record ............................................
    property SubRecordSet: IJanuaTestSubRecordSet read GetSubRecordSet write SetSubRecordSet;
    property SubRecordSet2: IJanuaTestSubRecordSet read GetSubRecordSet2 write SetSubRecordSet2;
  end;

type
  TJanuaTestNestedsSubRecord = class(TJanuaTestNestedRecord, IJanuaTestNestedRecord,
    IJanuaTestNestedSubRecord)
  private
    FSubRecordA: IJanuaTestSubRecord;
    FSubRecordB: IJanuaTestSubRecord;
  public
    constructor Create; override;
    // Sub Records ..................................................................................................
  private
    function GetSubRecordA: IJanuaTestSubRecord;
    procedure SetSubRecordA(const Value: IJanuaTestSubRecord);
  public
    property SubRecordA: IJanuaTestSubRecord read GetSubRecordA write SetSubRecordA;
    // Sub Records ..................................................................................................
  private
    function GetSubRecordB: IJanuaTestSubRecord;
    procedure SetSubRecordB(const Value: IJanuaTestSubRecord);
  public
    property SubRecordB: IJanuaTestSubRecord read GetSubRecordB write SetSubRecordB;
  end;

type
  TJanuaTestRecordSet = class(TJanuaRecordSet, IJanuaRecordSet, IJanuaTestRecordSet)
  private
    function GetInteger: IJanuaField;
    procedure SetInteger(const Value: IJanuaField);
    function GetString: IJanuaField;
    procedure SetString(const Value: IJanuaField);
    function GetDateTime: IJanuaField;
    procedure SetDateTime(const Value: IJanuaField);
    function GetDouble: IJanuaField;
    procedure SetDouble(const Value: IJanuaField);
    function GetBoolean: IJanuaField;
    procedure SetBoolean(const Value: IJanuaField);
    function GetMemo: IJanuaField;
    procedure SetMemo(const Value: IJanuaField);
    // Nested Record
    function GetNestedRecord: IJanuaTestNestedRecord;
    procedure SetNestedRecord(const Value: IJanuaTestNestedRecord);
  public
    Constructor Create; override;
  public
    property TestBoolean: IJanuaField read GetBoolean write SetBoolean;
    property TestDateTime: IJanuaField read GetDateTime write SetDateTime;
    property TestDouble: IJanuaField read GetDouble write SetDouble;
    property TestString: IJanuaField read GetString write SetString;
    property TestInteger: IJanuaField read GetInteger write SetInteger;
    property TestNestedRecord: IJanuaTestNestedRecord read GetNestedRecord write SetNestedRecord;
    // Sub RecordSet ..................................................................................................
    function GetSubRecordSet: IJanuaTestSubRecordSet;
    procedure SetSubRecordSet(const Value: IJanuaTestSubRecordSet);
    property SubRecordSet: IJanuaTestSubRecordSet read GetSubRecordSet write SetSubRecordSet;
  end;

  (*
    type
    TJanuaNestedFactory = class
    class function CreateRecord(const aKey: string): IJanuaTestNestedRecord; overload;
    class function CreateRecordset(aName, aTableName: string): IJanuaTestRecordSet; overload;
    class function CreateSubRecord(const aKey: string): IJanuaTestSubRecord; overload;
    class function CreateSubRecordset(aName, aTableName: string): IJanuaTestSubRecordSet; overload;
    end;
  *)

implementation

uses Janua.Orm.Types, Janua.Core.Types, Janua.Application.Framework;

{ TJanuaTestNestedRecord }

constructor TJanuaTestNestedRecord.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.TestDetail);
  FInteger := AddCreateField(TJanuaFieldType.jptInteger, 'int', 'IntField');
  // FInteger := AddField(TJanuaOrmFactory.CreateIntegerField('int', 'IntField'));
  FString := AddCreateField(TJanuaFieldType.jptString, 'str', 'StringField');
  // AddField(TJanuaOrmFactory.CreateStringField('str', 'StringField'));
  FDateTime := AddCreateField(TJanuaFieldType.jptDateTime, 'dat', 'DateField');
  // AddField(TJanuaOrmFactory.CreateDateTimeField('dat', 'dat'));
  FDouble := AddCreateField(TJanuaFieldType.jptFloat, 'dob', 'FloatField');
  // AddField(TJanuaOrmFactory.CreateDoubleField('dob', 'FloatField'));
  FBoolean := AddCreateField(TJanuaFieldType.jptBoolean, 'boo', 'BoolField');
  // AddField(TJanuaOrmFactory.CreateBoolField('boo', 'BoolField'));
  FMemo := AddCreateField(TJanuaFieldType.jptText, 'mem', 'MemoField');
  // AddField(TJanuaOrmFactory.CreateBoolField('boo', 'BoolField'));
  FTestSubRecord := TJanuaTestSubRecord.Create('sub');
  if not TJanuaOrmFactory.TryGetRecordSetIntf(IJanuaTestSubRecordSet, 'subset', nil, nil, FSubRecordSet) then
    raise Exception.Create('IJanuaTestSubRecordSet not set');
  AddRecordSet(FSubRecordSet);
  if not TJanuaOrmFactory.TryGetRecordSetIntf(IJanuaTestSubRecordSet, 'subset2', nil, nil, FSubRecordSet2)
  then
    raise Exception.Create('IJanuaTestSubRecordSet not set');
  AddRecordSet(FSubRecordSet2);
end;

function TJanuaTestNestedRecord.GetBoolean: IJanuaField;
begin
  Result := self.FBoolean
end;

function TJanuaTestNestedRecord.GetDateTime: IJanuaField;
begin
  Result := self.FDateTime
end;

function TJanuaTestNestedRecord.GetDouble: IJanuaField;
begin
  Result := FDouble
end;

function TJanuaTestNestedRecord.GetInteger: IJanuaField;
begin
  Result := FInteger
end;

function TJanuaTestNestedRecord.GetMemo: IJanuaField;
begin
  Result := FMemo
end;

function TJanuaTestNestedRecord.GetString: IJanuaField;
begin
  Result := FString
end;

function TJanuaTestNestedRecord.GetSubRecordSet: IJanuaTestSubRecordSet;
begin
  Result := FSubRecordSet
end;

function TJanuaTestNestedRecord.GetSubRecordSet2: IJanuaTestSubRecordSet;
begin
  Result := FSubRecordSet2
end;

procedure TJanuaTestNestedRecord.SetBoolean(const Value: IJanuaField);
begin
  FBoolean := Value
end;

procedure TJanuaTestNestedRecord.SetDateTime(const Value: IJanuaField);
begin
  FDateTime := Value
end;

procedure TJanuaTestNestedRecord.SetDouble(const Value: IJanuaField);
begin
  FDouble := Value
end;

procedure TJanuaTestNestedRecord.SetInteger(const Value: IJanuaField);
begin
  FInteger := Value
end;

procedure TJanuaTestNestedRecord.SetMemo(const Value: IJanuaField);
begin
  FMemo := Value
end;

procedure TJanuaTestNestedRecord.SetString(const Value: IJanuaField);
begin
  FString := Value
end;

procedure TJanuaTestNestedRecord.SetSubRecordSet(const Value: IJanuaTestSubRecordSet);
begin
  if not Assigned(FSubRecordSet) then
  begin
    FSubRecordSet := Value;
    AddRecordSet(FSubRecordSet);
  end;
  {
    if RecordSets.Count = 0 then
    AddRecordSet(Value)
    else
    RecordSets[0] := Value;
  }
  {
    if FSubRecordSetIndex = -1 then
    begin
    FSubRecordSetIndex := AddRecordSet(Value);
    end
    else
    RecordSets[FSubRecordSetIndex] := Value
  }
end;

procedure TJanuaTestNestedRecord.SetSubRecordSet2(const Value: IJanuaTestSubRecordSet);
begin
  FSubRecordSet2 := Value
end;

{ TJanuaTestRecordSet }

constructor TJanuaTestRecordSet.Create;
begin
  inherited;
  { self.FRecord := TJanuaNestedFactory.CreateRecord('test'); }
  // IJanuaTestNestedRecord
  if not TJanuaOrmFactory.TryGetRecordIntf(IJanuaTestNestedRecord, FRecord, 'test') then
    raise Exception.Create('TJanuaTestRecordSet.Create IJanuaTestNestedRecord not set');
end;

function TJanuaTestRecordSet.GetBoolean: IJanuaField;
begin
  Result := TestNestedRecord.TestBoolean
end;

function TJanuaTestRecordSet.GetDateTime: IJanuaField;
begin
  Result := TestNestedRecord.TestDateTime
end;

function TJanuaTestRecordSet.GetDouble: IJanuaField;
begin
  Result := TestNestedRecord.TestDouble
end;

function TJanuaTestRecordSet.GetInteger: IJanuaField;
begin
  Result := TestNestedRecord.TestInteger
end;

function TJanuaTestRecordSet.GetMemo: IJanuaField;
begin
  Result := TestNestedRecord.TestMemo
end;

function TJanuaTestRecordSet.GetNestedRecord: IJanuaTestNestedRecord;
begin
  Result := self.CurrentRecord as IJanuaTestNestedRecord
end;

function TJanuaTestRecordSet.GetString: IJanuaField;
begin
  Result := TestNestedRecord.TestString
end;

function TJanuaTestRecordSet.GetSubRecordSet: IJanuaTestSubRecordSet;
begin
  Result := self.SubRecordSet;
end;

procedure TJanuaTestRecordSet.SetBoolean(const Value: IJanuaField);
begin

end;

procedure TJanuaTestRecordSet.SetDateTime(const Value: IJanuaField);
begin
  TestNestedRecord.TestDateTime := Value
end;

procedure TJanuaTestRecordSet.SetDouble(const Value: IJanuaField);
begin
  TestNestedRecord.TestDouble := Value
end;

procedure TJanuaTestRecordSet.SetInteger(const Value: IJanuaField);
begin
  TestNestedRecord.TestInteger := Value
end;

procedure TJanuaTestRecordSet.SetMemo(const Value: IJanuaField);
begin

end;

procedure TJanuaTestRecordSet.SetNestedRecord(const Value: IJanuaTestNestedRecord);
begin
  self.CurrentRecord := Value
end;

procedure TJanuaTestRecordSet.SetString(const Value: IJanuaField);
begin
  TestNestedRecord.TestString := Value
end;

procedure TJanuaTestRecordSet.SetSubRecordSet(const Value: IJanuaTestSubRecordSet);
begin

end;

{ TJanuaNestedFactory }
(*
  class function TJanuaNestedFactory.CreateRecord(const aKey: string): IJanuaTestNestedRecord;
  begin
  Result := TJanuaTestNestedRecord.Create;
  end;

  class function TJanuaNestedFactory.CreateRecordset(aName, aTableName: string): IJanuaTestRecordSet;
  begin
  Result := TJanuaTestRecordSet.Create(aName, nil, nil);
  end;

  class function TJanuaNestedFactory.CreateSubRecord(const aKey: string): IJanuaTestSubRecord;
  begin
  Result := TJanuaTestSubRecord.Create;
  end;

  class function TJanuaNestedFactory.CreateSubRecordset(aName, aTableName: string): IJanuaTestSubRecordSet;
  begin
  Result := TJanuaTestSubRecordSet.Create(aName, nil, nil);
  end;
*)

{ TJanuaTestSubRecord }

constructor TJanuaTestSubRecord.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.TestDetail);
  FInteger := TJanuaOrmFactory.CreateIntegerField('int', 'IntField');
  AddField(FInteger);
  FString := TJanuaOrmFactory.CreateStringField('str', 'StringField');
  AddField(FString);
end;

function TJanuaTestSubRecord.GetInteger: IJanuaField;
begin
  Result := self.FInteger
end;

function TJanuaTestSubRecord.GetString: IJanuaField;
begin
  Result := self.FString
end;

procedure TJanuaTestSubRecord.SetInteger(const Value: IJanuaField);
begin
  self.FInteger := Value
end;

procedure TJanuaTestSubRecord.SetString(const Value: IJanuaField);
begin
  self.FString := Value
end;

{ TJanuaTestSubRecordSet }

constructor TJanuaTestSubRecordSet.Create;
begin
  inherited;
  // self.FRecord := TJanuaNestedFactory.CreateRecord('test')
  // IJanuaTestSubRecord
  if not TJanuaOrmFactory.TryGetRecordIntf(IJanuaTestSubRecord, FSubRecord, 'test') then
    raise Exception.Create('TJanuaTestRecordSet.Create IJanuaTestSubRecord not set');
  if not Supports(FSubRecord, IJanuaRecord, FRecord) then
    raise Exception.Create('TJanuaTestSubRecordSet.Create FSubRecord not supports IJanuaRecord');
end;

function TJanuaTestSubRecordSet.GetInteger: IJanuaField;
begin
  Result := FSubRecord.TestInteger
end;

function TJanuaTestSubRecordSet.GetString: IJanuaField;
begin
  Result := FSubRecord.TestString
end;

function TJanuaTestSubRecordSet.GetSubRecord: IJanuaTestSubRecord;
begin
  Result := FSubRecord
end;

procedure TJanuaTestSubRecordSet.SetInteger(const Value: IJanuaField);
begin
  FSubRecord.TestInteger := Value
end;

procedure TJanuaTestSubRecordSet.SetString(const Value: IJanuaField);
begin
  FSubRecord.TestString := Value;
end;

procedure TJanuaTestSubRecordSet.SetSubRecord(const Value: IJanuaTestSubRecord);
begin
  FSubRecord := Value;
end;

{ TJanuaTestNestedsSubRecord }

constructor TJanuaTestNestedsSubRecord.Create;
begin
  inherited;
  FSubRecordA := TJanuaTestSubRecord.Create('SubA');
  FSubRecordB := TJanuaTestSubRecord.Create('SubB');
  self.AddRecordDef(self.FSubRecordA);
  self.AddRecordDef(self.FSubRecordB);
end;

function TJanuaTestNestedsSubRecord.GetSubRecordA: IJanuaTestSubRecord;
begin
  Result := FSubRecordA
end;

function TJanuaTestNestedsSubRecord.GetSubRecordB: IJanuaTestSubRecord;
begin
  Result := FSubRecordB
end;

procedure TJanuaTestNestedsSubRecord.SetSubRecordA(const Value: IJanuaTestSubRecord);
begin
  FSubRecordA := Value
end;

procedure TJanuaTestNestedsSubRecord.SetSubRecordB(const Value: IJanuaTestSubRecord);
begin
  FSubRecordB := Value
end;

initialization


end.

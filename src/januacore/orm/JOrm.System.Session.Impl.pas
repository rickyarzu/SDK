unit JOrm.System.Session.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.System.Session.Intf, JOrm.System.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TSession = class(TJanuaRecord, ISession)
  private
    FDb_user_id: Integer;
    FDb_schema_id: Integer;
    FDb_session_key: Integer;
    FDb_session_id: Integer;
    FLanguage_id: Integer;
    FStart_time: Integer;
    FInsert_date: Integer;
    FIspublic: Integer;
  private
    function GetDb_user_id: IJanuaField;
    procedure SetDb_user_id(const Value: IJanuaField);
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    function GetDb_session_key: IJanuaField;
    procedure SetDb_session_key(const Value: IJanuaField);
    function GetDb_session_id: IJanuaField;
    procedure SetDb_session_id(const Value: IJanuaField);
    function GetLanguage_id: IJanuaField;
    procedure SetLanguage_id(const Value: IJanuaField);
    function GetStart_time: IJanuaField;
    procedure SetStart_time(const Value: IJanuaField);
    function GetInsert_date: IJanuaField;
    procedure SetInsert_date(const Value: IJanuaField);
    function GetIspublic: IJanuaField;
    procedure SetIspublic(const Value: IJanuaField);
  public
    constructor Create; override;
    property Db_user_id: IJanuaField read GetDb_user_id write SetDb_user_id;
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    property Db_session_key: IJanuaField read GetDb_session_key write SetDb_session_key;
    property Db_session_id: IJanuaField read GetDb_session_id write SetDb_session_id;
    property Language_id: IJanuaField read GetLanguage_id write SetLanguage_id;
    property Start_time: IJanuaField read GetStart_time write SetStart_time;
    property Insert_date: IJanuaField read GetInsert_date write SetInsert_date;
    property Ispublic: IJanuaField read GetIspublic write SetIspublic;
  end;

  TSessions = class(TJanuaRecordSet, IJanuaRecordSet, ISessions)
  private
    FDb_user_id: Integer;
    FDb_schema_id: Integer;
    FDb_session_key: Integer;
    FDb_session_id: Integer;
    FLanguage_id: Integer;
    FStart_time: Integer;
    FInsert_date: Integer;
    FIspublic: Integer;
  private
    function GetDb_user_id: IJanuaField;
    procedure SetDb_user_id(const Value: IJanuaField);
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    function GetDb_session_key: IJanuaField;
    procedure SetDb_session_key(const Value: IJanuaField);
    function GetDb_session_id: IJanuaField;
    procedure SetDb_session_id(const Value: IJanuaField);
    function GetLanguage_id: IJanuaField;
    procedure SetLanguage_id(const Value: IJanuaField);
    function GetStart_time: IJanuaField;
    procedure SetStart_time(const Value: IJanuaField);
    function GetInsert_date: IJanuaField;
    procedure SetInsert_date(const Value: IJanuaField);
    function GetIspublic: IJanuaField;
    procedure SetIspublic(const Value: IJanuaField);
    function GetSession: ISession;
    procedure SetSession(const Value: ISession);
  public
    constructor Create; override;
    property Db_user_id: IJanuaField read GetDb_user_id write SetDb_user_id;
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    property Db_session_key: IJanuaField read GetDb_session_key write SetDb_session_key;
    property Db_session_id: IJanuaField read GetDb_session_id write SetDb_session_id;
    property Language_id: IJanuaField read GetLanguage_id write SetLanguage_id;
    property Start_time: IJanuaField read GetStart_time write SetStart_time;
    property Insert_date: IJanuaField read GetInsert_date write SetInsert_date;
    property Ispublic: IJanuaField read GetIspublic write SetIspublic;
    property Session: ISession read GetSession write SetSession;
  end;

  TSessionFactory = class
    class function CreateRecord(const aKey: string): ISession; overload;
    class function CreateRecordset(aName, aTableName: string): ISessions; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TSession -------------------------------

{ TSession }

constructor TSession.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.SysDbUserSessions);
  FDb_user_id := AddField(TJanuaOrmFactory.CreateIntegerField('db_user_id', 'Db_user_id'));
  FDb_schema_id := AddField(TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'Db_schema_id'));
  FDb_session_key := AddField(TJanuaOrmFactory.CreateStringField('db_session_key', 'Db_session_key'));
  // Campo non GestitoDb_session_id Type= ftLargeint
  FLanguage_id := AddField(TJanuaOrmFactory.CreateSmallintField('language_id', 'Language_id'));
  // Campo non GestitoStart_time Type= ftTimeStamp
  // Campo non GestitoInsert_date Type= ftTimeStamp
  FIspublic := AddField(TJanuaOrmFactory.CreateBoolField('ispublic', 'Ispublic'));
  // imposto il Record User.

end;

function TSession.GetDb_user_id: IJanuaField;
begin
  Result := self.Fields[FDb_user_id];
end;

procedure TSession.SetDb_user_id(const Value: IJanuaField);
begin
  self.Fields[FDb_user_id] := Value;
end;

function TSession.GetDb_schema_id: IJanuaField;
begin
  Result := self.Fields[FDb_schema_id];
end;

procedure TSession.SetDb_schema_id(const Value: IJanuaField);
begin
  self.Fields[FDb_schema_id] := Value;
end;

function TSession.GetDb_session_key: IJanuaField;
begin
  Result := self.Fields[FDb_session_key];
end;

procedure TSession.SetDb_session_key(const Value: IJanuaField);
begin
  self.Fields[FDb_session_key] := Value;
end;

function TSession.GetDb_session_id: IJanuaField;
begin
  Result := self.Fields[FDb_session_id];
end;

procedure TSession.SetDb_session_id(const Value: IJanuaField);
begin
  self.Fields[FDb_session_id] := Value;
end;

function TSession.GetLanguage_id: IJanuaField;
begin
  Result := self.Fields[FLanguage_id];
end;

procedure TSession.SetLanguage_id(const Value: IJanuaField);
begin
  self.Fields[FLanguage_id] := Value;
end;

function TSession.GetStart_time: IJanuaField;
begin
  Result := self.Fields[FStart_time];
end;

procedure TSession.SetStart_time(const Value: IJanuaField);
begin
  self.Fields[FStart_time] := Value;
end;

function TSession.GetInsert_date: IJanuaField;
begin
  Result := self.Fields[FInsert_date];
end;

procedure TSession.SetInsert_date(const Value: IJanuaField);
begin
  self.Fields[FInsert_date] := Value;
end;

function TSession.GetIspublic: IJanuaField;
begin
  Result := self.Fields[FIspublic];
end;

procedure TSession.SetIspublic(const Value: IJanuaField);
begin
  self.Fields[FIspublic] := Value;
end;

{ TSessions }
constructor TSessions.Create;
begin
  inherited;
  self.FRecord := TSessionFactory.CreateRecord('Session')
end;

function TSessions.GetDb_user_id: IJanuaField;
begin
  Result := self.Session.Db_user_id;
end;

procedure TSessions.SetDb_user_id(const Value: IJanuaField);
begin
  self.Session.Db_user_id := Value;
end;

function TSessions.GetDb_schema_id: IJanuaField;
begin
  Result := self.Session.Db_schema_id;
end;

procedure TSessions.SetDb_schema_id(const Value: IJanuaField);
begin
  self.Session.Db_schema_id := Value;
end;

function TSessions.GetDb_session_key: IJanuaField;
begin
  Result := self.Session.Db_session_key;
end;

procedure TSessions.SetDb_session_key(const Value: IJanuaField);
begin
  self.Session.Db_session_key := Value;
end;

function TSessions.GetDb_session_id: IJanuaField;
begin
  Result := self.Session.Db_session_id;
end;

procedure TSessions.SetDb_session_id(const Value: IJanuaField);
begin
  self.Session.Db_session_id := Value;
end;

function TSessions.GetLanguage_id: IJanuaField;
begin
  Result := self.Session.Language_id;
end;

procedure TSessions.SetLanguage_id(const Value: IJanuaField);
begin
  self.Session.Language_id := Value;
end;

function TSessions.GetStart_time: IJanuaField;
begin
  Result := self.Session.Start_time;
end;

procedure TSessions.SetStart_time(const Value: IJanuaField);
begin
  self.Session.Start_time := Value;
end;

function TSessions.GetInsert_date: IJanuaField;
begin
  Result := self.Session.Insert_date;
end;

procedure TSessions.SetInsert_date(const Value: IJanuaField);
begin
  self.Session.Insert_date := Value;
end;

function TSessions.GetIspublic: IJanuaField;
begin
  Result := self.Session.Ispublic;
end;

procedure TSessions.SetIspublic(const Value: IJanuaField);
begin
  self.Session.Ispublic := Value;
end;

function TSessions.GetSession: ISession;
begin
  Result := self.FRecord as ISession;
end;

procedure TSessions.SetSession(const Value: ISession);
begin
  self.FRecord := Value;
end;

{ TSessionFactory }

class function TSessionFactory.CreateRecord(const aKey: string): ISession;
begin
  Result := TSession.Create;
end;

class function TSessionFactory.CreateRecordset(aName, aTableName: string): ISessions;
begin
  Result := TSessions.Create(aName, nil, nil);
end;

end.

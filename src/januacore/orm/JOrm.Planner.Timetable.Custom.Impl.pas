unit JOrm.Planner.Timetable.Custom.Impl;
{ unit JOrm.Planner.Timetable.Custom.Impl; }

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Planner.Timetable.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomTimetable = class(TJanuaRecord, ICustomTimetable)
  private
    FJguid: IJanuaField;
    FAnagraphId: IJanuaField;
    FStarttime: IJanuaField;
    FEndtime: IJanuaField;
    FNotes: IJanuaField;
    FSubject: IJanuaField;
    FCaption: IJanuaField;
    FImage: IJanuaField;
    FColor: IJanuaField;
    FActivityGroupJguid: IJanuaField;
    FActivityJguid: IJanuaField;
    FDbSchemaId: IJanuaField;
  protected
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    function GetStarttime: IJanuaField;
    procedure SetStarttime(const Value: IJanuaField);
    function GetEndtime: IJanuaField;
    procedure SetEndtime(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetSubject: IJanuaField;
    procedure SetSubject(const Value: IJanuaField);
    function GetCaption: IJanuaField;
    procedure SetCaption(const Value: IJanuaField);
    function GetImage: IJanuaField;
    procedure SetImage(const Value: IJanuaField);
    function GetColor: IJanuaField;
    procedure SetColor(const Value: IJanuaField);
    function GetActivityGroupJguid: IJanuaField;
    procedure SetActivityGroupJguid(const Value: IJanuaField);
    function GetActivityJguid: IJanuaField;
    procedure SetActivityJguid(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
  public
    constructor Create; override;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    property Starttime: IJanuaField read GetStarttime write SetStarttime;
    property Endtime: IJanuaField read GetEndtime write SetEndtime;
    property Notes: IJanuaField read GetNotes write SetNotes;
    property Subject: IJanuaField read GetSubject write SetSubject;
    property Caption: IJanuaField read GetCaption write SetCaption;
    property Image: IJanuaField read GetImage write SetImage;
    property Color: IJanuaField read GetColor write SetColor;
    property ActivityGroupJguid: IJanuaField read GetActivityGroupJguid write SetActivityGroupJguid;
    property ActivityJguid: IJanuaField read GetActivityJguid write SetActivityJguid;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
  end;

  TCustomTimetables = class(TJanuaRecordSet, IJanuaRecordSet, ICustomTimetables)
  strict private
    FTimeTable: ICustomTimetable;
  strict protected
    function GetTimetable: ICustomTimetable;
    procedure SetTimetable(const Value: ICustomTimetable);
    property Timetable: ICustomTimetable read GetTimetable write SetTimetable;
  protected
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    function GetStarttime: IJanuaField;
    procedure SetStarttime(const Value: IJanuaField);
    function GetEndtime: IJanuaField;
    procedure SetEndtime(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetSubject: IJanuaField;
    procedure SetSubject(const Value: IJanuaField);
    function GetCaption: IJanuaField;
    procedure SetCaption(const Value: IJanuaField);
    function GetImage: IJanuaField;
    procedure SetImage(const Value: IJanuaField);
    function GetColor: IJanuaField;
    procedure SetColor(const Value: IJanuaField);
    function GetActivityGroupJguid: IJanuaField;
    procedure SetActivityGroupJguid(const Value: IJanuaField);
    function GetActivityJguid: IJanuaField;
    procedure SetActivityJguid(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
  public
    constructor Create; override;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    property Starttime: IJanuaField read GetStarttime write SetStarttime;
    property Endtime: IJanuaField read GetEndtime write SetEndtime;
    property Notes: IJanuaField read GetNotes write SetNotes;
    property Subject: IJanuaField read GetSubject write SetSubject;
    property Caption: IJanuaField read GetCaption write SetCaption;
    property Image: IJanuaField read GetImage write SetImage;
    property Color: IJanuaField read GetColor write SetColor;
    property ActivityGroupJguid: IJanuaField read GetActivityGroupJguid write SetActivityGroupJguid;
    property ActivityJguid: IJanuaField read GetActivityJguid write SetActivityJguid;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
  end;

  TCustomTimetableFactory = class
    class function CreateRecord(const aKey: string): ICustomTimetable; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : ICustomTimetables; overload;
  end;

implementation

// ------------------------------------------ Impl TTimetable -------------------------------

{ TCustomTimetable }

constructor TCustomTimetable.Create;
begin
  inherited;
  FPrefix := 'ptmt';
  // Campo non Gestitojguid Type= ftGuid
  FAnagraphId := AddCreateField(TJanuaFieldType.jptInteger, 'anagraph_id', 'anagraph_id');
  FStarttime := AddCreateField(TJanuaFieldType.jptDateTime, 'starttime', 'starttime');
  FEndtime := AddCreateField(TJanuaFieldType.jptDateTime, 'endtime', 'endtime');
  FNotes := AddCreateField(TJanuaFieldType.jptText, 'notes', 'notes');
  // Campo non Gestitonotes Type= ftWideMemo
  FSubject := AddCreateField(TJanuaFieldType.jptString, 'subject', 'subject');
  FCaption := AddCreateField(TJanuaFieldType.jptBoolean, 'caption', 'caption');
  FImage := AddCreateField(TJanuaFieldType.jptInteger, 'image', 'image');
  FColor := AddCreateField(TJanuaFieldType.jptSmallint, 'color', 'color');
  // Campo non Gestitoactivity_group_jguid Type= ftGuid
  // Campo non Gestitoactivity_jguid Type= ftGuid
  FActivityJguid := AddCreateField(TJanuaFieldType.jptGUID, 'activity_jguid', 'activity_jguid');
  FActivityGroupJguid := AddCreateField(jptGUID, 'activity_group_jguid', 'activity_group_jguid');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
end;

function TCustomTimetable.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomTimetable.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomTimetable.GetAnagraphId: IJanuaField;
begin
  Result := FAnagraphId;
end;

procedure TCustomTimetable.SetAnagraphId(const Value: IJanuaField);
begin
  FAnagraphId := Value;
end;

function TCustomTimetable.GetStarttime: IJanuaField;
begin
  Result := FStarttime;
end;

procedure TCustomTimetable.SetStarttime(const Value: IJanuaField);
begin
  FStarttime := Value;
end;

function TCustomTimetable.GetEndtime: IJanuaField;
begin
  Result := FEndtime;
end;

procedure TCustomTimetable.SetEndtime(const Value: IJanuaField);
begin
  FEndtime := Value;
end;

function TCustomTimetable.GetNotes: IJanuaField;
begin
  Result := FNotes;
end;

procedure TCustomTimetable.SetNotes(const Value: IJanuaField);
begin
  FNotes := Value;
end;

function TCustomTimetable.GetSubject: IJanuaField;
begin
  Result := FSubject;
end;

procedure TCustomTimetable.SetSubject(const Value: IJanuaField);
begin
  FSubject := Value;
end;

function TCustomTimetable.GetCaption: IJanuaField;
begin
  Result := FCaption;
end;

procedure TCustomTimetable.SetCaption(const Value: IJanuaField);
begin
  FCaption := Value;
end;

function TCustomTimetable.GetImage: IJanuaField;
begin
  Result := FImage;
end;

procedure TCustomTimetable.SetImage(const Value: IJanuaField);
begin
  FImage := Value;
end;

function TCustomTimetable.GetColor: IJanuaField;
begin
  Result := FColor;
end;

procedure TCustomTimetable.SetColor(const Value: IJanuaField);
begin
  FColor := Value;
end;

function TCustomTimetable.GetActivityGroupJguid: IJanuaField;
begin
  Result := FActivityGroupJguid;
end;

procedure TCustomTimetable.SetActivityGroupJguid(const Value: IJanuaField);
begin
  FActivityGroupJguid := Value;
end;

function TCustomTimetable.GetActivityJguid: IJanuaField;
begin
  Result := FActivityJguid;
end;

procedure TCustomTimetable.SetActivityJguid(const Value: IJanuaField);
begin
  FActivityJguid := Value;
end;

function TCustomTimetable.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomTimetable.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

{ TCustomTimetables }
constructor TCustomTimetables.Create;
begin
  inherited;
end;

function TCustomTimetables.GetJguid: IJanuaField;
begin
  Result := self.Timetable.Jguid;
end;

procedure TCustomTimetables.SetJguid(const Value: IJanuaField);
begin
  self.Timetable.Jguid := Value;
end;

function TCustomTimetables.GetAnagraphId: IJanuaField;
begin
  Result := self.Timetable.AnagraphId;
end;

procedure TCustomTimetables.SetAnagraphId(const Value: IJanuaField);
begin
  self.Timetable.AnagraphId := Value;
end;

function TCustomTimetables.GetStarttime: IJanuaField;
begin
  Result := self.Timetable.Starttime;
end;

procedure TCustomTimetables.SetStarttime(const Value: IJanuaField);
begin
  self.Timetable.Starttime := Value;
end;

function TCustomTimetables.GetEndtime: IJanuaField;
begin
  Result := self.Timetable.Endtime;
end;

procedure TCustomTimetables.SetEndtime(const Value: IJanuaField);
begin
  self.Timetable.Endtime := Value;
end;

function TCustomTimetables.GetNotes: IJanuaField;
begin
  Result := self.Timetable.Notes;
end;

procedure TCustomTimetables.SetNotes(const Value: IJanuaField);
begin
  self.Timetable.Notes := Value;
end;

function TCustomTimetables.GetSubject: IJanuaField;
begin
  Result := self.Timetable.Subject;
end;

procedure TCustomTimetables.SetSubject(const Value: IJanuaField);
begin
  self.Timetable.Subject := Value;
end;

function TCustomTimetables.GetCaption: IJanuaField;
begin
  Result := self.Timetable.Caption;
end;

procedure TCustomTimetables.SetCaption(const Value: IJanuaField);
begin
  self.Timetable.Caption := Value;
end;

function TCustomTimetables.GetImage: IJanuaField;
begin
  Result := self.Timetable.Image;
end;

procedure TCustomTimetables.SetImage(const Value: IJanuaField);
begin
  self.Timetable.Image := Value;
end;

function TCustomTimetables.GetColor: IJanuaField;
begin
  Result := self.Timetable.Color;
end;

procedure TCustomTimetables.SetColor(const Value: IJanuaField);
begin
  self.Timetable.Color := Value;
end;

function TCustomTimetables.GetActivityGroupJguid: IJanuaField;
begin
  Result := self.Timetable.ActivityGroupJguid;
end;

procedure TCustomTimetables.SetActivityGroupJguid(const Value: IJanuaField);
begin
  self.Timetable.ActivityGroupJguid := Value;
end;

function TCustomTimetables.GetActivityJguid: IJanuaField;
begin
  Result := self.Timetable.ActivityJguid;
end;

procedure TCustomTimetables.SetActivityJguid(const Value: IJanuaField);
begin
  self.Timetable.ActivityJguid := Value;
end;

function TCustomTimetables.GetDbSchemaId: IJanuaField;
begin
  Result := self.Timetable.DbSchemaId;
end;

procedure TCustomTimetables.SetDbSchemaId(const Value: IJanuaField);
begin
  self.Timetable.DbSchemaId := Value;
end;

function TCustomTimetables.GetTimetable: ICustomTimetable;
begin
  Result := FRecord as ICustomTimetable;
end;

procedure TCustomTimetables.SetTimetable(const Value: ICustomTimetable);
begin
  self.FRecord := Value;
end;

{ TCustomTimetableFactory }

class function TCustomTimetableFactory.CreateRecord(const aKey: string): ICustomTimetable;
begin
  Result := TCustomTimetable.Create;
end;

class function TCustomTimetableFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ICustomTimetables;
begin
  Result := TCustomTimetables.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.

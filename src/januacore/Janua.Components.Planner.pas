unit Janua.Components.Planner;

interface

uses Janua.Core.Classes, JOrm.Planner.Timetable.Intf;

type
  TJanuaPlannerController = class(TJanuaCoreComponent)
  private
    { FPeriodMins: Word; }
    FTimetable: ITimetable;
    function GetTimetable: ITimetable;
    procedure SetTimetable(const Value: ITimetable);
  protected
    function GetDateFrom: TDateTime;
    procedure SetDateFrom(const Value: TDateTime);
    function GetDateTo: TDateTime;
    procedure SetDateTo(const Value: TDateTime);
    function GetHourFrom: Word;
    function GetHourTo: Word;
    function GetMinFrom: Word;
    function GetMinTo: Word;
    procedure SetHourFrom(const Value: Word);
    procedure SetHourTo(const Value: Word);
    procedure SetMinFrom(const Value: Word);
    procedure SetMinTo(const Value: Word);
    function GetPeriodMins: Word;
    procedure SetPeriodMins(const Value: Word);
    function GetPeriodFrom: Word;
    procedure SetPeriodFrom(const Value: Word);
    function GetPeriodTo: Word;
    procedure SetPeriodTo(const Value: Word);
  public
    property PeriodMins: Word read GetPeriodMins write SetPeriodMins;
    property DateTo: TDateTime read GetDateTo write SetDateTo;
    property HourFrom: Word read GetHourFrom write SetHourFrom;
    property HourTo: Word read GetHourTo write SetHourTo;
    property MinFrom: Word read GetMinFrom write SetMinFrom;
    property MinTo: Word read GetMinTo write SetMinTo;
    property PeriodFrom: Word read GetPeriodFrom write SetPeriodFrom;
    property PeriodTo: Word read GetPeriodTo write SetPeriodTo;
    property Timetable: ITimetable read GetTimetable write SetTimetable;
  published
    property DateFrom: TDateTime read GetDateFrom write SetDateFrom;
  end;

implementation

uses System.SysUtils;

function TJanuaPlannerController.GetDateFrom: TDateTime;
begin
  if Assigned(FTimetable) then
    Result := FTimetable.DateFrom
  else
    Result := Date()
end;

function TJanuaPlannerController.GetDateTo: TDateTime;
begin
  if Assigned(FTimetable) then
    Result := FTimetable.DateTo
  else
    Result := Date()
end;

function TJanuaPlannerController.GetHourFrom: Word;
begin
  if Assigned(FTimetable) then
    Result := FTimetable.HourFrom
  else
    Result := 0
end;

function TJanuaPlannerController.GetHourTo: Word;
begin
  if Assigned(FTimetable) then
    Result := FTimetable.HourTo
  else
    Result := 0
end;

function TJanuaPlannerController.GetMinFrom: Word;
begin
  if Assigned(FTimetable) then
    Result := FTimetable.MinFrom
  else
    Result := 0
end;

function TJanuaPlannerController.GetMinTo: Word;
begin
  if Assigned(FTimetable) then
    Result := FTimetable.MinTo
  else
    Result := 0
end;

function TJanuaPlannerController.GetPeriodFrom: Word;
begin
  if Assigned(FTimetable) then
    Result := FTimetable.PeriodFrom
  else
    Result := 0
end;

function TJanuaPlannerController.GetPeriodMins: Word;
begin
  if Assigned(FTimetable) then
    Result := FTimetable.PeriodMins
  else
    Result := 0
end;

function TJanuaPlannerController.GetPeriodTo: Word;
begin
  if Assigned(FTimetable) then
    Result := FTimetable.PeriodTo
  else
    Result := 0
end;

function TJanuaPlannerController.GetTimetable: ITimetable;
begin
  Result := FTimetable;
end;

procedure TJanuaPlannerController.SetDateFrom(const Value: TDateTime);
begin
  if Assigned(FTimetable) then
    FTimetable.DateFrom := Value
end;

procedure TJanuaPlannerController.SetDateTo(const Value: TDateTime);
begin
  if Assigned(FTimetable) then
    FTimetable.DateTo := Value
end;

procedure TJanuaPlannerController.SetHourFrom(const Value: Word);
begin
  if Assigned(FTimetable) then
    FTimetable.HourFrom := Value
end;

procedure TJanuaPlannerController.SetHourTo(const Value: Word);
begin
  if Assigned(FTimetable) then
    FTimetable.HourTo := Value
end;

procedure TJanuaPlannerController.SetMinFrom(const Value: Word);
begin
  if Assigned(FTimetable) then
    FTimetable.MinFrom := Value
end;

procedure TJanuaPlannerController.SetMinTo(const Value: Word);
begin
  if Assigned(FTimetable) then
    FTimetable.MinTo := Value
end;

procedure TJanuaPlannerController.SetPeriodFrom(const Value: Word);
begin
  if Assigned(FTimetable) then
    FTimetable.PeriodFrom := Value
end;

procedure TJanuaPlannerController.SetPeriodMins(const Value: Word);
begin
  if Assigned(FTimetable) then
    FTimetable.PeriodMins := Value
end;

procedure TJanuaPlannerController.SetPeriodTo(const Value: Word);
begin
  if Assigned(FTimetable) then
    FTimetable.PeriodTo := Value
end;

procedure TJanuaPlannerController.SetTimetable(const Value: ITimetable);
begin
  FTimetable := Value;
end;

end.




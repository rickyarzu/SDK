unit JOrm.Planner.Timetable.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Planner.Timetable.Custom.Impl,
  JOrm.Planner.Timetable.Intf;

type
  TTimetable = class(TCustomTimetable, ITimetable)
  private
    FPeriodMins: Word;
    procedure CheckTimeFromTo;
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
    property DateFrom: TDateTime read GetDateFrom write SetDateFrom;
    property PeriodMins: Word read GetPeriodMins write SetPeriodMins;
    property DateTo: TDateTime read GetDateTo write SetDateTo;
    property HourFrom: Word read GetHourFrom write SetHourFrom;
    property HourTo: Word read GetHourTo write SetHourTo;
    property MinFrom: Word read GetMinFrom write SetMinFrom;
    property MinTo: Word read GetMinTo write SetMinTo;
    property PeriodFrom: Word read GetPeriodFrom write SetPeriodFrom;
    property PeriodTo: Word read GetPeriodTo write SetPeriodTo;
  public
    constructor Create; override;
    procedure Append; override;
  end;

type
  TTimetables = class(TCustomTimetables, ITimetables)
  protected
    function GetTimetable: ITimetable;
    property Timetable: ITimetable read GetTimetable;
  public
    constructor Create; override;
  end;

implementation

uses System.DateUtils, Janua.Core.Functions, System.SysUtils, Janua.Application.Framework, Spring;

{ TCustomTimetable }

procedure TTimetable.Append;
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
  inherited;
  DecodeDateTime(Now(), Year, Month, Day, Hour, Min, Sec, MSec);
  if (Min mod FPeriodMins <> 0) then
  begin
    Min := FPeriodMins * Trunc(Min / FPeriodMins);
    if Min = 60 then
    begin
      Min := 0;
      Inc(Hour);
      if Hour = 24 then
      begin
        Hour := 0;
        Inc(Day);
      end;
    end;
  end;
  GetStarttime.AsDateTime := EncodeDateTime(Year, Month, Day, Hour, Min, 0, 0);

  Min := Min + FPeriodMins;
  if Min = 60 then
  begin
    Min := 0;
    Inc(Hour);
    if Hour = 24 then
    begin
      Hour := 0;
      Inc(Day);
    end;
  end;
  GetEndtime.AsDateTime := EncodeDateTime(Year, Month, Day, Hour, Min, 0, 0);

  Caption.AsBoolean := True;
  Color.AsInteger := 32767;
  Notes.AsString := 'Appuntamento per: ' + DateTimeToStr(Starttime.AsDateTime);
end;

procedure TTimetable.CheckTimeFromTo;
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
  if GetStarttime.AsDateTime >= GetEndtime.AsDateTime then
  begin
    if Self.DateFrom > Self.DateTo then
      Self.DateTo := Self.DateFrom;

    if Self.HourTo < Self.HourFrom then
      Self.HourTo := Self.HourFrom;

    if GetStarttime.AsDateTime >= GetEndtime.AsDateTime then
    begin
      DecodeDateTime(GetEndtime.AsDateTime, Year, Month, Day, Hour, Min, Sec, MSec);
      Min := Min + FPeriodMins;
      if Min = 60 then
      begin
        Min := 0;
        MinTo := Min;
        Inc(Hour);
        if Hour = 24 then
        begin
          Hour := 0;
          HourTo := Hour;
          Inc(Day);
          DateTo := EncodeDate(Year, Month, Day);
        end
        else
          HourTo := Hour;
      end
      else
        MinTo := Min;
    end;
  end;
end;

constructor TTimetable.Create;
begin
  inherited;
  FPeriodMins := 30;
end;

{ TCustomTimetables }

constructor TTimetables.Create;
begin
  inherited;
  FRecord := TTimetable.Create;
  FRecord.Name := 'TimeTable';
end;

function TTimetables.GetTimetable: ITimetable;
begin
  Result := FRecord as ITimetable;
end;

function TTimetable.GetDateFrom: TDateTime;
begin
  Result := DateOf(GetStarttime.AsDateTime);
end;

function TTimetable.GetDateTo: TDateTime;
begin
  Result := DateOf(GetEndtime.AsDateTime);
end;

function TTimetable.GetHourFrom: Word;
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
  DecodeDateTime(Self.GetStarttime.AsDateTime, Year, Month, Day, Hour, Min, Sec, MSec);
  Result := Hour;
end;

function TTimetable.GetHourTo: Word;
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
  DecodeDateTime(Self.GetEndtime.AsDateTime, Year, Month, Day, Hour, Min, Sec, MSec);
  Result := Hour;
end;

function TTimetable.GetMinFrom: Word;
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
  DecodeDateTime(Self.GetStarttime.AsDateTime, Year, Month, Day, Hour, Min, Sec, MSec);
  Result := Min;

end;

function TTimetable.GetMinTo: Word;
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
  DecodeDateTime(GetEndtime.AsDateTime, Year, Month, Day, Hour, Min, Sec, MSec);
  Result := Min;
end;

function TTimetable.GetPeriodFrom: Word;
begin
  Result := Trunc(GetMinFrom / FPeriodMins);
end;

function TTimetable.GetPeriodMins: Word;
begin
  Result := FPeriodMins
end;

function TTimetable.GetPeriodTo: Word;
begin
  Result := Trunc(GetMinTo / FPeriodMins);
end;

procedure TTimetable.SetDateFrom(const Value: TDateTime);
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  lYear, lMonth, lDay: Word;
begin
  if Value <> DateFrom then
  begin
    DecodeDateTime(GetStarttime.AsDateTime, Year, Month, Day, Hour, Min, Sec, MSec);
    DecodeDate(Value, lYear, lMonth, lDay);
    GetStarttime.AsDateTime := EncodeDateTime(lYear, lMonth, lDay, Hour, Min, Sec, MSec);

    if DateTo < Self.DateFrom then
      DateTo := Self.DateFrom;

    BindManager.Notify('DateFrom');

    CheckTimeFromTo;
  end;
end;

procedure TTimetable.SetDateTo(const Value: TDateTime);
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  lYear, lMonth, lDay: Word;
begin
  if Value <> DateTo then
  begin
    DecodeDateTime(Self.GetEndtime.AsDateTime, Year, Month, Day, Hour, Min, Sec, MSec);
    DecodeDate(Value, lYear, lMonth, lDay);
    GetEndtime.AsDateTime := EncodeDateTime(lYear, lMonth, lDay, Hour, Min, Sec, MSec);
    if DateTo < DateFrom then
      DateFrom := DateTo;

    BindManager.Notify('DateTo');
  end;
end;

procedure TTimetable.SetHourFrom(const Value: Word);
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
  if Value <> HourFrom then
  begin
    DecodeDateTime(GetStarttime.AsDateTime, Year, Month, Day, Hour, Min, Sec, MSec);
    GetStarttime.AsDateTime := EncodeDateTime(Year, Month, Day, Value, Min, 0, 0);
    CheckTimeFromTo;

    BindManager.Notify('HourFrom');
  end;
end;

procedure TTimetable.SetHourTo(const Value: Word);
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
  if Value <> HourTo then
  begin
    DecodeDateTime(Self.GetEndtime.AsDateTime, Year, Month, Day, Hour, Min, Sec, MSec);
    GetEndtime.AsDateTime := (EncodeDateTime(Year, Month, Day, Value, Min, 0, 0));

    BindManager.Notify('HourTo');
  end;
end;

procedure TTimetable.SetMinFrom(const Value: Word);
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
  if Value <> MinFrom then
  begin
    DecodeDateTime(Self.GetStarttime.AsDateTime, Year, Month, Day, Hour, Min, Sec, MSec);
    GetStarttime.AsDateTime := (EncodeDateTime(Year, Month, Day, Hour, Value, 0, 0));
    CheckTimeFromTo;
    BindManager.Notify('MinFrom');
    BindManager.Notify('PeriodFrom');
  end;
end;

procedure TTimetable.SetMinTo(const Value: Word);
var
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
begin
  if Value <> MinTo then
  begin
    DecodeDateTime(GetEndtime.AsDateTime, Year, Month, Day, Hour, Min, Sec, MSec);
    GetEndtime.AsDateTime := (EncodeDateTime(Year, Month, Day, Hour, Value, 0, 0));
    // CheckTimeFromTo;
    BindManager.Notify('MinTo');
    BindManager.Notify('PeriodTo');
  end;

end;

procedure TTimetable.SetPeriodFrom(const Value: Word);
begin
  if ((Value * FPeriodMins) <> GetMinFrom) then
  begin
    SetMinFrom(Value * FPeriodMins)
  end;
end;

procedure TTimetable.SetPeriodMins(const Value: Word);
begin
  FPeriodMins := Value
end;

procedure TTimetable.SetPeriodTo(const Value: Word);
begin
  SetMinTo(Value * FPeriodMins)
end;

end.

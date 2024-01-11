unit Janua.Core.Stats;

interface

type
  TJanuaListLargeInt = record
  private
    FItems: TArray<Int64>;
  private
    FMax: Int64;
    FMean: Double;
    FMin: Int64;
    FDev: Double;
    FSum: Int64;
    procedure SetDev(const Value: Double);
    procedure SetMax(const Value: Int64);
    procedure SetMean(const Value: Double);
    procedure SetMin(const Value: Int64);
    procedure SetItems(const Value: TArray<Int64>);
    procedure SetSum(const Value: Int64);
    function GetCount: integer;
  public
    procedure Add(const aItem: Int64);
    procedure Clean;
  public
    property Mean: Double read FMean write SetMean;
    property Dev: Double read FDev write SetDev;
    property Min: Int64 read FMin write SetMin;
    property Max: Int64 read FMax write SetMax;
    property Sum: Int64 read FSum write SetSum;
    property Count: integer read GetCount;
  public
    property Items: TArray<Int64> read FItems write SetItems;
  end;

implementation

uses System.Math;

{ TJanuaListLargeInt }

procedure TJanuaListLargeInt.Add(const aItem: Int64);
var
  LItem: Int64;
  LDelta: Extended;
  LI: integer;
begin
  LI := Length(self.FItems);
  SetLength(self.FItems, LI + 1);
  self.FItems[LI] := aItem;

  self.FSum := 0;

  for LItem in self.FItems do
    Inc(FSum, LItem);

  self.FMean := self.FSum / (LI + 1);

  if LI > 0 then
  begin
    LDelta := 0;
    for LItem in self.FItems do
      LDelta := LDelta + sqr(LItem - self.FMean);
    FDev := sqrt(LDelta / LI);
  end
  else
    self.FDev := 0;

  FMin := System.MaxLongInt;

  for LItem in self.FItems do
    FMin := System.Math.Min(FMin, LItem);

  FMax := 0;

  for LItem in self.FItems do
    FMax := System.Math.Max(FMax, LItem);

end;

procedure TJanuaListLargeInt.Clean;
begin
  SetLength(self.FItems, 0);
  self.FMax := 0;
  self.FMean := 0.0;
  self.FMin := 0;
  self.FDev := 0.0;
  self.FSum := 0;
end;

function TJanuaListLargeInt.GetCount: integer;
begin
  Result := Length(self.FItems)
end;

procedure TJanuaListLargeInt.SetDev(const Value: Double);
begin
  FDev := Value;
end;

procedure TJanuaListLargeInt.SetItems(const Value: TArray<Int64>);
begin
  FItems := Value;
end;

procedure TJanuaListLargeInt.SetMax(const Value: Int64);
begin
  FMax := Value;
end;

procedure TJanuaListLargeInt.SetMean(const Value: Double);
begin
  FMean := Value;
end;

procedure TJanuaListLargeInt.SetMin(const Value: Int64);
begin
  FMin := Value;
end;

procedure TJanuaListLargeInt.SetSum(const Value: Int64);
begin
  FSum := Value;
end;

end.

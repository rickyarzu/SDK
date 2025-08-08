unit PhoenixMocks;

interface

uses System.Classes;

{$M+}

type
  TPhoenixMocks = class(TComponent)
  private
    FReport2: TStrings;
    FReport3: TStrings;
    FReport1: TStrings;
    FUsers: TStrings;
    FConf: TStrings;
    procedure SetConf(const Value: TStrings);
    procedure SetReport1(const Value: TStrings);
    procedure SetReport2(const Value: TStrings);
    procedure SetReport3(const Value: TStrings);
    procedure SetUsers(const Value: TStrings);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property Conf: TStrings read FConf write SetConf;
    property Report1: TStrings read FReport1 write SetReport1;
    property Report2: TStrings read FReport2 write SetReport2;
    property Report3: TStrings read FReport3 write SetReport3;
    property Users: TStrings read FUsers write SetUsers;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Phoenix', [TPhoenixMocks]);
end;

{ TPhoenixMocks }

constructor TPhoenixMocks.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TPhoenixMocks.Destroy;
begin

  inherited;
end;

procedure TPhoenixMocks.SetConf(const Value: TStrings);
begin
  FConf := Value;
end;

procedure TPhoenixMocks.SetReport1(const Value: TStrings);
begin
  FReport1 := Value;
end;

procedure TPhoenixMocks.SetReport2(const Value: TStrings);
begin
  FReport2 := Value;
end;

procedure TPhoenixMocks.SetReport3(const Value: TStrings);
begin
  FReport3 := Value;
end;

procedure TPhoenixMocks.SetUsers(const Value: TStrings);
begin
  FUsers := Value;
end;

end.

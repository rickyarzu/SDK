unit udmEndPeriod;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, Janua.Unidac.Connection, Uni;

type
  TdmEndPeriod = class(TDataModule)
    spChiusuraCE: TUniStoredProc;
    spChiusuraCliFor: TUniStoredProc;
    spUtilePerdita: TUniStoredProc;
    spChiusuraBilancio: TUniStoredProc;
    spAperturaBilancio: TUniStoredProc;
    OraSession1: TJanuaUniConnection;
  private
    FPeriod: WideString;
    procedure SetPeriod(const Value: WideString);
    { Private declarations }
  public
    { Public declarations }
    procedure ChiusuraCE;
    procedure ChiusuraCliFor;
    procedure CalcoloUtilePerdita;
    procedure ChiusuraBilancio;
    procedure AperturaBilancio;
  published
    property Period: WideString read FPeriod write SetPeriod;
  end;

var
  dmEndPeriod: TdmEndPeriod;

implementation

{$R *.dfm}

{ TdmEndPeriod }



procedure TdmEndPeriod.SetPeriod(const Value: WideString);
begin
  FPeriod := Value;
end;

procedure TdmEndPeriod.AperturaBilancio;
begin
     spAperturaBilancio.Prepare;
     spAperturaBilancio.ParamByName('p_year').asWideString := FPeriod;
     spAperturaBilancio.Execute;
end;

procedure TdmEndPeriod.ChiusuraBilancio;
begin
     spChiusuraBilancio.Prepare;
     spChiusuraBilancio.ParamByName('p_year').asWideString := FPeriod;
     spChiusuraBilancio.Execute;
end;

procedure TdmEndPeriod.CalcoloUtilePerdita;
begin
     spUtilePerdita.Prepare;
     spUtilePerdita.ParamByName('p_year').asWideString := FPeriod;
     spUtilePerdita.Execute;
end;

procedure TdmEndPeriod.ChiusuraCE;
begin
     spChiusuraCE.Prepare;
     spChiusuraCE.ParamByName('p_year').asWideString := FPeriod;
     spChiusuraCE.Execute;
end;

procedure TdmEndPeriod.ChiusuraCliFor;
begin
     spChiusuraCliFor.Prepare;
     spChiusuraCliFor.ParamByName('p_year').asWideString := FPeriod;
     spChiusuraCliFor.Execute;
end;

end.

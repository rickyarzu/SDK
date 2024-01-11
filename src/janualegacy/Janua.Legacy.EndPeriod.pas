unit Janua.Legacy.EndPeriod;

interface

uses
  System.Classes, Uni, Janua.Unidac.Connection, udmEndPeriod, Data.DB;

type
  TJanuaEndPeriod = class(TComponent)
  private
    FPeriod: String;
    FField: TField;
    FdmEndPeriod: TdmEndPeriod;
    FSession: TJanuaUniConnection;
    FDatasource: TDataSource;
    FUseDataSource: boolean;
    procedure SetPeriod(const Value: String);
    procedure CheckDatamodule;
    procedure DestroyDataModule;
    procedure SetSession(const Value: TJanuaUniConnection);
    procedure SetDatasource(const Value: TDataSource);
    procedure SetDatasourcePeriod;
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure ChiusuraCE;
    procedure ChiusuraCliFor;
    procedure CalcoloUtilePerdita;
    procedure ChiusuraBilancio;
    procedure AperturaBilancio;
  published
    { Published declarations }
    property Period: String read FPeriod write SetPeriod;
    property Session: TJanuaUniConnection read FSession write SetSession;
    property Datasource: TDataSource read FDatasource write SetDatasource;
  end;

procedure Register;

implementation

uses System.SysUtils;

procedure Register;
begin
  RegisterComponents('Januaproject Accounting', [TJanuaEndPeriod]);
end;

{ TJanuaEndPeriod }

procedure TJanuaEndPeriod.AperturaBilancio;
begin
  try
    CheckDatamodule;
    FdmEndPeriod.AperturaBilancio;
  finally
    DestroyDataModule;
  end;
end;

procedure TJanuaEndPeriod.CalcoloUtilePerdita;
begin
  try
    CheckDatamodule;
    FdmEndPeriod.CalcoloUtilePerdita;
  finally
    DestroyDataModule;
  end;
end;

procedure TJanuaEndPeriod.CheckDatamodule;
begin
  if not assigned(FdmEndPeriod) then
    FdmEndPeriod := TdmEndPeriod.Create(self);
  SetDatasourcePeriod;
  FdmEndPeriod.Period := FPeriod;
  // FdmEndPeriod.JanuaSessionSource1.OraSession := FSession;
end;

procedure TJanuaEndPeriod.ChiusuraBilancio;
begin
  try
    CheckDatamodule;
    FdmEndPeriod.ChiusuraBilancio;
  finally
    DestroyDataModule;
  end;
end;

procedure TJanuaEndPeriod.ChiusuraCE;
begin
  try
    CheckDatamodule;
    FdmEndPeriod.ChiusuraCE;
  finally
    DestroyDataModule;
  end;
end;

procedure TJanuaEndPeriod.ChiusuraCliFor;
begin
  try
    CheckDatamodule;
    FdmEndPeriod.ChiusuraCliFor;
  finally
    DestroyDataModule;
  end;
end;

procedure TJanuaEndPeriod.DestroyDataModule;
begin
  if assigned(FdmEndPeriod) then
    FreeAndNil(FdmEndPeriod);
end;

procedure TJanuaEndPeriod.SetDatasource(const Value: TDataSource);
begin
  FDatasource := Value;
  if assigned(FDatasource) then
    SetDatasourcePeriod;
end;

procedure TJanuaEndPeriod.SetDatasourcePeriod;
begin
  FUseDataSource := False;
  if assigned(FDatasource) then
    if assigned(FDatasource.DataSet) then
      if FDatasource.DataSet.Active then
      begin
        FField := FDatasource.DataSet.FindField('ESERCIZIO_COD');
        if assigned(FField) then
        begin
          FPeriod := FField.AsString;
          FUseDataSource := True;
        end;
      end;
end;

procedure TJanuaEndPeriod.SetPeriod(const Value: String);
begin
  FPeriod := Value;
end;

procedure TJanuaEndPeriod.SetSession(const Value: TJanuaUniConnection);
begin
  FSession := Value;
end;

end.

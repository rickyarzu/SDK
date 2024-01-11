unit Janua.Postgres.Impl;

interface

uses
  // System
  System.Classes, System.SysUtils,
  // DB Libraries
  Datasnap.DBClient, Data.DB, MemData, MemDS, Uni,
  // Janua
  Janua.Cms.Types, Janua.Core.Types, Janua.Core.Functions, Janua.Core.DB, Janua.Uni.Impl, Janua.Uni.Intf,
  Janua.Core.Classes, Janua.Core.DB.Intf;

type

  TPgDatasetFunctions = class(TUniDatasetFunctions, IJanuaUniDatasetFunctions, IJanuaPgDatasetFunctions)
  public
    procedure OpenThreadedDataset(aDataset: TDataset; aDatasource: TDataSource = nil;
      aDoRaise: boolean = true; aCallBackProc: TProc = nil); override;
  end;

  TJanuaPostgresServerFunctions = class(TJanuaUniServerFunctions, IJanuaServerFunctions,
    IJanuaPgServerFunctions)
  public
    procedure OpenThreadedDataset(aDataset: TDataset; aDatasource: TDataSource = nil;
      aDoRaise: boolean = true; aCallBackProc: TProc = nil); override;
  end;

implementation

uses System.StrUtils, Janua.Application.Framework, Janua.Core.AsyncTask;

{ ************************** qryCountries Server Functions *********************
  select * from  jpublic.countries
  where
  (country_id = :country_id or :country_id = 0)
  and
  (iso_country_code = :country_code or :country_code = '*')
  and
  (Upper(country_name) = Upper(:country_name) or :country_name = '*')
}

{ TJanuaPostgresServerFunctions }

procedure TJanuaPostgresServerFunctions.OpenThreadedDataset(aDataset: TDataset; aDatasource: TDataSource;
  aDoRaise: boolean; aCallBackProc: TProc);
begin
  inherited;

end;

{ TPgDatasetFunctions }

procedure TPgDatasetFunctions.OpenThreadedDataset(aDataset: TDataset; aDatasource: TDataSource;
  aDoRaise: boolean; aCallBackProc: TProc);
begin
  if Assigned(aDataset) then
    Async.Run<boolean>(
      function: boolean
      begin
        // This is the "background" anonymous method. Runs in the
        // background thread, and its result is passed
        // to the "success" callback.
        // In this case the result is a String.
        MonitorEnter(aDataset);
        try
          Opendataset(aDataset);
          Result := aDataset.Active;
        finally
          MonitorExit(aDataset);
        end;
      end,
      procedure(const aValue: boolean)
      begin
        // This is the "success" callback. Runs in the UI thread and
        // gets the result of the "background" anonymous method.
        if aValue and Assigned(aCallBackProc) then
          aCallBackProc
      end,
      procedure(const Ex: Exception)
      begin
        // This is the "error" callback.
        // Runs in the UI thread and is called only if the
        // "background" anonymous method raises an exception.
        RaiseException('OpenThreadedDataset (' + aDataset.Name + ')', Ex, nil)
      end);

end;

initialization

try
  // TPgDatasetFunctions = class(  IJanuaPgDatasetFunctions)
  TJanuaApplicationFactory.RegisterClass(IJanuaPgDatasetFunctions, TPgDatasetFunctions);
  // TJanuaPostgresServerFunctions = class(IJanuaPgServerFunctions)
  TJanuaApplicationFactory.RegisterClass(IJanuaPgServerFunctions, TJanuaPostgresServerFunctions);
except
  on E: Exception do
    raise Exception.Create('Janua.Uni.Impl.initialization ' + E.Message);
end;

finalization

end.

unit Janua.Firebird.Impl;

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

  TFbDatasetFunctions = class(TUniDatasetFunctions, IJanuaUniDatasetFunctions, IJanuaFbDatasetFunctions)
  public
    procedure OpenThreadedDataset(aDataset: TDataset; aDatasource: TDataSource = nil;
      aDoRaise: boolean = true; aCallBackProc: TProc = nil); override;
  end;

  TJanuaFirebirdServerFunctions = class(TJanuaUniServerFunctions, IJanuaServerFunctions,
    IJanuaFbServerFunctions)
  public
    procedure OpenThreadedDataset(aDataset: TDataset; aDatasource: TDataSource = nil;
      aDoRaise: boolean = true; aCallBackProc: TProc = nil); override;
  end;

implementation

uses System.StrUtils, Janua.Application.Framework, Janua.Core.AsyncTask;

{ TJanuaFirebirdServerFunctions }

procedure TJanuaFirebirdServerFunctions.OpenThreadedDataset(aDataset: TDataset; aDatasource: TDataSource;
  aDoRaise: boolean; aCallBackProc: TProc);
begin
  inherited
end;

{ TFbDatasetFunctions }

procedure TFbDatasetFunctions.OpenThreadedDataset(aDataset: TDataset; aDatasource: TDataSource;
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
  TJanuaApplicationFactory.RegisterClass(IJanuaFbDatasetFunctions, TFbDatasetFunctions);
  // TJanuaPostgresServerFunctions = class(IJanuaPgServerFunctions)
  TJanuaApplicationFactory.RegisterClass(IJanuaFbServerFunctions, TJanuaFirebirdServerFunctions);
except
  on E: Exception do
    raise Exception.Create('Janua.Uni.Impl.initialization ' + E.Message);
end;

finalization

end.

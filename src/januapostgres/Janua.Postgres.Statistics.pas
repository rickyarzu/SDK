unit Janua.Postgres.Statistics;

interface

uses
  // System
  System.SysUtils, System.Classes, System.Json, System.Generics.Collections, System.Generics.Defaults, System.Math,
  // Janua
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Json, Janua.Core.Statistics, udmPgStatistics;

type
  TJanuaPgStatisticsServer = class(TJanuaCustomStatisticsServer)
  private
    DM: udmPgStatistics.TdmPgStatistics;
    procedure ConnectDatasets;
  protected // inherited from Custom Server Class ......................................................................
    function InternalCheckSessionKey: boolean; override;
    procedure SetUserSessionProfile; override;
    procedure DestroyDataModule(Force: boolean = false); override;
    procedure CreateDataModule; override;
    procedure AssignDatasets; override;
  protected // inherited from Statistics Server ........................................................................
    FTempQuery: TStatQuery;
    procedure InternalOpenQuery(aQuery: TStatQuery); overload; override;
    procedure InternalOpenQuery; overload; override;
    function InternalTestQuery(aQuery: TStatQuery): boolean; override;
    function InternalSaveSchema: boolean; override;
    function InternalLoadSchema: boolean; override;
  end;

implementation

uses
  Janua.Core.System;

{ TJanuaPgStatisticsServer }

procedure TJanuaPgStatisticsServer.AssignDatasets;
begin
  inherited;
  self.WriteLog('TJanuaServerHealthBooking.AssignDatasets start');
  if Assigned(DM) then
  begin
    try
      self.ConnectDatasets;
    except
      on e: exception do
      begin
        self.WriteError('TJanuaServerHealthBooking.InternalSetServices', e);
      end;
    end;
  end
  else
    raise exception.Create(self.Name + '.AssignDatasets DataModule not assigned');

  self.WriteLog('TJanuaServerHealthBooking.AssignDatasets end');
end;

procedure TJanuaPgStatisticsServer.ConnectDatasets;
begin
  // usare isServer in ogni caso in cui si acceda a dataset locali oltreché posizionati su un Server
  // Esempio una applicazione VCL con ClientDataset e Datasource connesse.
  self.WriteLog('TJanuaServerHealthBooking.ConnectDatasets start');
  try
    if not self.KeepAlive or not self.IsServer then
    begin
      self.dsSchemas.AssignDataset(DM.qryQueriesSchemas);
    end
    else
    begin
      self.dsSchemas.MemDataset := DM.qryQueriesSchemas;
    end;

    self.FActive := True;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaServerHealthBooking.ConnectDatasets', e);
    end;
  end;
end;

procedure TJanuaPgStatisticsServer.CreateDataModule;
begin
  inherited;
  self.WriteLog('TJanuaPgStatisticsServer.JanuaServerSystem start');
  if not Assigned(JanuaServerSystem) then
    raise exception.Create('TJanuaPgStatisticsServer.CreateDataModule JanuaServerSystem is nil');

  self.WriteLog('TJanuaPgStatisticsServer.Assigned(DM) start');
  if not Assigned(DM) then
  begin
    self.WriteLog('TJanuaPgStatisticsServer.udmHealthBooking.TdmHealthBooking.Create(self');
    DM := udmPgStatistics.TdmPgStatistics.Create(self);
    self.IDM := DM;
    self.WriteLog('TJanuaPgStatisticsServer.JanuaCoreLogger');
    DM.JanuaCoreLogger := (self.JanuaLogger as TJanuaCoreLogger);
    self.WriteLog('TJanuaPgStatisticsServer.Session_id > 0');
    if self.FJanuaServerSession.Session_id > 0 then
      DM.ServerSession := self.JanuaServerSystem.JanuaServerSession
    else if JanuaServerSystem.JanuaServerSession.Session_id > 0 then
    begin
      DM.ServerSession := self.JanuaServerSystem.JanuaServerSession;
      DM.SessionUID := self.SessionID;
      DM.SessionKey := self.SessionKey;
    end;
    self.WriteLog('TJanuaPgStatisticsServer.ConnectDatasets');
    if self.KeepAlive then
      self.AssignDatasets;

    {
      DM.User := self.JanuaServerSystem.UserProfile.User;
      DM.updateMessageCount;
      FMessageCount := a.MessageCount;
    }
  end;
end;

procedure TJanuaPgStatisticsServer.DestroyDataModule(Force: boolean);
begin
  inherited;
  if ((not self.KeepAlive) or Force) and Assigned(DM) then
  begin
    JanuaFree(DM);
    self.DM := nil;
    self.IDM := nil;
  end;
  inherited;
end;

function TJanuaPgStatisticsServer.InternalCheckSessionKey: boolean;
begin
  Result := false;
  // self.SessionKey := aKey;
  if (self.SessionKey <> '') and Assigned(self.DM) then
  begin
    Result := self.DM.CheckSessionKey(self.SessionKey);
    if Result then
      self.FUserProfile := self.DM.UserProfile;
  end;
end;

function TJanuaPgStatisticsServer.InternalLoadSchema: boolean;
begin
  { TODO : Terminare Procedura Statistic Server Internal Schema }
  Result := false;
end;

procedure TJanuaPgStatisticsServer.InternalOpenQuery(aQuery: TStatQuery);
begin
  { TODO : Terminare Procedura TJanuaPgStatisticsServer.InternalOpenQuery2 }
end;

procedure TJanuaPgStatisticsServer.InternalOpenQuery;
begin
  { TODO : Terminare Procedura TJanuaPgStatisticsServer.InternalOpenQuery1 }
end;

function TJanuaPgStatisticsServer.InternalSaveSchema: boolean;
begin
  { TODO : Terminare Procedura TJanuaPgStatisticsServer.InternalSaveSchema }
  Result := false;
end;

function TJanuaPgStatisticsServer.InternalTestQuery(aQuery: TStatQuery): boolean;
begin
  { TODO : Terminare Procedura TJanuaPgStatisticsServer.InternalTestQuery }
  Result := false;
end;

procedure TJanuaPgStatisticsServer.SetUserSessionProfile;
begin
  inherited;

end;

end.

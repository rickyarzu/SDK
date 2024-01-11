unit Janua.Postgres.Servers;

interface

uses
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.DB, Janua.Core.Servers, udmJanuaPgConnections;

type
  TJanuaPgConnection = class(TJanuaCustomDBConnection)
  strict protected
    FPgDataModule: udmJanuaPgConnections.TdmJanuaPgConnections;
    procedure CreateDataModule; override;
    procedure DestroyDataModule; override;
  end;

implementation

{ TJanuaPostgresConnection }

procedure TJanuaPgConnection.CreateDataModule;
begin
  inherited;
  FPgDataModule := TdmJanuaPgConnections.Create(self);
  self.FDataModule := self.FPgDataModule;
end;

procedure TJanuaPgConnection.DestroyDataModule;
begin
  inherited;
  FPgDataModule.DisposeOf;
  FPgDataModule := nil;
  FDataModule := nil;
end;

end.

unit Janua.Oracle.System;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Types, Janua.Core.Classes;

type
  TJanuaOracleSystem = class(TComponent)
  private
    FServerList: TJanuaServerRecordConfs;
    FNet: boolean;
    FPooling: boolean;
    procedure SetServerList(const Value: TJanuaServerRecordConfs);
    procedure SetNet(const Value: boolean);
    procedure SetPooling(const Value: boolean);
    { Private declarations }

  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure Refresh;
  published
    { Published declarations }
    property ServerList: TJanuaServerRecordConfs read FServerList write SetServerList;
    property Net: boolean read FNet write SetNet;
    property Pooling: boolean read FPooling write SetPooling;
  end;

implementation

uses Janua.Application.Framework;

{ TJanuaOracleSystem }

constructor TJanuaOracleSystem.Create(AOwner: TComponent);
begin
  Refresh;
  inherited Create(AOwner);
end;

procedure TJanuaOracleSystem.Refresh;
begin
  FServerList := TJanuaCoreOS.ReadParam('ORACLE', 'SERVERLIST',
    TJanuaServerRecordConfs.Create(TJanuaApplication.JanuaServerConf));
  FNet := TJanuaCoreOS.ReadParam('ORACLE', 'NET', true);
  FPooling := TJanuaCoreOS.ReadParam('ORACLE', 'Pooling', true);
end;

procedure TJanuaOracleSystem.SetNet(const Value: boolean);
begin
  TJanuaCoreOS.WriteParam('ORACLE', 'NET', Value);
  FNet := Value;
end;

procedure TJanuaOracleSystem.SetPooling(const Value: boolean);
begin
  TJanuaCoreOS.WriteParam('ORACLE', 'Pooling', Value);
  FPooling := Value;
end;

procedure TJanuaOracleSystem.SetServerList(const Value: TJanuaServerRecordConfs);
begin
  TJanuaCoreOS.WriteParam('ORACLE', 'SERVERLIST', Value);
  FServerList := Value;
end;

end.

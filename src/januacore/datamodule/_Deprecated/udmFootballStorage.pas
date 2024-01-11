unit udmFootballStorage;

interface

uses
  System.SysUtils, System.Classes, Janua.Football.Intf, udmJanuaCoreStorage;

type
  TdmFootballStorage = class(TdmJanuaCoreStorage)
  public
    // FSessionKey: string;
    // function getUser: TJanuaUser;
    // procedure SetisServer(const Value: boolean);
    // procedure SetKeepAlive(const Value: boolean);
    // procedure SetSchemaID(const Value: integer);
    // procedure SetSessionUID(const Value: Int64);
    // procedure SetUser(const Value: TJanuaUser);
    // procedure SetUserID(const Value: integer);
    // procedure SetUserProfile(const Value: TJanuaRecordUserProfile);
    // procedure SetSessionKey(const Value: string); override;

  end;

var
  dmFootballStorage: TdmFootballStorage;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TDataModule2 }

{ TDataModule2 }

end.

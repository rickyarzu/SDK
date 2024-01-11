unit Janua.CarService.FMX.dmDriverClient;

interface

uses
  System.SysUtils, System.Classes,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent, System.Sensors,
  System.Sensors.Components,
  // Janua
  Janua.Core.Commons,  Janua.Core.Classes, Janua.Core.Cloud, Janua.Components.Maps, Janua.Core.Types,
  Janua.Anagraph.Types;

type
  TdmCarserviceFMXDriverClient = class(TDataModule)
    JanuaGoogleGeoCoding1: TJanuaGoogleGeoCoding;
    NetHTTPRequest1: TNetHTTPRequest;
    NetHTTPClient1: TNetHTTPClient;
    LocationSensor1: TLocationSensor;
  private
    FCoordinates: TJanuaRecordCoordinates;
    FLocalCoordinates: TLocalCoordinates;
    Fmc: TJanuaCoordinates;
    FNewCoordinates: TJanuaRecordCoordinates;
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetLocalCoordinates(const Value: TLocalCoordinates);
    procedure Setmc(const Value: TJanuaCoordinates);
    procedure SetNewCoordinates(const Value: TJanuaRecordCoordinates);
    { Private declarations }
  public
    property LocalCoordinates: TLocalCoordinates read FLocalCoordinates write SetLocalCoordinates;
    property mc: TJanuaCoordinates read Fmc write Setmc;
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
    property NewCoordinates: TJanuaRecordCoordinates read FNewCoordinates write SetNewCoordinates;
  end;

var
  dmCarserviceFMXDriverClient: TdmCarserviceFMXDriverClient;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

{ TdmCarserviceFMXDriverClient }

procedure TdmCarserviceFMXDriverClient.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FCoordinates := Value;
end;

procedure TdmCarserviceFMXDriverClient.SetLocalCoordinates(const Value: TLocalCoordinates);
begin
  FLocalCoordinates := Value;
end;

procedure TdmCarserviceFMXDriverClient.Setmc(const Value: TJanuaCoordinates);
begin
  Fmc := Value;
end;

procedure TdmCarserviceFMXDriverClient.SetNewCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FNewCoordinates := Value;
end;

end.

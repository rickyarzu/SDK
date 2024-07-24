unit uFrmMarkerChangePosition;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniHTMLFrame, UniFSMap,
  uniBasicGrid, uniDBGrid, uniLabel, Data.DB, Datasnap.DBClient, uniButton,
  uniBitBtn, UniFSButton;

type
  TfrmMarkerChangePosition = class(TUniForm)
    map: TUniFSMap;
    pnl1: TUniPanel;
    lbl1: TUniLabel;
    dbg: TUniDBGrid;
    CDS: TClientDataSet;
    intgrfldCDSid: TIntegerField;
    strngfldCDSLat: TStringField;
    strngfldCDSLongitude: TStringField;
    DS: TDataSource;
    btnCriaMarcadores: TUniFSButton;
    procedure UniFormCreate(Sender: TObject);
    procedure dbgBodyClick(Sender: TObject);
    procedure btnCriaMarcadoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CreateMarkersFixed;
  end;

function frmMarkerChangePosition: TfrmMarkerChangePosition;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule;

function frmMarkerChangePosition: TfrmMarkerChangePosition;
begin
  Result := TfrmMarkerChangePosition(UniMainModule.GetFormInstance(TfrmMarkerChangePosition));
end;

procedure TfrmMarkerChangePosition.btnCriaMarcadoresClick(Sender: TObject);
begin
  CreateMarkersFixed;
  dbg.Enabled := True;
end;

procedure TfrmMarkerChangePosition.CreateMarkersFixed;
var
  Marker: TMarker;
begin
  map.DeleteAllMarker;

  Marker := TMarker.Create;
  Marker.Id := '1';
  Marker.Lat := '37.421249412828054';
  Marker.Lng := '-122.09226073324785';
  Marker.Animation := TMarkerAnimation.DROP;
  map.AddMarker(Marker);

  Marker := TMarker.Create;
  Marker.Id := '2';
  Marker.Lat := '37.42332844132373';
  Marker.Lng := '-122.09098400175677';
  Marker.Animation := TMarkerAnimation.DROP;
  map.AddMarker(Marker);

  Marker := TMarker.Create;
  Marker.Id := '3';
  Marker.Lat := '37.42368630106121';
  Marker.Lng := '-122.08832325041399';
  Marker.Animation := TMarkerAnimation.DROP;
  map.AddMarker(Marker);

  Marker := TMarker.Create;
  Marker.Id := '4';
  Marker.Lat := '37.42319211335481';
  Marker.Lng := '-122.0852977186452';
  Marker.Animation := TMarkerAnimation.DROP;
  map.AddMarker(Marker);

  Marker := TMarker.Create; //Marker moved here
  Marker.Id := '5';
  Marker.Lat := '37.42098526982901';
  Marker.Lng := '-122.08674611151324';
  Marker.Labl := '';
  Marker.Animation := TMarkerAnimation(DROP);
  Marker.Draggable := False;
  map.AddMarker(Marker);

  map.SetFitBoundsAll;
end;

procedure TfrmMarkerChangePosition.dbgBodyClick(Sender: TObject);
begin
  map.SetMarkerPosition(CDS.FieldByName('IdMarker').AsString,
    CDS.FieldByName('Latitude').AsString,
    CDS.FieldByName('Longitude').AsString);
end;

procedure TfrmMarkerChangePosition.UniFormCreate(Sender: TObject);
begin
  map.InitMap;

  CDS.CreateDataSet;
  CDS.AppendRecord([5,'37.421206809181555','-122.08782972395525']);
  CDS.AppendRecord([5,'37.4219566298191','-122.0890098959218']);
  CDS.AppendRecord([5,'37.42287685397602','-122.08953560888872']);
  CDS.AppendRecord([5,'37.42380558726028','-122.0900184065114']);
  CDS.AppendRecord([5,'37.424632064991286','-122.09096254408465']);
  CDS.Open;
end;

end.

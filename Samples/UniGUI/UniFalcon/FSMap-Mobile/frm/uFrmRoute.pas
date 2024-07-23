unit uFrmRoute;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniPanel, uniHTMLFrame, UniFSMap, UnimFSMap, uniGUIBaseClasses, uniButton,
  uniBitBtn, unimBitBtn, uniLabel, unimLabel, unimPanel;

type
  TfrmRoute = class(TUnimForm)
    btnCriarRota: TUnimBitBtn;
    map: TUnimFSMap;
    pnlBottom: TUnimPanel;
    lbl1: TUnimLabel;
    lbl2: TUnimLabel;
    lblDistance: TUnimLabel;
    lblDuration: TUnimLabel;
    procedure UnimFormCreate(Sender: TObject);
    procedure btnCriarRotaClick(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmRoute: TfrmRoute;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UniJsonDataObjects;

function frmRoute: TfrmRoute;
begin
  Result := TfrmRoute(UniMainModule.GetFormInstance(TfrmRoute));
end;

procedure TfrmRoute.btnCriarRotaClick(Sender: TObject);
var
  DirectionsRequest: TDirectionsRequest;
begin
  map.DeleteAllDirections;

  DirectionsRequest := TDirectionsRequest.Create;
  try
    DirectionsRequest.Origin := 'Nova Mutum, MT';
    DirectionsRequest.Destination := 'São Paulo, SP';
    DirectionsRequest.Travelodel := TTravelMode.DRIVING;
    DirectionsRequest.UnitSystem := TUnitSystem.METRIC;
    DirectionsRequest.ProvideRouteAlternatives := False;
    DirectionsRequest.AvoidHighways := False;
    DirectionsRequest.AvoidTolls := False;
    DirectionsRequest.Draggable := False;

    map.Route(DirectionsRequest);
  finally
    FreeAndNil(DirectionsRequest);
  end;
end;

procedure TfrmRoute.mapAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
var
  vJSON: string;
  vI: Integer;
  Obj: TJsonObject;
begin
  if EventName = 'fs_directions_changed' then
  begin
    vJSON := Params.Values['directionsDisplay'];

    Obj := TJsonBaseObject.Parse(vJSON) as TJsonObject;
    try
      lblDistance.Text := Obj.S['distancetext'];
      lblDuration.Text := Obj.S['durationtext'];
    finally
      Obj.Free;
    end;
  end;

end;

procedure TfrmRoute.UnimFormCreate(Sender: TObject);
begin
  map.InitMap;
end;

initialization
  RegisterClass(TfrmRoute);

end.

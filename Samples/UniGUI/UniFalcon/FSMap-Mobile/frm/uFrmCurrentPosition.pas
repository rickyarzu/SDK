unit uFrmCurrentPosition;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniPanel, uniHTMLFrame, UniFSMap, UnimFSMap, uniGUIBaseClasses, uniButton,
  unimButton;

type
  TfrmCurrentPosition = class(TUnimForm)
    btnGetCurrentPosition: TUnimButton;
    map: TUnimFSMap;
    procedure UnimFormCreate(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btnGetCurrentPositionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmCurrentPosition: TfrmCurrentPosition;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmCurrentPosition: TfrmCurrentPosition;
begin
  Result := TfrmCurrentPosition(UniMainModule.GetFormInstance(TfrmCurrentPosition));
end;

procedure TfrmCurrentPosition.btnGetCurrentPositionClick(Sender: TObject);
begin
  map.GetCurrentPosition;
end;

procedure TfrmCurrentPosition.mapAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
var
  Marker: TMarker;
begin
  if EventName = 'fs_get_current_position' then
  begin
    if Params['status_geo'].Value = 'denied' then
      ShowMessage('Access coordinates permission denied');

    if Params['status_geo'].Value = 'enabled' then
    begin
      ShowMessage('Lat: '+Params['lat'].Value+' Lng: '+Params['lng'].Value+' Accuracy: '+ Params['accuracy'].Value+' mt');

      map.SetCenter(Params['lat'].Value, Params['lng'].Value);

      Marker := TMarker.Create;
      Marker.Lat := Params['lat'].Value;
      Marker.Lng := Params['lng'].Value;
      map.AddMarker(Marker);
    end;
  end;
end;

procedure TfrmCurrentPosition.UnimFormCreate(Sender: TObject);
begin
  map.InitMap;
end;

initialization
  RegisterClass(TfrmCurrentPosition);

end.

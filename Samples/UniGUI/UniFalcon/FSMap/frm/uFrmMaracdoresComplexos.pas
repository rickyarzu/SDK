unit uFrmMaracdoresComplexos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniMemo, uniPanel, uniGUIBaseClasses,
  uniHTMLFrame, UniFSMap, uniEdit, uniCheckBox, uniRadioGroup, uniButton,
  uniBitBtn, uniSplitter;

type
  TfrmMarcadoresComplexos = class(TUniFrame)
    pnl1: TUniPanel;
    memLog: TUniMemo;
    lbl1: TUniLabel;
    map: TUniFSMap;
    rdgAnimation: TUniRadioGroup;
    chkDraggAble: TUniCheckBox;
    edtColor: TUniEdit;
    lbl2: TUniLabel;
    btnLimparMarcadores: TUniBitBtn;
    grpTypeMap: TUniRadioGroup;
    splBottom: TUniSplitter;
    procedure UniFrameCreate(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btnLimparMarcadoresClick(Sender: TObject);
    procedure grpTypeMapClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetLabelContent(Mark: TMarkerWithLabel);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfrmMarcadoresComplexos.btnLimparMarcadoresClick(Sender: TObject);
begin
  map.DeleteAllMarkerWithLabel;
end;

procedure TfrmMarcadoresComplexos.grpTypeMapClick(Sender: TObject);
begin
  map.MapType := TMapTypeId(grpTypeMap.ItemIndex);
end;

procedure TfrmMarcadoresComplexos.mapAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
var
  Mark: TMarkerWithLabel;
begin
  {Alguns exemplos dos eventos Ajax}
  if EventName = 'fs_map_click' then
    memLog.Lines.Add('Latitude: '+Params['lat'].Value+' - Longitude: '+Params['lng'].Value);
  if EventName = 'fs_map_dblclick' then
    memLog.Lines.Add('Lat: '+Params['lat'].Value+' - Lng: '+Params['lng'].Value);
  if EventName = 'fs_map_zoom_changed' then
    memLog.Lines.Add('Zoom Change: '+Params['zoom'].Value);
  if EventName = 'fs_map_zoom_changed' then
    memLog.Lines.Add('Zoom Change: '+Params['zoom'].Value);
  if EventName = 'fs_marker_click' then
    memLog.Lines.Add('Click Marker - Lat: '+Params['lat'].Value+' - Click Marker - Lng: '+Params['lng'].Value);

  if EventName = 'fs_map_click' then
  begin
    Mark := TMarkerWithLabel.Create; //Não precisa se preocupar em liberar os objetos, o FSMap cuida disso ;)
    Mark.Lat := Params['lat'].Value;
    Mark.Lng := Params['lng'].Value;
    Mark.IconColor := edtColor.Text;
    SetLabelContent(Mark);
    Mark.Animation := TMarkerAnimation(rdgAnimation.ItemIndex);
    Mark.Draggable := chkDraggAble.Checked;

    map.AddMarkerWithLabel(Mark);
  end;

end;

procedure TfrmMarcadoresComplexos.SetLabelContent(Mark: TMarkerWithLabel);
begin
  Randomize;

  Mark.LabelContent := FormatFloat('00',Random(99));
  Mark.LabelAncorLeft := 7;
  Mark.LabelAncorTop  := 35;
end;

procedure TfrmMarcadoresComplexos.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmMarcadoresComplexos);

end.

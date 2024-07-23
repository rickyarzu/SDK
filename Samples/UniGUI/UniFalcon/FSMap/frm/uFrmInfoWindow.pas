unit uFrmInfoWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSMap, uniButton, uniBitBtn, uniEdit, uniCheckBox, uniRadioGroup, uniLabel,
  uniMemo, Data.DB, Datasnap.DBClient, uniGUIApplication, uniSplitter,
  UniFSButton;

type
  TfrmInfoWindow = class(TUniFrame)
    pnl1: TUniPanel;
    memLog: TUniMemo;
    lbl1: TUniLabel;
    CDSMedia: TClientDataSet;
    btnVisualizar: TUniFSButton;
    CDSMarks: TClientDataSet;
    grpTypeMap: TUniRadioGroup;
    grpAnimation: TUniRadioGroup;
    splBottom: TUniSplitter;
    map: TUniFSMap;
    pnlMap: TUniPanel;
    btnMapTerrain: TUniFSButton;
    btnMapRoadmap: TUniFSButton;
    btnMapSatelite: TUniFSButton;
    btnMapHybrid: TUniFSButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnLimparMarcadoresClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure grpTypeMapClick(Sender: TObject);
    procedure btnMapHybridClick(Sender: TObject);
    procedure btnMapSateliteClick(Sender: TObject);
    procedure btnMapRoadmapClick(Sender: TObject);
    procedure btnMapTerrainClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
    procedure SetMarks;
    function GetInfoWindow(IdMark: Integer): string;
  public
    { Public declarations }
  end;

implementation

uses
  uDmImagens, ServerModule;

{$R *.dfm}

procedure TfrmInfoWindow.btnLimparMarcadoresClick(Sender: TObject);
begin
  map.DeleteAllMarker;
end;

procedure TfrmInfoWindow.btnMapHybridClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.HYBRID);
end;

procedure TfrmInfoWindow.btnMapRoadmapClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.ROADMAP);
end;

procedure TfrmInfoWindow.btnMapSateliteClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.SATELLITE);
end;

procedure TfrmInfoWindow.btnMapTerrainClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.TERRAIN);
end;

procedure TfrmInfoWindow.btnVisualizarClick(Sender: TObject);
begin
  map.SetCenter('-20.817001','-49.512117');
  map.SetZoom(14);

  SetMarks;
end;

function TfrmInfoWindow.GetInfoWindow(IdMark: Integer): string;
var
  vImg, vObs: string;
begin
  Result :=
  '''' +

  '<div>' +
    '<p>InfoWindow Powered by UniGui</p>' +
    '<p>Ponto '+IntToStr(IdMark)+' '+
    '<div>' +
      '<div>Imagens</div>' +
      '<p><!--IMAGEM--></p>' +
      '<div>Observações</div>' +
      '<p></b><!--OBSERVACAO--></b></p>' +
      '<div>About</div>' +
      '<p>www.falconsistemas.com.br</p>'+
    '</div>' +
  '</div>'+

  '''';

  with CDSMedia do
  begin
    Filtered := False;
    Filter := 'IdMark = '+IntToStr(idMark)+' ';
    Filtered := True;
    First;
    while not eof do
    begin
      if FieldByName('Url').AsString <> EmptyStr then
        vImg := vImg +
          ' <img onClick=ClickWindow("'+FieldByName('Url').AsString+'",600,500) '+
          '  style="cursor: pointer"; src="'+FieldByName('Url').AsString+'" alt="Amostra" width=60 height=50 > ';

      if FieldByName('Observacao').AsString <> EmptyStr then
        vObs := vObs +
          ''+FieldByName('Observacao').AsString+' </br>';

      Next;
    end;
  end;

  if vImg <> EmptyStr then
    Result  := StringReplace(Result,'<!--IMAGEM-->',vImg, [rfReplaceAll]);
  if vObs <> EmptyStr then
    Result  := StringReplace(Result,'<!--OBSERVACAO-->',vObs, [rfReplaceAll]);
end;

procedure TfrmInfoWindow.grpTypeMapClick(Sender: TObject);
begin
  map.MapType := TMapTypeId(grpTypeMap.ItemIndex);
end;

procedure TfrmInfoWindow.LoadData;
begin
  with CDSMarks do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('IdMark', ftInteger);
    FieldDefs.Add('Lat', ftString,50);
    FieldDefs.Add('Lng', ftString, 50);
    FieldDefs.Add('Color', ftString, 50);
    CreateDataSet;
    AppendRecord([1, '-20.810039003142492','-49.532504081726074' ,'#426AE1']);
    AppendRecord([2, '-20.807511693179244','-49.50194835662842'  ,'#B60000']);
    AppendRecord([3, '-20.837956940312008' ,'-49.4928503036499'  ,'#098409']);
  end;

  with CDSMedia do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Id', ftInteger);
    FieldDefs.Add('IdMark', ftInteger);
    FieldDefs.Add('Url', ftString, 100);
    FieldDefs.Add('Observacao', ftString, 200);
    CreateDataSet;
    AppendRecord([1,1,'http://'+UniSession.Host+'/images/img1.jpg','Buracos identificados']);
    AppendRecord([2,1,'http://'+UniSession.Host+'/images/img2.jpg','Buracos identificados na perimetral']);
    AppendRecord([3,1,'http://'+UniSession.Host+'/images/img3.jpg','']);
    AppendRecord([4,2,'http://'+UniSession.Host+'/images/img4.jpg','Paródia']);
    AppendRecord([5,3,'http://'+UniSession.Host+'/images/img5.jpg','Um verdadeiro. Bosque. “Em um ambiente descontraído e em perfeita sintonia com a natureza”.']);
  end;
end;

procedure TfrmInfoWindow.mapAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
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
end;

procedure TfrmInfoWindow.SetMarks;
var
  Mark: TMarkerWithLabel;
begin
  map.DeleteAllMarkerWithLabel;

  CDSMarks.First;
  while not CDSMarks.Eof do
  begin
    Mark := TMarkerWithLabel.Create;
    Mark.Id := CDSMarks.FieldByName('IdMark').AsString; //Não é obrigatório
    Mark.Lat := CDSMarks.FieldByName('Lat').AsString;
    Mark.Lng := CDSMarks.FieldByName('Lng').AsString;
    Mark.IconColor := CDSMarks.FieldByName('Color').AsString;
    Mark.InfoWindow := GetInfoWindow(CDSMarks.FieldByName('IdMark').AsInteger);
    Mark.Animation := TMarkerAnimation(grpAnimation.ItemIndex);
    map.AddMarkerWithLabel(Mark);

    CDSMarks.Next;
  end;

end;

procedure TfrmInfoWindow.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;

  LoadData;
end;

initialization
  RegisterClass(TfrmInfoWindow);

end.

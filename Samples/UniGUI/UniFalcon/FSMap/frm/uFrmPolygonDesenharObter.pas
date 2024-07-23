unit uFrmPolygonDesenharObter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame, uniHTMLFrame,
  UniFSMap, uniGUIBaseClasses, uniPanel, uniButton, uniBitBtn, UniFSButton,
  uniBasicGrid, uniDBGrid, Data.DB, Datasnap.DBClient;

type
  TfrmPolygonDesenharObter = class(TUniFrame)
    pnlControle: TUniPanel;
    map: TUniFSMap;
    pnlBotoes: TUniPanel;
    btnSalvar: TUniFSButton;
    btnDeletarDesenho: TUniFSButton;
    dbgPolygon: TUniDBGrid;
    CDS: TClientDataSet;
    DS: TDataSource;
    sfCDSNomePolygon: TStringField;
    sfCDSPolygon: TStringField;
    pnl1: TUniPanel;
    btnNovoPolygon: TUniFSButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string; Params: TUniStrings);
    procedure btnNovoPolygonClick(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnDeletarDesenhoClick(Sender: TObject);
    procedure dbgPolygonCellClick(Column: TUniDBGridColumn);
  private
    { Private declarations }
    Polygon: TPolygon;
    procedure DesenhaPolygon;
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}

procedure TfrmPolygonDesenharObter.btnDeletarDesenhoClick(Sender: TObject);
begin
  MessageDlg('Deseja realmente deletar o desenho do polygon ? <br>', mtConfirmation, mbYesNo,
    procedure(Comp : TComponent; Res: Integer)
    begin
      if Res = mrYes then
      begin
        map.DeleteAllPolygon;
        CDS.Delete;
        CDS.SaveToFile(CDS.FileName,dfBinary);
      end;
    end
    );
end;

procedure TfrmPolygonDesenharObter.btnNovoPolygonClick(Sender: TObject);
begin
  Randomize;
  CDS.Insert;
  CDS.FieldByName('NomePolygon').AsString := 'Polygon_'+IntToStr(Random(9999));
  CDS.Post;
  CDS.SaveToFile(CDS.FileName,dfBinary);

  dbgPolygon.Enabled := False;

  map.DeleteAllPolygon;
end;

procedure TfrmPolygonDesenharObter.btnSalvarClick(Sender: TObject);
begin
  MessageDlg('Deseja realmente salvar as alterações ? <br>', mtConfirmation, mbYesNo,
    procedure(Comp : TComponent; Res: Integer)
    begin
      if Res = mrYes then
      begin
        map.GetPolygonCoordsJson(0);
        dbgPolygon.Enabled := True;
      end;
    end
    );
end;

procedure TfrmPolygonDesenharObter.dbgPolygonCellClick(
  Column: TUniDBGridColumn);
begin
  DesenhaPolygon;
end;

procedure TfrmPolygonDesenharObter.DesenhaPolygon;
begin
  if CDS.IsEmpty then
    Exit;

  map.DeleteAllPolygon;

  Polygon := TPolygon.Create;
  Polygon.Paths := CDS.FieldByName('Polygon').AsString;
  Polygon.StrokeColor := '#00B22D';
  Polygon.strokeOpacity := '0.8';
  Polygon.strokeWeight := 3;
  Polygon.fillColor := '#00B22D';
  Polygon.fillOpacity := '0.35';
  Polygon.Editable := True;
  Polygon.DraggAble := True;

  map.AddPolygon(Polygon);

  map.SetFitBoundsPolygon;
end;

procedure TfrmPolygonDesenharObter.DSDataChange(Sender: TObject; Field: TField);
begin
   pnlBotoes.Enabled := not CDS.IsEmpty
end;

procedure TfrmPolygonDesenharObter.mapAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if (EventName = 'fs_polygon_coords_json') and (Params.Values['polygon'] <> EmptyStr) then
  begin
    //ShowMessage(Params.Values['polygon']);

    if not(CDS.State in [dsEdit, dsInsert]) then
      CDS.Edit;
    CDS.FieldByName('Polygon').AsString := Params.Values['polygon'];
    CDS.Post;
    CDS.SaveToFile(CDS.FileName,dfBinary);

    DesenhaPolygon;
  end;
end;

procedure TfrmPolygonDesenharObter.UniFrameCreate(Sender: TObject);
begin
  map.APIKeys := UniServerModule.APIKeys;

  Self.Align := alClient;

  CDS.FileName := ExtractFilePath(Application.ExeName) + '\dados.dat';
  CDS.CreateDataSet;
  CDS.LoadFromFile(CDS.FileName);
  CDS.Open;

  map.MapControl.DrawingTool := True;
  map.MapControl.StreetViewControl := False;
  map.MapType := SATELLITE;
  map.MapLat := '-13.723315366658113';
  map.MapLng := '-55.91859467156007';
  map.MapZoom := 14;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmPolygonDesenharObter);

end.

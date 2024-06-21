{ ************************************************************************* }
{ TPlanner demo application }
{ }
{ written by TMS Software }
{ copyright © 1998-2011 }
{ Email : info@tmssoftware.Com }
{ Web : http://www.tmssoftware.Com }
{ }
{ The source code is given as is. The author is not responsible }
{ for any possible damage done due to the use of this code. }
{ The component can be freely used in any application. The complete }
{ source code remains property of the author and may not be distributed, }
{ published, given or sold in any form as such. No parts of the source }
{ code can be included in any other component or application without }
{ written authorization of the author. }
{ ************************************************************************* }
unit ufrmTmsPlannerMultiResource;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, ImgList, DBPlanner, ADODB, Planner, Grids, DBGrids,
  ComCtrls, ToolWin, XPMan, System.ImageList, DBAccess, Uni, MemDS, Janua.Unidac.Connection,
  PostgreSQLUniProvider, UniProvider, InterBaseUniProvider;

type
  TfrmTmsDemosPlannerMultiResource = class(TForm)
    DBPlanner1: TDBPlanner;
    ADOTable1: TADOTable;
    ADOTable1KEYFIELD: TWideStringField;
    ADOTable1STARTTIME: TDateTimeField;
    ADOTable1ENDTIME: TDateTimeField;
    ADOTable1SUBJECT: TWideStringField;
    ADOTable1NOTES: TWideStringField;
    ADOTable1COLOR: TIntegerField;
    ADOTable1IMAGE: TIntegerField;
    ADOTable1CAPTION: TBooleanField;
    ADOTable1RESOURCE: TIntegerField;
    DataSource1: TDataSource;
    ColorDialog1: TColorDialog;
    ImageList1: TImageList;
    ItemPopup: TPopupMenu;
    Color1: TMenuItem;
    Caption1: TMenuItem;
    ADOTable2: TADOTable;
    ToolBar1: TToolBar;
    DateTimePicker1: TDateTimePicker;
    DBPeriodSource1: TDBPeriodSource;
    DBDaySource1: TDBDaySource;
    qryPlannerEvents: TUniQuery;
    qryPlannerEventsCHIAVE: TIntegerField;
    qryPlannerEventsSTATINO: TIntegerField;
    qryPlannerEventsTECNICO: TIntegerField;
    qryPlannerEventsDALLE_ORE: TDateTimeField;
    qryPlannerEventsALLE_ORE: TDateTimeField;
    qryPlannerEventsNOTE: TBlobField;
    qryPlannerEventsSUBJECT: TStringField;
    qryPlannerEventsTECNICO_SIGLA: TStringField;
    qryPlannerEventsCOLORE: TIntegerField;
    qryPlannerEventsJGUID: TBytesField;
    qryPlannerEventsICONA: TSmallintField;
    qryPlannerEventsGOOGLE_JSON: TBlobField;
    qryPlannerEventsGFORECOLOR: TIntegerField;
    qryPlannerEventsGBACKCOLOR: TIntegerField;
    qryPlannerEventsCALENDARIO: TIntegerField;
    qryPlannerEventsGOOGLEID: TStringField;
    dsCalendarEvents: TUniDataSource;
    InterBaseUniProvider1: TInterBaseUniProvider;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    JanuaUniConnection1: TJanuaUniConnection;
    DBDaySourcePhoenix: TDBDaySource;
    qryPlannerCalendars: TUniQuery;
    qryPlannerCalendarsCHIAVE: TIntegerField;
    qryPlannerCalendarsTECNICO: TIntegerField;
    qryPlannerCalendarsSUMMARY: TBlobField;
    qryPlannerCalendarsDESCRIPTION: TStringField;
    qryPlannerCalendarsTECNICO_SIGLA: TStringField;
    qryPlannerCalendarsCOLORE: TIntegerField;
    qryPlannerCalendarsJGUID: TGuidField;
    qryPlannerCalendarsGOOGLE_JSON: TBlobField;
    qryPlannerCalendarsGFORECOLOR: TIntegerField;
    qryPlannerCalendarsGBACKCOLOR: TIntegerField;
    qryPlannerCalendarsDEFAULTCOLOR: TIntegerField;
    qryPlannerCalendarsGOOGLEID: TStringField;
    qryPlannerCalendarsGOOGLE_SUMMARY: TStringField;
    procedure DBTimeLineSource1ItemToFields(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure DBPlanner1ItemInsert(Sender: TObject; Position, FromSel, FromSelPrecise, ToSel,
      ToSelPrecise: Integer);
    procedure DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure FormCreate(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure Color1Click(Sender: TObject);
    procedure DBPeriodSource1ItemToFields(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure DBPeriodSource1FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure Caption1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure FillPlanner;
  public
    { Public declarations }
  end;

var
  frmTmsDemosPlannerMultiResource: TfrmTmsDemosPlannerMultiResource;

implementation

{$R *.dfm}

procedure TfrmTmsDemosPlannerMultiResource.DBTimeLineSource1ItemToFields(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  Fields.FieldByName('COLOR').AsInteger := Integer(Item.Color);
  Fields.FieldByName('CAPTION').AsBoolean := Item.CaptionType = ctTime;
  Fields.FieldByName('IMAGE').AsInteger := Item.ImageID;
end;

procedure TfrmTmsDemosPlannerMultiResource.DBPlanner1ItemInsert(Sender: TObject;
  Position, FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  with DBPlanner1.CreateItemAtSelection do
  begin
    { take the settings from the Default item - just set properties below }
    Text.Text := 'New entry';
    Update;
  end;
end;

procedure TfrmTmsDemosPlannerMultiResource.DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  DBPlanner1.FreeItem(Item);
end;

procedure TfrmTmsDemosPlannerMultiResource.FormCreate(Sender: TObject);
begin

  // ADOTable1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\dbplanner26.mdb;Persist Security Info=False';
  // ADOTable2.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\dbplanner26.mdb;Persist Security Info=False';

  ADOTable1.Active := true;
  ADOTable2.Active := true;
  DateTimePicker1.Date := Now;
  FillPlanner;
end;

procedure TfrmTmsDemosPlannerMultiResource.DateTimePicker1CloseUp(Sender: TObject);
begin
  FillPlanner;
end;

procedure TfrmTmsDemosPlannerMultiResource.FillPlanner;
var
  PlannerPosition: Integer;
begin
  DBPeriodSource1.Active := false;
  DBPeriodSource1.StartDate := 0;
  DBPeriodSource1.EndDate := DBPeriodSource1.StartDate + 100000;
  DBPeriodSource1.StartDate := DateTimePicker1.Date;
  DBPeriodSource1.EndDate := DateTimePicker1.Date + 7;

  // DBDaySource1
  DBDaySource1.Active := false;
  DBDaySource1.Day := DateTimePicker1.Date;

  ADOTable1.Active := false;

  ADOTable2.Close;
  ADOTable2.Open;

  ADOTable2.First;
  PlannerPosition := 0;
  While NOT ADOTable2.Eof Do
  Begin
    With DBPeriodSource1.ResourceMap.Add Do
    Begin
      ResourceIndex := ADOTable2.FieldByName('ID').AsInteger;
      PositionIndex := PlannerPosition;
      DisplayName := ADOTable2.FieldByName('Name').AsString;
      inc(PlannerPosition);
    End;
    ADOTable2.Next;
  End;

  ADOTable2.First;
  PlannerPosition := 0;
  While NOT ADOTable2.Eof Do
  Begin
    With DBDaySource1.ResourceMap.Add Do
    Begin
      ResourceIndex := ADOTable2.FieldByName('ID').AsInteger;
      PositionIndex := PlannerPosition;
      DisplayName := ADOTable2.FieldByName('Name').AsString;
      inc(PlannerPosition);
    End;
    ADOTable2.Next;
  End;

  ADOTable2.Close;

  DBPeriodSource1.NumberOfResources := PlannerPosition;
  DBDaySource1.NumberOfResources := PlannerPosition;

  DBPeriodSource1.Active := true;
  DBDaySource1.Active := true;

  ADOTable1.Active := true;

  PlannerPosition := 0;
  // DBDaySource1
  DBDaySourcePhoenix.Active := false;
  DBDaySourcePhoenix.Day := DateTimePicker1.Date;

  qryPlannerCalendars.Open;
  qryPlannerCalendars.First;
  While not qryPlannerCalendars.Eof do
  begin
    With DBDaySourcePhoenix.ResourceMap.Add Do
    Begin
      ResourceIndex := qryPlannerCalendarsCHIAVE.AsInteger;
      PositionIndex := PlannerPosition;
      DisplayName := qryPlannerCalendarsTECNICO_SIGLA.AsString;
      inc(PlannerPosition);
    End;
    qryPlannerCalendars.Next;
  end;

  qryPlannerCalendars.Close;
  DBDaySourcePhoenix.NumberOfResources := PlannerPosition;
  DBDaySourcePhoenix.Active := True;
  qryPlannerEvents.Open;
end;

procedure TfrmTmsDemosPlannerMultiResource.Color1Click(Sender: TObject);
begin
  ColorDialog1.Color := DBPlanner1.PopupPlannerItem.Color;
  if ColorDialog1.Execute then
  begin
    DBPlanner1.PopupPlannerItem.Color := ColorDialog1.Color;
    DBPlanner1.PopupPlannerItem.Update;
  end;
end;

procedure TfrmTmsDemosPlannerMultiResource.DBPeriodSource1ItemToFields(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  Fields.FieldByName('COLOR').AsInteger := Integer(Item.Color);
  Fields.FieldByName('CAPTION').AsBoolean := Item.CaptionType = ctTime;
  Fields.FieldByName('IMAGE').AsInteger := Item.ImageID;
end;

procedure TfrmTmsDemosPlannerMultiResource.DBPeriodSource1FieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  Item.Color := TColor(Fields.FieldByName('COLOR').AsInteger);

  if (Fields.FieldByName('CAPTION').AsBoolean) then
    Item.CaptionType := ctTime;

  Item.ImageID := Fields.FieldByName('IMAGE').AsInteger;
end;

procedure TfrmTmsDemosPlannerMultiResource.Caption1Click(Sender: TObject);
begin
  if DBPlanner1.PopupPlannerItem.CaptionType = ctTime then
    DBPlanner1.PopupPlannerItem.CaptionType := ctNone
  else
    DBPlanner1.PopupPlannerItem.CaptionType := ctTime;
  DBPlanner1.PopupPlannerItem.Update;
end;

end.

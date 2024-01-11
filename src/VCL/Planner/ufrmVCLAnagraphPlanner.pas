unit ufrmVCLAnagraphPlanner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.Buttons, Vcl.StdCtrls, Janua.Core.Classes, Janua.Vcl.Actions, Vcl.DBCtrls, Vcl.Menus,
  Vcl.ToolWin, Vcl.ComCtrls, Janua.Vcl.ViewModel, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Themes,
  Vcl.DBCGrids, Vcl.Samples.Spin,
  // Icon Image List
  System.ImageList, SVGIconImageListBase, SVGIconImageList,
  // TMS
  Lucombo, AdvSplitter, Planner,
  // DB Controls
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Bindings.Intf, Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, Janua.Vcl.EnhCRDBGrid, Janua.Vcl.EnhDBGrid,
  AdvCustomComponent, AdvPDFIO, PictureContainer, DBPlanner, AdvPlannerPDFIO;

type
  // TJanuaVCLFormModel = class(TForm, IJanuaForm, IJanuaContainer, IJanuaControl, IJanuaBindable)
  TfrmVCLAnagraphPlanner = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    DBDaySource1: TDBDaySource;
    DataSource1: TDataSource;
    ImageList1: TImageList;
    ColorDialog1: TColorDialog;
    ItemPopup: TPopupMenu;
    Color1: TMenuItem;
    Caption1: TMenuItem;
    DBPlanner1: TDBPlanner;
    MonthCalendar1: TMonthCalendar;
    SpinEdit1: TSpinEdit;
    edMeeting: TEdit;
    DoFilter: TCheckBox;
    lbGiorni: TLabel;
    lbSearch: TLabel;
    grdAnagraph: TDBCtrlGrid;
    DBText1: TDBText;
    Panel1: TPanel;
    btnAppuntamento: TButton;
    Button1: TButton;
    btnSearchMeeting: TButton;
    btnAddPerson: TButton;
    btnActivities: TButton;
    PictureContainer1: TPictureContainer;
    btnExport: TButton;
    btnSend: TButton;
    btnPrint: TButton;
    AdvPlannerPDFIO1: TAdvPlannerPDFIO;
    procedure Caption1Click(Sender: TObject);
    procedure Color1Click(Sender: TObject);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure DBDaySource1ItemToFields(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure DBDaySource1SetFilter(Sender: TObject);
    procedure DBPlanner1ItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
    procedure DBPlanner1ItemImageClick(Sender: TObject; Item: TPlannerItem; ImageIndex: Integer);
    procedure DBPlanner1ItemInsert(Sender: TObject; Position, FromSel, FromSelPrecise, ToSel,
      ToSelPrecise: Integer);
    procedure DBPlanner1ItemPopupPrepare(Sender: TObject; PopupMenu: TPopupMenu; Item: TPlannerItem);
    procedure DBPlanner1PlannerNext(Sender: TObject);
    procedure DBPlanner1PlannerPrev(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure grdAnagraphClick(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateHeaders;
  end;

var
  frmVCLAnagraphPlanner: TfrmVCLAnagraphPlanner;

implementation

{$R *.dfm}

uses Spring, Janua.Application.Framework, Janua.ViewModels.Application, udmPgPlannerStorage,
  udmVCLPlannerController;

procedure TfrmVCLAnagraphPlanner.Caption1Click(Sender: TObject);
begin
  if DBPlanner1.PopupPlannerItem.CaptionType = ctTime then
    DBPlanner1.PopupPlannerItem.CaptionType := ctNone
  else
    DBPlanner1.PopupPlannerItem.CaptionType := ctTime;

  DBPlanner1.PopupPlannerItem.Update;
end;

procedure TfrmVCLAnagraphPlanner.Color1Click(Sender: TObject);
begin
  { Sets the planner item color }
  ColorDialog1.Color := DBPlanner1.PopupPlannerItem.Color;
  if ColorDialog1.Execute then
  begin
    DBPlanner1.PopupPlannerItem.Color := ColorDialog1.Color;
    DBPlanner1.PopupPlannerItem.CaptionBkg := ColorDialog1.Color;
    DBPlanner1.PopupPlannerItem.Update;
  end;
end;

procedure TfrmVCLAnagraphPlanner.DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The FieldsToItem event is called when records are read from the database
    and extra properties are set from database fields. With this code, any
    field from the database can be connected in a custom way to planner item
    properties.
  }
  Item.Color := TColor(Fields.FieldByName('COLOR').AsInteger);
  Item.CaptionBkg := Item.Color;
  Item.ImageID := Fields.FieldByName('IMAGE').AsInteger;
  if Fields.FieldByName('CAPTION').AsBoolean then
    Item.CaptionType := ctTime
  else
    Item.CaptionType := ctNone;
end;

procedure TfrmVCLAnagraphPlanner.DBDaySource1ItemToFields(Sender: TObject; Fields: TFields;
  Item: TPlannerItem);
begin
  { The ItemToFields event is called when items are written to the database
    and extra properties are stored in database fields. With this code, any
    property of the item can be saved into any field of the database in
    a custom way to be retrieved later with the inverse event FieldsToItem
  }

  Fields.FieldByName('COLOR').AsInteger := Integer(Item.Color);
  Fields.FieldByName('CAPTION').AsBoolean := Item.CaptionType = ctTime;
  Fields.FieldByName('IMAGE').AsInteger := Item.ImageID;
end;

procedure TfrmVCLAnagraphPlanner.DBDaySource1SetFilter(Sender: TObject);
var
  sd1, sd2: string;
begin
  { Before the planner needs to be reloaded with records from the database
    a custom filter can be applied to minimize the nr. of records the planner
    must check to load into the planner.
  }
  sd1 := DateToStr(DBDaySource1.Day);
  sd1 := #39 + sd1 + #39;

  sd2 := DateToStr(DBDaySource1.Day + 7);
  sd2 := #39 + sd2 + #39;
  (*
    PlannerTable.Filter:=  'STARTTIME > '+sd1+' AND ENDTIME < '+sd2;
    PlannerTable.Filtered := DoFilter.Checked;
  *)
end;

procedure TfrmVCLAnagraphPlanner.DBPlanner1ItemDblClick(Sender: TObject; Item: TPlannerItem);
begin
  dmVCLPlannerController.EditEvent;
end;

procedure TfrmVCLAnagraphPlanner.DBPlanner1ItemDelete(Sender: TObject; Item: TPlannerItem);
begin
  { the Planner.FreeItem call removes the item from the planner and deletes
    its entry from the database
  }
  DBPlanner1.FreeItem(Item);
end;

procedure TfrmVCLAnagraphPlanner.DBPlanner1ItemImageClick(Sender: TObject; Item: TPlannerItem;
  ImageIndex: Integer);
begin
  if Item.ImageID < 5 then
    Item.ImageID := Item.ImageID + 1
  else
    Item.ImageID := 0;

  Item.Update;
end;

procedure TfrmVCLAnagraphPlanner.DBPlanner1ItemInsert(Sender: TObject;
  Position, FromSel, FromSelPrecise, ToSel, ToSelPrecise: Integer);
begin
  { creates an item in the planner at the selected cells which is automatically
    propagated to the database
    All planner item settings are taken from the Planner.DefaultItem properties.
    After changing properties of the planner item, it is necessary to call the
    item's Update method to make sure that changes are propagated to the database
  }
  with DBPlanner1.CreateItemAtSelection do
  begin
    Text.Text := 'Creato Evento il ' + Formatdatetime('hh:nn dd/mm/yyyy', Now);
    Update;
  end;
end;

procedure TfrmVCLAnagraphPlanner.DBPlanner1ItemPopupPrepare(Sender: TObject; PopupMenu: TPopupMenu;
  Item: TPlannerItem);
begin
  { Event is called before the popup menu for a planner item is displayed.
    With this event, the popup menu state can be set according the the
    planner item properties.
  }

  ItemPopup.Items[1].Checked := Item.CaptionType = ctTime;
end;

procedure TfrmVCLAnagraphPlanner.DBPlanner1PlannerNext(Sender: TObject);
begin
  { Update the planner headers to set the date shown }
  UpdateHeaders;
  MonthCalendar1.Date := DBDaySource1.Day;
end;

procedure TfrmVCLAnagraphPlanner.DBPlanner1PlannerPrev(Sender: TObject);
begin
  { Update the planner headers to set the date shown }
  UpdateHeaders;
  MonthCalendar1.Date := DBDaySource1.Day;
end;

procedure TfrmVCLAnagraphPlanner.FormCreate(Sender: TObject);
begin
  // dmPgPlannerStorage: TdmPgPlannerStorage;
  Application.CreateForm(TdmPgPlannerStorage, dmPgPlannerStorage);
  // TdmPlannerController
  Application.CreateForm(TdmVCLPlannerController, dmVCLPlannerController);
  dmVCLPlannerController.Planner := DBPlanner1;
  dmPgPlannerStorage.OpenAll;

  DBDaySource1.Day := Date;
  MonthCalendar1.Date := Date;

  // PlannerTable.Active := true;
  UpdateHeaders;
end;

procedure TfrmVCLAnagraphPlanner.FormResize(Sender: TObject);
begin
  grdAnagraph.ColCount := Trunc(Self.Width / 160);
end;

procedure TfrmVCLAnagraphPlanner.grdAnagraphClick(Sender: TObject);
begin
  DBPlanner1.Refresh;
end;

procedure TfrmVCLAnagraphPlanner.MonthCalendar1Click(Sender: TObject);
begin
  DBDaySource1.Day := MonthCalendar1.Date;
  UpdateHeaders;
end;

procedure TfrmVCLAnagraphPlanner.SpinEdit1Change(Sender: TObject);
begin
  DBDaySource1.NumberOfDays := SpinEdit1.Value;
end;

procedure TfrmVCLAnagraphPlanner.UpdateHeaders;
var
  i: Integer;
begin
  DBPlanner1.Header.Captions.Clear;
  DBPlanner1.Header.Captions.Add('');
  for i := 1 to DBPlanner1.Positions do
  begin
    DBPlanner1.Header.Captions.Add(Formatdatetime('dd/mm/yyyy', DBDaySource1.Day + i - 1));
  end;

end;

end.

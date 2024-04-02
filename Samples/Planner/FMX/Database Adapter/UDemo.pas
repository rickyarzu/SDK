unit UDemo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Data.DB, Datasnap.DBClient, FMX.TMSPlanner,
  FMX.TMSPlannerItemEditorRecurrency, FMX.TMSPlannerDatabaseAdapter,
  FMX.TMSBaseControl, FMX.TMSPlannerBase, FMX.TMSPlannerData,
  FMX.TMSBitmapContainer;

type
  TForm1 = class(TForm)
    TMSFMXPlanner1: TTMSFMXPlanner;
    TMSFMXPlannerDatabaseAdapter1: TTMSFMXPlannerDatabaseAdapter;
    TMSFMXPlannerItemEditorRecurrency1: TTMSFMXPlannerItemEditorRecurrency;
    Label1: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    TMSFMXBitmapContainer1: TTMSFMXBitmapContainer;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TMSFMXPlannerDatabaseAdapter1FieldsToItem(Sender: TObject;
      AFields: TFields; AItem: TTMSFMXPlannerItem);
    procedure TMSFMXPlannerDatabaseAdapter1ItemToFields(Sender: TObject;
      AItem: TTMSFMXPlannerItem; AFields: TFields);
    procedure TMSFMXPlanner1IsDateTimeSub(Sender: TObject; ADateTime: TDateTime;
      var AIsSub: Boolean);
    procedure TMSFMXPlanner1AfterNavigateToDateTime(Sender: TObject;
      ADirection: TTMSFMXPlannerNavigationDirection; ACurrentDateTime,
      ANewDateTime: TDateTime);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  DateUtils, UIConsts;

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ClientDataSet1.Active := not ClientDataSet1.Active;
  if ClientDataSet1.Active then
    Button1.Text := 'Disconnect'
  else
    Button1.Text := 'Connect';
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  I: Integer;
  res: TTMSFMXPlannerResource;
begin
  TMSFMXPlanner1.BeginUpdate;
  TMSFMXPlanner1.BitmapContainer := TMSFMXBitmapContainer1;
  TMSFMXPlanner1.Interaction.UpdateMode := pumDialog;
  TMSFMXPlanner1.Interaction.TopNavigationButtons := [pnbPrevious, pnbNext];
  TMSFMXPlanner1.Interaction.MouseInsertMode := pmimAfterSelection;
  TMSFMXPlanner1.Interaction.KeyboardInsertMode := pkimSelection;
  TMSFMXPlanner1.DefaultItem.FontColor :=  claWhite;
  TMSFMXPlanner1.DefaultItem.TitleFontColor := claWhite;
  TMSFMXPlanner1.ModeSettings.StartTime := Now;
  TMSFMXPlanner1.Mode := pmDay;
  TMSFMXPlanner1.TimeLine.DisplayUnit := 240;
  TMSFMXPlanner1.TimeLine.DisplayUnitFormat := 'dddd dd/mm';
  TMSFMXPlanner1.TimeLine.DisplaySubUnitFormat := 'hh:nn';
  TMSFMXPlanner1.TimeLine.DisplayEnd := Round((MinsPerDay * 7) / TMSFMXPlanner1.TimeLine.DisplayUnit) - 1;
  TMSFMXPlanner1.TimeLineAppearance.LeftSize := 200;
  TMSFMXPlanner1.PositionsAppearance.TopSize := 120;
  TMSFMXPlanner1.Resources.Clear;
  TMSFMXPlanner1.PositionsAppearance.TopFont.Size := 18;
  for I := 0 to TMSFMXBitmapContainer1.Items.Count - 1 do
  begin
    res := TMSFMXPlanner1.Resources.Add;
    res.Name := TMSFMXBitmapContainer1.Items[I].Name;
    res.Text := '<img width="80" src="'+res.Name+'"></img><br><p align="center">'+res.Name+'</p>';
  end;

  TMSFMXPlanner1.Positions.Count := TMSFMXPlanner1.Resources.Count;
  TMSFMXPlanner1.EndUpdate;

  ClientDataSet1.FieldDefs.Add('Id', ftString, 255);
  ClientDataSet1.FieldDefs.Add('Resource', ftString, 10);
  ClientDataSet1.FieldDefs.Add('Title', ftString, 10);
  ClientDataSet1.FieldDefs.Add('Text', ftString, 255);
  ClientDataSet1.FieldDefs.Add('StartTime', ftDateTime);
  ClientDataSet1.FieldDefs.Add('EndTime', ftDateTime);
  ClientDataSet1.FieldDefs.Add('Recurrency', ftString, 255);
  ClientDataSet1.FieldDefs.Add('Color', ftLongWord);
  ClientDataSet1.CreateDataSet;

  TMSFMXPlanner1.Adapter := TMSFMXPlannerDatabaseAdapter1;
  TMSFMXPlanner1.ItemEditor := TMSFMXPlannerItemEditorRecurrency1;
  TMSFMXPlannerDatabaseAdapter1.Item.AutoIncrementDBKey := False;
  TMSFMXPlannerDatabaseAdapter1.Item.DataSource := DataSource1;
  TMSFMXPlannerDatabaseAdapter1.Item.DBKey := 'Id';
  TMSFMXPlannerDatabaseAdapter1.Item.StartTime := 'StartTime';
  TMSFMXPlannerDatabaseAdapter1.Item.EndTime := 'EndTime';
  TMSFMXPlannerDatabaseAdapter1.Item.Title := 'Title';
  TMSFMXPlannerDatabaseAdapter1.Item.Text := 'Text';
  TMSFMXPlannerDatabaseAdapter1.Item.Resource := 'Resource';
  TMSFMXPlannerDatabaseAdapter1.Item.Recurrency := 'Recurrency';

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + EncodeTime(8, 0, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + EncodeTime(20, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 0;
  ClientDataSet1.FieldByName('Title').AsString := 'Miami';
  ClientDataSet1.FieldByName('Text').AsString := 'Dialy shoot at the beach';
  ClientDataSet1.FieldByName('Recurrency').AsString := 'RRULE:FREQ=DAILY';
  ClientDataSet1.FieldByName('Color').AsLongWord := claOrange;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + EncodeTime(12, 0, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + EncodeTime(20, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 1;
  ClientDataSet1.FieldByName('Title').AsString := 'New York';
  ClientDataSet1.FieldByName('Text').AsString := 'Shoe model';
  ClientDataSet1.FieldByName('Color').AsLongWord := claDarkgray;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + 4 + EncodeTime(12, 0, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + 5 + EncodeTime(20, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 1;
  ClientDataSet1.FieldByName('Title').AsString := 'New York';
  ClientDataSet1.FieldByName('Text').AsString := 'Shoe model';
  ClientDataSet1.FieldByName('Color').AsLongWord := claDarkgray;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + 1 + EncodeTime(11, 30, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + 2 + EncodeTime(20, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 1;
  ClientDataSet1.FieldByName('Title').AsString := 'Barcelona';
  ClientDataSet1.FieldByName('Text').AsString := 'Audition for photoshoot';
  ClientDataSet1.FieldByName('Color').AsLongWord := claDarkgray;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + EncodeTime(10, 0, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + EncodeTime(20, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 2;
  ClientDataSet1.FieldByName('Title').AsString := 'TV Ad';
  ClientDataSet1.FieldByName('Text').AsString := 'Advertisement for toothpaste';
  ClientDataSet1.FieldByName('Color').AsLongWord := claGhostwhite;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + 5 + EncodeTime(10, 0, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + 6 + EncodeTime(10, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 2;
  ClientDataSet1.FieldByName('Title').AsString := 'TV Ad';
  ClientDataSet1.FieldByName('Text').AsString := 'Advertisement for toothpaste';
  ClientDataSet1.FieldByName('Color').AsLongWord := claGhostwhite;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + 2 + EncodeTime(4, 0, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + 3 + EncodeTime(20, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 2;
  ClientDataSet1.FieldByName('Title').AsString := 'Barcelona';
  ClientDataSet1.FieldByName('Text').AsString := 'Meet with Daniel Harris for audition';
  ClientDataSet1.FieldByName('Color').AsLongWord := claGhostwhite;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + 3 + EncodeTime(11, 30, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + 3 + EncodeTime(21, 30, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 3;
  ClientDataSet1.FieldByName('Title').AsString := 'Clothes';
  ClientDataSet1.FieldByName('Text').AsString := 'New clothes line presentation in Milan';
  ClientDataSet1.FieldByName('Color').AsLongWord := claSeagreen;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + EncodeTime(4, 0, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + EncodeTime(22, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 4;
  ClientDataSet1.FieldByName('Title').AsString := 'Photoshoot';
  ClientDataSet1.FieldByName('Text').AsString := 'Photoshoot for bikini magazine';
  ClientDataSet1.FieldByName('Recurrency').AsString := 'RRULE:FREQ=DAILY;BYDAY=MO,WE,FR,SU';
  ClientDataSet1.FieldByName('Color').AsLongWord := claSkyblue;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + 1 + EncodeTime(12, 0, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + 2 + EncodeTime(20, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 5;
  ClientDataSet1.FieldByName('Title').AsString := 'Catwalk';
  ClientDataSet1.FieldByName('Text').AsString := 'Catwalk in Paris';
  ClientDataSet1.FieldByName('Color').AsLongWord := claPlum;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + EncodeTime(4, 0, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + 1 + EncodeTime(16, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 6;
  ClientDataSet1.FieldByName('Title').AsString := 'TV Ad';
  ClientDataSet1.FieldByName('Text').AsString := 'Dinner with friends at the seafood restaurant while shooting a new advertisement';
  ClientDataSet1.FieldByName('Color').AsLongWord := claLightpink;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + 4 + EncodeTime(4, 0, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + 4 + EncodeTime(20, 30, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 6;
  ClientDataSet1.FieldByName('Title').AsString := 'Catwalk';
  ClientDataSet1.FieldByName('Text').AsString := 'Catwalk in Barcelona';
  ClientDataSet1.FieldByName('Color').AsLongWord := claLightpink;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + 1;
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now) + 1 + EncodeTime(12, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 7;
  ClientDataSet1.FieldByName('Title').AsString := 'Test shoot';
  ClientDataSet1.FieldByName('Text').AsString := 'Test shoot at the market in Phuket';
  ClientDataSet1.FieldByName('Color').AsLongWord := claDarkkhaki;

  ClientDataSet1.Insert;
  ClientDataSet1.FieldByName('Id').AsString := TGuid.NewGuid.ToString;
  ClientDataSet1.FieldByName('StartTime').AsDateTime := Int(Now) + 3.5 + EncodeTime(4, 0, 0, 0);
  ClientDataSet1.FieldByName('EndTime').AsDateTime := Int(Now)+ 3.5 + EncodeTime(22, 0, 0, 0);
  ClientDataSet1.FieldByName('Resource').AsInteger := 7;
  ClientDataSet1.FieldByName('Title').AsString := 'Test shoot 2';
  ClientDataSet1.FieldByName('Text').AsString := 'Second Test shoot at the market in Phuket';
  ClientDataSet1.FieldByName('Color').AsLongWord := claDarkkhaki;

  ClientDataSet1.Post;

  TMSFMXPlannerDatabaseAdapter1.Active := True;
end;

procedure TForm1.TMSFMXPlanner1AfterNavigateToDateTime(Sender: TObject;
  ADirection: TTMSFMXPlannerNavigationDirection; ACurrentDateTime,
  ANewDateTime: TDateTime);
begin
  TMSFMXPlannerDatabaseAdapter1.LoadItems;
end;

procedure TForm1.TMSFMXPlanner1IsDateTimeSub(Sender: TObject;
  ADateTime: TDateTime; var AIsSub: Boolean);
begin
  AIsSub := HourOf(ADateTime) + MinuteOf(ADateTime) + SecondOf(ADateTime) + MilliSecondOf(ADateTime) > 0;
end;

procedure TForm1.TMSFMXPlannerDatabaseAdapter1FieldsToItem(Sender: TObject;
  AFields: TFields; AItem: TTMSFMXPlannerItem);
var
  c: TAlphaColor;
begin
  c := AFields.FieldByName('Color').AsLongWord;
  if c <> 0 then
    AItem.Color := c
  else
    AItem.Color := TMSFMXPlanner1.DefaultItem.Color;

  if AItem.Color = claGhostwhite then
  begin
    AItem.TitleFontColor := claDarkGray;
    AItem.FontColor := claDarkgray;
  end;
end;

procedure TForm1.TMSFMXPlannerDatabaseAdapter1ItemToFields(Sender: TObject;
  AItem: TTMSFMXPlannerItem; AFields: TFields);
begin
//
end;

end.

unit UPryvDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, CloudBase, CloudBaseWin,
  CloudCustomPryv, CloudPryv, CloudImage, ComCtrls, ExtCtrls, DateUtils;

type
  TForm12 = class(TForm)
    AdvPryv1: TAdvPryv;
    OpenDialog1: TOpenDialog;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    btStreams: TButton;
    btDeleteStream: TButton;
    btAddStream: TButton;
    edStreamName: TEdit;
    btUpdateStream: TButton;
    TreeView1: TTreeView;
    Panel1: TPanel;
    btConnect: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    AdvCloudImage1: TAdvCloudImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btEvents: TButton;
    edTags: TEdit;
    edLatitude: TEdit;
    edLongitude: TEdit;
    btAddEvent: TButton;
    btDeleteEvent: TButton;
    btUpdateEvent: TButton;
    cbEventType: TComboBox;
    Label9: TLabel;
    ListView1: TListView;
    dpDate: TDateTimePicker;
    cbStream: TCheckBox;
    Label10: TLabel;
    cbSubStream: TCheckBox;
    meValue: TMemo;
    meDescription: TMemo;
    btRemove: TButton;
    Image1: TImage;
    cbUnit: TComboBox;
    cbEventCount: TComboBox;
    Label11: TLabel;
    ProgressBar1: TProgressBar;
    ProgressLabel: TLabel;
    btDownload: TButton;
    procedure btConnectClick(Sender: TObject);
    procedure AdvPryv1ReceivedAccessToken(Sender: TObject);
    procedure btStreamsClick(Sender: TObject);
    procedure btEventsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAddStreamClick(Sender: TObject);
    procedure btDeleteStreamClick(Sender: TObject);
    procedure btAddEventClick(Sender: TObject);
    procedure btUpdateStreamClick(Sender: TObject);
    procedure btDeleteEventClick(Sender: TObject);
    procedure btUpdateEventClick(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure btRemoveClick(Sender: TObject);
    procedure cbEventTypeChange(Sender: TObject);
    procedure AdvPryv1UploadProgress(Sender: TObject; FileName: string;
      Position, Total: Int64);
    procedure btDownloadClick(Sender: TObject);
    procedure AdvPryv1DownloadProgress(Sender: TObject; FileName: string;
      Position, Total: Int64);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    InitLV: boolean;
    IsUploading: boolean;
    IsDownloading: boolean;
    procedure ToggleControls;
    procedure ToggleControlsText;
    procedure ToggleControlsPicture;
    procedure ToggleControlsPosition;
    procedure ToggleControlsValue;
    procedure FillStreams;
    procedure FillEvents;
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  PryvAppkey = 'xxxxxxxxx';

{$I APPIDS.INC}

procedure TForm12.ToggleControls;
begin
  btConnect.Enabled := not Connected;
  btRemove.Enabled := Connected;
  btStreams.Enabled := Connected;
  btEvents.Enabled := Connected;
  btAddEvent.Enabled := Connected;
  btAddStream.Enabled := Connected;
  btDeleteEvent.Enabled := Connected;
  btDeleteStream.Enabled := Connected;
  btUpdateEvent.Enabled := Connected;
  btUpdateStream.Enabled := Connected;
  ListView1.Enabled := Connected;
  TreeView1.Enabled := Connected;
  edStreamName.Enabled := Connected;
  edTags.Enabled := Connected;
  edLatitude.Enabled := Connected;
  edLongitude.Enabled := Connected;
  cbUnit.Enabled := Connected;
  meValue.Enabled := Connected;
  meDescription.Enabled := Connected;
  cbEventType.Enabled := Connected;
  cbStream.Enabled := Connected;
  cbSubStream.Enabled := Connected;
  dpDate.Enabled := Connected;
  btDownload.Enabled := Connected;
end;

procedure TForm12.ToggleControlsPicture;
begin
  edLatitude.Enabled := false;
  edLongitude.Enabled := false;
  cbUnit.Enabled := false;
  meValue.Enabled := false;
  btDownload.Enabled := true;
end;

procedure TForm12.ToggleControlsPosition;
begin
  edLatitude.Enabled := true;
  edLongitude.Enabled := true;
  cbUnit.Enabled := false;
  meValue.Enabled := false;
  btDownload.Enabled := false;
end;

procedure TForm12.ToggleControlsText;
begin
  edLatitude.Enabled := false;
  edLongitude.Enabled := false;
  cbUnit.Enabled := false;
  meValue.Enabled := true;
  btDownload.Enabled := false
end;

procedure TForm12.ToggleControlsValue;
begin
  edLatitude.Enabled := false;
  edLongitude.Enabled := false;
  cbUnit.Enabled := true;
  meValue.Enabled := true;
  btDownload.Enabled := false;
end;

procedure TForm12.TreeView1Change(Sender: TObject; Node: TTreeNode);
var
  si: TPryvStreamItem;
begin
  if Assigned(TreeView1.Selected) then
  begin
    si := TPryvStreamItem(TreeView1.Selected.Data);
    edStreamName.Text := si.Summary;
  end;
end;

procedure TForm12.AdvPryv1DownloadProgress(Sender: TObject; FileName: string;
  Position, Total: Int64);
begin
  progressbar1.Position := Position;
  ProgressBar1.Max := Total;
  if IsDownloading then
    Progresslabel.Caption := InttoStr(Position) +' of ' + InttoStr(Total) +' downloaded';
end;

procedure TForm12.AdvPryv1ReceivedAccessToken(Sender: TObject);
begin
  AdvPryv1.SaveTokens;
  Connected := true;
  ToggleControls;
end;

procedure TForm12.btConnectClick(Sender: TObject);
var
  acc: boolean;
begin
  AdvPryv1.App.Key := PryvAppKey;

  if AdvPryv1.App.Key <> '' then
  begin
    AdvPryv1.PersistTokens.Location := plIniFile;
    AdvPryv1.PersistTokens.Key := '.\pryv.ini';
    AdvPryv1.PersistTokens.Section := 'tokens';
    AdvPryv1.LoadTokens;

    acc := AdvPryv1.TestTokens;

    if not acc then
      AdvPryv1.DoAuth
    else
    begin
      Connected := true;
      ToggleControls;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm12.btRemoveClick(Sender: TObject);
begin
  AdvPryv1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TForm12.AdvPryv1UploadProgress(Sender: TObject; FileName: string;
  Position, Total: Int64);
begin
  progressbar1.Position := Position;
  ProgressBar1.Max := Total;
  if IsUploading then
    Progresslabel.Caption := InttoStr(Position) +' of ' + InttoStr(Total) +' uploaded';
end;

procedure TForm12.btAddEventClick(Sender: TObject);
var
  text: TPryvText;
  pic: TPryvPicture;
  pos: TPryvPosition;
  val: TPryvValue;
  si: TPryvStreamItem;
begin
  if not Assigned(TreeView1.Selected) then
  begin
    ShowMessage('Please select a Stream first.');
    exit;
  end;

  si := TPryvStreamItem(TreeView1.Selected.Data);

  if cbEventType.Text = 'Text' then
  begin
    text := TPryvText.Create;
    AdvPryv1.Events.Add(text);
    text.Content := meValue.Text;
    text.StreamID := si.ID;
    text.DateTime := dpDate.DateTime;
    text.Tags.CommaText := edTags.Text;
    text.Description := meDescription.Text;
    AdvPryv1.AddEvent(text);
  end
  else if cbEventType.Text = 'Picture' then
  begin
    if OpenDialog1.Execute then
    begin
      Screen.Cursor := crHourGlass;
      ProgressBar1.Position := 0;
      ProgressBar1.Visible := true;
      IsUploading := true;

      pic := TPryvPicture.Create;
      AdvPryv1.Events.Add(pic);
      pic.StreamID := si.ID;
      pic.DateTime := dpDate.DateTime;
      pic.Tags.CommaText := edTags.Text;
      pic.Description := meDescription.Text;
      AdvPryv1.AddEvent(pic, OpenDialog1.FileName);

      IsUploading := false;
      ProgressBar1.Visible := false;
      ProgressLabel.Caption := '';
      Screen.Cursor := crDefault;
    end;
  end
  else if cbEventType.Text = 'Position' then
  begin
    pos := TPryvPosition.Create;
    AdvPryv1.Events.Add(pos);
    pos.Latitude := StrToFloat(edLatitude.Text);
    pos.Longitude := StrToFloat(edLongitude.Text);
    pos.StreamID := si.ID;
    pos.DateTime := dpDate.DateTime;
    pos.Tags.CommaText := edTags.Text;
    pos.Description := meDescription.Text;
    AdvPryv1.AddEvent(pos);
  end
  else if cbEventType.Text = 'Value' then
  begin
    val := TPryvValue.Create;
    AdvPryv1.Events.Add(val);
    val.Content := meValue.Text;
    val.StreamID := si.ID;
    val.UnitValue := cbUnit.Text;
    val.DateTime := dpDate.DateTime;
    val.Tags.CommaText := edTags.Text;
    val.Description := meDescription.Text;
    AdvPryv1.AddEvent(val);
  end;

  FillEvents;
end;

procedure TForm12.btDeleteStreamClick(Sender: TObject);
var
  si: TPryvStreamItem;
begin
  if not Assigned(TreeView1.Selected) then
  begin
    ShowMessage('Please select a Stream first.');
    exit;
  end;

  si := TPryvStreamItem(TreeView1.Selected.Data);
  TreeView1.Selected.Delete;
  AdvPryv1.DeleteStream(si);
  FillStreams;
end;

procedure TForm12.btAddStreamClick(Sender: TObject);
var
  it: TPryvStreamItem;
  si: TPryvStreamItem;
begin
  it := AdvPryv1.Streams.Add;

  if cbSubStream.Checked then
  begin
    if not Assigned(TreeView1.Selected) then
    begin
      ShowMessage('Please select a Stream first.');
      exit;
    end;
    si := TPryvStreamItem(TreeView1.Selected.Data);
    it.ParentID := si.ID;
  end;

  it.Summary := edStreamName.Text;
  AdvPryv1.AddStream(it);
  FillStreams;
end;

procedure TForm12.btDeleteEventClick(Sender: TObject);
begin
  AdvPryv1.DeleteEvent(AdvPryv1.Events[ListView1.ItemIndex]);

  FillEvents;
end;

procedure TForm12.btUpdateStreamClick(Sender: TObject);
var
  si: TPryvStreamItem;
begin
  if not Assigned(TreeView1.Selected) then
  begin
    ShowMessage('Please select a Stream first.');
    exit;
  end;
  si := TPryvStreamItem(TreeView1.Selected.Data);
  si.Summary := edStreamName.Text;
  AdvPryv1.UpdateStream(si);
  FillStreams;
end;

procedure TForm12.btDownloadClick(Sender: TObject);
var
  o: TPryvObject;
  sv: TSaveDialog;
begin
  if ListView1.ItemIndex < 0 then
     exit;

  Screen.Cursor := crHourGlass;

  o := AdvPryv1.Events[ListView1.ItemIndex];

  if o is TPryvPicture then
  begin
    sv := TSaveDialog.Create(Self);
    sv.FileName := (o as TPryvPicture).FileName;
    if sv.Execute then
    begin
      ProgressBar1.Position := 0;
      ProgressBar1.Visible := true;
      IsDownloading := true;
      AdvPryv1.Download(o as TPryvPicture,sv.FileName);
      ProgressBar1.Visible := false;
      IsDownloading := false;
      ProgressLabel.Caption := '';
      ShowMessage('File ' +  (o as TPryvPicture).FileName + ' downloaded');
    end;
    sv.Free;
  end;

  Screen.Cursor := crDefault;
end;

procedure TForm12.cbEventTypeChange(Sender: TObject);
begin
  if cbEventType.Text = 'Text' then
    ToggleControlsText
   else if cbEventType.Text = 'Picture' then
    ToggleControlsPicture
   else if cbEventType.Text = 'Position' then
    ToggleControlsPosition
   else if cbEventType.Text = 'Value' then
    ToggleControlsValue;

  btUpdateEvent.Enabled := false;
end;

procedure TForm12.btUpdateEventClick(Sender: TObject);
var
  text: TPryvText;
  pic: TPryvPicture;
  pos: TPryvPosition;
  val: TPryvValue;
begin
  if cbEventType.Text = 'Text' then
  begin
    text := AdvPryv1.Events[ListView1.ItemIndex] as TPryvText;
    text.Content := meValue.Text;
    text.DateTime := dpDate.DateTime;
    text.Tags.CommaText := edTags.Text;
    text.Description := meDescription.Text;
    AdvPryv1.UpdateEvent(text);
  end
  else if cbEventType.Text = 'Picture' then
  begin
    pic := AdvPryv1.Events[ListView1.ItemIndex] as TPryvPicture;
    pic.DateTime := dpDate.DateTime;
    pic.Tags.CommaText := edTags.Text;
    pic.Description := meDescription.Text;
    AdvPryv1.UpdateEvent(pic);
  end
  else if cbEventType.Text = 'Position' then
  begin
    pos := AdvPryv1.Events[ListView1.ItemIndex] as TPryvPosition;
    pos.Latitude := StrToFloat(edLatitude.Text);
    pos.Longitude := StrToFloat(edLongitude.Text);
    pos.DateTime := dpDate.DateTime;
    pos.Tags.CommaText := edTags.Text;
    pos.Description := meDescription.Text;
    AdvPryv1.UpdateEvent(pos);
  end
  else if cbEventType.Text = 'Value' then
  begin
    val := AdvPryv1.Events[ListView1.ItemIndex] as TPryvValue;
    val.Content := meValue.Text;
    val.DateTime := dpDate.DateTime;
    val.UnitValue := cbUnit.Text;
    val.Tags.CommaText := edTags.Text;
    val.Description := meDescription.Text;
    AdvPryv1.UpdateEvent(val);
  end;

  FillEvents;
end;

procedure TForm12.FillStreams;
begin
  AdvPryv1.GetStreams;
  AdvPryv1.FillTreeView(TreeView1);
end;

procedure TForm12.btStreamsClick(Sender: TObject);
begin
  FillStreams;
end;

procedure TForm12.FillEvents;
var
 I: integer;
 o: TPryvObject;
 li: TListItem;
 si: TPryvStreamItem;
 sa: CloudCustomPryv.TStringArray;
begin
  InitLV := true;
  meValue.Text := '';
  edTags.Text := '';
  edLatitude.Text := '';
  edLongitude.Text := '';
  cbUnit.Text := '';
  meDescription.Text := '';
  AdvCloudImage1.URL := '';
  btUpdateEvent.Enabled := true;

  ListView1.Items.Clear;

  if cbStream.Checked then
  begin
    if Assigned(TreeView1.Selected) then
    begin
      si := TPryvStreamItem(TreeView1.Selected.Data);
      SetLength(sa, 1);
      sa[0] := si.ID;
      AdvPryv1.GetEvents(sa,nil,StrToInt(cbEventCount.Text));
    end;
  end
  else
    AdvPryv1.GetEvents(StrToInt(cbEventCount.Text));

  for I := 0 to AdvPryv1.Events.Count - 1 do
  begin
    o := AdvPryv1.Events[I];

    li := ListView1.Items.Add;

    if o is TPryvValue then
    begin
      li.Caption := (o as TPryvValue).Content;
      li.SubItems.Add((o as TPryvValue).UnitValue);
    end
    else
    begin
      if o is TPryvText then
      begin
        li.Caption := (o as TPryvText).Content;
        li.SubItems.Add('Text')
      end
      else if o is TPryvPicture then
      begin
        li.Caption := '';
        li.SubItems.Add('Picture')
      end
      else if o is TPryvPosition then
      begin
        li.Caption := '';
        li.SubItems.Add('Position');
      end;
    end;

    li.SubItems.Add(o.Description);
    li.SubItems.Add(DateTimeToStr(o.DateTime));

    si := AdvPryv1.Streams.FindStreamById(o.StreamID);
    if Assigned(si) then
      li.SubItems.Add(si.Summary);

  end;
  InitLV := false;
end;

procedure TForm12.btEventsClick(Sender: TObject);
begin
  FillEvents;
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
  InitLV := false;
  ReportMemoryLeaksOnShutdown := true;

  IsUploading := false;
  ProgressBar1.Visible := false;
  ProgressLabel.Caption := '';

  Connected := false;
  ToggleControls;
  dpDate.DateTime := Now;
end;

procedure TForm12.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  o: TPryvObject;
begin
  if (InitLV) or (ListView1.ItemIndex < 0 )then
    Exit;

  btUpdateEvent.Enabled := true;

  meValue.Text := '';
  edTags.Text := '';
  edLatitude.Text := '';
  edLongitude.Text := '';
  cbUnit.Text := '';
  meDescription.Text := '';
  AdvCloudImage1.URL := '';

  o := AdvPryv1.Events[ListView1.ItemIndex];
  meDescription.Text := o.Description;
  edTags.Text := o.Tags.CommaText;
  dpDate.DateTime := o.DateTime;

  if (o is TPryvValue) then
  begin
    cbEventType.ItemIndex := 3;
    ToggleControlsValue;
    cbUnit.Text := (o as TPryvValue).UnitValue;
  end
  else if (o is TPryvText) then
  begin
    cbEventType.ItemIndex := 0;
    ToggleControlsText;
    meValue.Text := (o as TPryvText).Content;
  end
  else if (o is TPryvPicture) then
  begin
    cbEventType.ItemIndex := 1;
    ToggleControlsPicture;
    AdvCloudImage1.URL := (o as TPryvPicture).ImageURL;
  end
  else if (o is TPryvPosition) then
  begin
    cbEventType.ItemIndex := 2;
    ToggleControlsPosition;
    edLatitude.Text := FloatToStr((o as TPryvPosition).Latitude);
    edLongitude.Text := FloatToStr((o as TPryvPosition).Longitude);
  end;
end;

end.

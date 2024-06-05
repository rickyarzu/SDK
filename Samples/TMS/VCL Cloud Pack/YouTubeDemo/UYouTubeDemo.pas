unit UYouTubeDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, CloudBase, CloudBaseWin,
  CloudCustomGoogle, CloudGoogleWin, CloudCustomYouTube, CloudYouTube,
  CloudImage, ExtCtrls, ComCtrls, ShellApi;

type
  TForm12 = class(TForm)
    AdvYouTube1: TAdvYouTube;
    Panel1: TPanel;
    btConnect: TButton;
    btRemove: TButton;
    Image1: TImage;
    GroupBox1: TGroupBox;
    btGetVideos: TButton;
    cbRating: TComboBox;
    GroupBox2: TGroupBox;
    AdvCloudImage1: TAdvCloudImage;
    Label2: TLabel;
    btDelete: TButton;
    btSetRating: TButton;
    GroupBox3: TGroupBox;
    edTitle: TEdit;
    edDescription: TEdit;
    btUpload: TButton;
    Label3: TLabel;
    Label4: TLabel;
    lvVideos: TListView;
    OpenDialog1: TOpenDialog;
    btNext: TButton;
    ProgressBar1: TProgressBar;
    cbPageSize: TComboBox;
    Label1: TLabel;
    Label5: TLabel;
    lbLink: TLabel;
    btUpdate: TButton;
    procedure AdvYouTube1ReceivedAccessToken(Sender: TObject);
    procedure btUploadClick(Sender: TObject);
    procedure btGetVideosClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btSetRatingClick(Sender: TObject);
    procedure btConnectClick(Sender: TObject);
    procedure ToggleControls;
    procedure lvVideosChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure FormCreate(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure AdvYouTube1UploadProgress(Sender: TObject; FileName: string;
      Position, Total: Int64);
    procedure AdvYouTube1AfterAddVideo(Sender: TObject; AFileName: string;
      AVideo: TYouTubeVideo);
    procedure lbLinkClick(Sender: TObject);
    procedure btUpdateClick(Sender: TObject);
    procedure cbPageSizeChange(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    InitLV: boolean;
    procedure LoadVideos(First: boolean = true);
    procedure FillVideos;
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
//  GAppkey = 'xxxxxxxxx';
//  GAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm12.AdvYouTube1AfterAddVideo(Sender: TObject; AFileName: string;
  AVideo: TYouTubeVideo);
begin
  if Assigned(AVideo) then
    ShowMessage('The video has been uploaded.')
  else
    ShowMessage('Upload failed, please try again.')
end;

procedure TForm12.AdvYouTube1ReceivedAccessToken(Sender: TObject);
begin
  AdvYouTube1.SaveTokens;
  Connected := true;
  ToggleControls;
  LoadVideos;
end;

procedure TForm12.btUpdateClick(Sender: TObject);
var
  v: TYouTubeVideo;
begin
  if lvVideos.ItemIndex >= 0 then
  begin
    v := AdvYouTube1.Videos[lvVideos.ItemIndex];
    v.Title := edTitle.Text;
    v.Description := edDescription.Text;
    AdvYouTube1.UpdateVideo(v);
  end;
end;

procedure TForm12.btUploadClick(Sender: TObject);
begin
  if edTitle.Text <> '' then
  begin
    if OpenDialog1.Execute then
    begin
       Screen.Cursor := crHourGlass;
       AdvYouTube1.UploadVideo(OpenDialog1.FileName, edTitle.Text, edDescription.Text);
       Screen.Cursor := crDefault;
    end;
  end
  else
    ShowMessage('Please enter a title for the video.');
end;

procedure TForm12.cbPageSizeChange(Sender: TObject);
begin
  LoadVideos(True);
end;

procedure TForm12.btGetVideosClick(Sender: TObject);
begin
  LoadVideos( (Sender as TButton).Tag = 0);
end;

procedure TForm12.btNextClick(Sender: TObject);
begin
  LoadVideos(false);
end;

procedure TForm12.btRemoveClick(Sender: TObject);
begin
  AdvYouTube1.ClearTokens;
  btConnect.Enabled := true;
  btRemove.Enabled := false;
end;

procedure TForm12.AdvYouTube1UploadProgress(Sender: TObject; FileName: string;
  Position, Total: Int64);
begin
  ProgressBar1.Max := Total;
  ProgressBar1.Position := Position;
  if ProgressBar1.Position = ProgressBar1.Max then
    ProgressBar1.Position := 0;
end;

procedure TForm12.btConnectClick(Sender: TObject);
var
  acc: boolean;
begin
  AdvYouTube1.App.Key := GAppKey;
  AdvYouTube1.App.Secret := GAppSecret;

  if AdvYouTube1.App.Key <> '' then
  begin
    AdvYouTube1.PersistTokens.Location := plIniFile;
    AdvYouTube1.PersistTokens.Key := '.\youtube.ini';
    AdvYouTube1.PersistTokens.Section := 'tokens';
    AdvYouTube1.LoadTokens;

    acc := AdvYouTube1.TestTokens;

    if not acc then
    begin
      AdvYouTube1.RefreshAccess;
      acc := AdvYouTube1.TestTokens;
    end;

    if not acc then
    begin
        AdvYouTube1.DoAuth;
    end
    else
    begin
      Connected := true;
      ToggleControls;
      LoadVideos;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm12.btDeleteClick(Sender: TObject);
begin
  if lvVideos.ItemIndex >= 0 then
  begin
    if MessageDlg('Are you sure you want to delete the selected video?', mtConfirmation, mbOKCancel, 0) = mrOk then
    begin
      AdvYouTube1.DeleteVideo(AdvYouTube1.Videos[lvVideos.ItemIndex]);
      FillVideos;
    end;
  end
  else
  begin
    ShowMessage('Please select a video first.');
  end;
end;

procedure TForm12.btSetRatingClick(Sender: TObject);
var
  Rating: TYouTubeRating;
begin
  Rating := yrUnspecified;

  if lvVideos.ItemIndex >= 0 then
  begin
    if cbRating.ItemIndex = 0 then
      Rating := yrDislike
    else if cbRating.ItemIndex = 1 then
      Rating := yrLike
    else if cbRating.ItemIndex = 2 then
      Rating := yrNone
    else if cbRating.ItemIndex = 3 then
      Rating := yrUnspecified;

    AdvYouTube1.SetRating(AdvYouTube1.Videos[lvVideos.ItemIndex], Rating);
  end;
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
  ToggleControls;
end;

procedure TForm12.lbLinkClick(Sender: TObject);
begin
  if lvVideos.ItemIndex >= 0 then
  begin
    ShellExecute(self.WindowHandle,'open',PChar(lbLink.Caption),nil,nil, SW_SHOWNORMAL);
  end;
end;

procedure TForm12.LoadVideos(first: boolean = true);
begin
  Screen.Cursor := crHourGlass;

  if first then
    AdvYouTube1.GetFirstVideos(StrToInt(cbPageSize.Items[cbPageSize.ItemIndex]))
  else
    AdvYouTube1.GetNextVideos(StrToInt(cbPageSize.Items[cbPageSize.ItemIndex]));

  FillVideos;
  Screen.Cursor := crDefault;
end;

procedure TForm12.FillVideos;
var
  I: integer;
  li: TListItem;
begin
  lbLink.Caption := '';
  AdvCloudImage1.URL := '';
  cbRating.ItemIndex := 3;
  InitLV := true;
  lvVideos.Items.Clear;
  for I := 0 to AdvYouTube1.Videos.Count - 1 do
  begin
    li := lvVideos.Items.Add;
    li.Caption := IntToStr(i + 1);

    li.SubItems.Add(AdvYouTube1.Videos[I].Title);
    li.SubItems.Add(AdvYouTube1.Videos[I].Description);
    li.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:nn',AdvYouTube1.Videos[I].PublishDate));
    li.Data := AdvYouTube1.Videos[I];
  end;
  InitLV := false;
end;

procedure TForm12.lvVideosChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  v: TYouTubeVideo;
begin
  if lvVideos.ItemIndex >= 0 then
  begin
    if InitLV then
      Exit;

    v := AdvYouTube1.Videos[lvVideos.ItemIndex];
    lbLink.Caption := v.Link;
    edTitle.Text := v.Title;
    edDescription.Text := v.Description;
    AdvCloudImage1.URL := v.ImageURL;

    AdvYouTube1.GetRating(v);

    if v.Rating = yrDislike then
      cbRating.ItemIndex := 0
    else if v.Rating = yrLike then
      cbRating.ItemIndex := 1
    else if v.Rating = yrNone then
      cbRating.ItemIndex := 2
    else if v.Rating = yrUnspecified then
      cbRating.ItemIndex := 3;
  end;
end;

procedure TForm12.ToggleControls;
begin
  btConnect.Enabled := not Connected;
  btRemove.Enabled := Connected;
  btGetVideos.Enabled := Connected;
  lvVideos.Enabled := Connected;
  btDelete.Enabled := Connected;
  lbLink.Enabled := Connected;
  edTitle.Enabled := Connected;
  edDescription.Enabled := Connected;
  btUpload.Enabled := Connected;
  btNext.Enabled := Connected;
  btSetRating.Enabled := Connected;
  cbRating.Enabled := Connected;
  cbPageSize.Enabled := Connected;
end;

end.

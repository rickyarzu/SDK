unit UInstagramDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ShellApi,
  Dialogs, CloudBase, CloudInstagram, StdCtrls, CloudImage, ExtCtrls, ComCtrls,
  CloudBaseWin, CloudCustomInstagram;

type
  TForm1 = class(TForm)
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    btConnect: TButton;
    gbFollowing: TGroupBox;
    lbFollowing: TListBox;
    gbMedia: TGroupBox;
    lbMedia: TListBox;
    Label8: TLabel;
    imgMediaPreview: TAdvCloudImage;
    btGetFollowing: TButton;
    btGetUser: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    lbLocation: TLabel;
    lbFilter: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbCreated: TLabel;
    lbLink: TLabel;
    Label9: TLabel;
    lvComments: TListView;
    lbLikes: TListBox;
    lbLikesCount: TLabel;
    chkLike: TCheckBox;
    edComment: TEdit;
    btPost: TButton;
    lbTags: TListBox;
    Label10: TLabel;
    btFollowers: TButton;
    btDelete: TButton;
    gbSearch: TGroupBox;
    edSearchUsers: TEdit;
    btSearch: TButton;
    cbSearch: TComboBox;
    Label11: TLabel;
    lbMediaProfile: TLabel;
    btMediaProfileDetails: TButton;
    btMediaLocation: TButton;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    imgUser: TAdvCloudImage;
    lbInfo: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    lbBio: TLabel;
    lbWebsite: TLabel;
    lbUsername: TLabel;
    btFollow: TButton;
    btUnfollow: TButton;
    btMediaNext: TButton;
    Image1: TImage;
    btRemove: TButton;
    btGetFeed: TButton;
    btDownload: TButton;
    TAdvInstagram1: TAdvInstagram;
    Button1: TButton;
    procedure btConnectClick(Sender: TObject);
    procedure btGetUserClick(Sender: TObject);
    procedure btGetFollowingClick(Sender: TObject);
    procedure lbMediaClick(Sender: TObject);
    procedure lbFollowingClick(Sender: TObject);
    procedure btDownloadClick(Sender: TObject);
    procedure chkLikeClick(Sender: TObject);
    procedure btPostClick(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure btFollowClick(Sender: TObject);
    procedure btUnfollowClick(Sender: TObject);
    procedure btFollowersClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure lbUsernameClick(Sender: TObject);
    procedure lbLinkClick(Sender: TObject);
    procedure lbWebsiteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btMediaProfileDetailsClick(Sender: TObject);
    procedure btMediaLocationClick(Sender: TObject);
    procedure btMediaNextClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure btGetFeedClick(Sender: TObject);
    procedure TAdvInstagram1ReceivedAccessToken(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    CurrentUserID: string;
    NextMaxTagID: string;
    PagingFunction: string;
    procedure ToggleControls;
    procedure GetPhotoInfo;
    procedure SetPagingFunction(FunctionName: string);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  InstagramAppkey = 'xxxxxxxxx';
//  InstagramAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm1.btConnectClick(Sender: TObject);
var
  acc: boolean;
begin
  TAdvInstagram1.App.Key := InstagramAppKey;
  TAdvInstagram1.App.Secret := InstagramAppSecret;

  TAdvInstagram1.Logging := true;
  TAdvInstagram1.LogLevel := llDetail;

  if TAdvInstagram1.App.Key <> '' then
  begin
    TAdvInstagram1.PersistTokens.Location := plIniFile;
    TAdvInstagram1.PersistTokens.Key := '.\instagram.ini';
    TAdvInstagram1.PersistTokens.Section := 'tokens';
    TAdvInstagram1.LoadTokens;
    TAdvInstagram1.LogOut;

    acc := TAdvInstagram1.TestTokens;

    if not acc then
    begin
      TAdvInstagram1.RefreshAccess;
      acc := TAdvInstagram1.TestTokens;
      if not acc then
        TAdvInstagram1.DoAuth;
    end
    else
    begin
      Connected := true;
      ToggleControls;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm1.btGetUserClick(Sender: TObject);
var
  I: Integer;
begin
  Screen.Cursor := crHourGlass;
  TAdvInstagram1.Users.Clear;
  lbFollowing.Items.Clear;
  TAdvInstagram1.GetProfile('', TAdvInstagram1.Profile);
  lbFollowing.Items.Add(TAdvInstagram1.Profile.FullName);

  TAdvInstagram1.GetMediaByUser('', 0, '', '');
  lbMedia.Items.Clear;
  for I := 0 to TAdvInstagram1.Photos.Count - 1 do
  begin
    if TAdvInstagram1.Photos[I].Caption <> '' then
      lbMedia.Items.Add(TAdvInstagram1.Photos[I].Caption)
    else
      lbMedia.Items.Add('Photo ' + IntToStr(I + 1));
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.btMediaLocationClick(Sender: TObject);
var
  I: integer;
  loc: TInstagramLocation;
begin
  if lbmedia.ItemIndex >= 0 then
  begin
    loc := TAdvInstagram1.Photos[lbMedia.ItemIndex].Location;

    TAdvInstagram1.Photos.Clear;
    TAdvInstagram1.GetMediaByLocation(loc.Latitude, loc.Longitude);

    lbMedia.Items.Clear;
    for I := 0 to TAdvInstagram1.Photos.Count - 1 do
    begin
      lbMedia.Items.Add(TAdvInstagram1.Photos[I].Caption);
    end;
  end;
end;

procedure TForm1.btMediaNextClick(Sender: TObject);
var
  I: integer;
  User: TInstagramUser;
  Tag: TInstagramTag;
begin
  if lbMedia.Items.Count > 0 then
  begin
    if PagingFunction = 'user' then
    begin
      User := TAdvInstagram1.Users[lbFollowing.ItemIndex].User;
      btMediaNext.Enabled := TAdvInstagram1.GetMediaByUser(User.ID,20,TAdvInstagram1.Photos[TAdvInstagram1.Photos.Count - 1].ID,'');
    end
    else if PagingFunction = 'tag' then
    begin
      Tag := TAdvInstagram1.Tags[lbFollowing.ItemIndex];
      NextMaxTagID := TAdvInstagram1.GetMediaByTag(Tag.Summary,NextMaxTagID, '');

      if NextMaxTagID = EmptyStr then
        btMediaNext.Enabled := false
      else
        btMediaNext.Enabled := true;
    end
    else if PagingFunction = 'feed' then
    begin
      btMediaNext.Enabled := TAdvInstagram1.GetFeed(20,TAdvInstagram1.Photos[TAdvInstagram1.Photos.Count - 1].ID,'');
    end;

    lbMedia.Items.Clear;
    for I := 0 to TAdvInstagram1.Photos.Count - 1 do
    begin
      if TAdvInstagram1.Photos[I].Caption <> '' then
        lbMedia.Items.Add(TAdvInstagram1.Photos[I].Caption)
      else
        lbMedia.Items.Add('Photo ' + IntToStr(I + 1));
    end;

  end;
end;

procedure TForm1.btMediaProfileDetailsClick(Sender: TObject);
var
  User: TInstagramUser;
begin
  if lbMedia.ItemIndex >= 0 then
  begin
    TAdvInstagram1.GetProfile(TAdvInstagram1.Photos[lbMedia.ItemIndex].From.ID, TAdvInstagram1.Photos[lbMedia.ItemIndex].From);
    User := TAdvInstagram1.Photos[lbMedia.ItemIndex].From;

    CurrentUserID := User.ID;
    imgUser.URL := User.ProfilePicture;
    lbUsername.Caption := User.UserName;
    lbBio.Caption := User.Bio;
    lbWebsite.Caption := User.Website;
    lbInfo.Caption := 'Photos: ' + IntToStr(User.Photos)
      + ' Followers: ' + IntToStr(User.Followers)
      + ' Following: ' + IntToStr(User.Following);
  end;
end;

procedure TForm1.btPostClick(Sender: TObject);
begin
  if (lbMedia.ItemIndex > -1) and (edComment.Text <> '') then
    TAdvInstagram1.PostComment(TAdvInstagram1.Photos[lbMedia.ItemIndex].ID, edComment.Text)
end;

procedure TForm1.btRemoveClick(Sender: TObject);
begin
  TAdvInstagram1.Logout;
  TAdvInstagram1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TForm1.btSearchClick(Sender: TObject);
var
  I: Integer;
begin
  if edSearchUsers.Text <> '' then
  begin
    TAdvInstagram1.Users.Clear;
    TAdvInstagram1.Tags.Clear;
    Screen.Cursor := crHourGlass;

    if cbSearch.ItemIndex = 0 then
    begin
      lbMedia.Items.Clear;
      imgMediaPreview.URL := '';
      lbLocation.Caption := '';
      lbFilter.Caption := '';
      lbLink.Caption := '';
      lbCreated.Caption := '';

      TAdvInstagram1.SearchUsers(edSearchUsers.Text);

      lbFollowing.Items.Clear;
      for I := 0 to TAdvInstagram1.Users.Count - 1 do
      begin
        lbFollowing.Items.Add(TAdvInstagram1.Users[I].User.UserName);
      end;
    end
    else
    begin
      lbMedia.Items.Clear;
      imgMediaPreview.URL := '';
      lbLocation.Caption := '';
      lbFilter.Caption := '';
      lbLink.Caption := '';
      lbCreated.Caption := '';

      TAdvInstagram1.SearchTags(edSearchUsers.Text);

      lbFollowing.Items.Clear;
      for I := 0 to TAdvInstagram1.Tags.Count - 1 do
      begin
        lbFollowing.Items.Add(TAdvInstagram1.Tags[I].Summary + ' (' + IntToStr(TAdvInstagram1.Tags[I].MediaCount) + ')');
      end;
    end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TForm1.btUnfollowClick(Sender: TObject);
begin
  if lbFollowing.ItemIndex > -1 then
  begin
    TAdvInstagram1.UnFollow(TAdvInstagram1.Users[lbFollowing.ItemIndex].User.ID);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  TAdvInstagram1.GetMediaByTag(edSearchUsers.Text);
end;

procedure TForm1.chkLikeClick(Sender: TObject);
begin
  if lbMedia.ItemIndex > -1 then
  begin
    if chkLike.Checked then
      TAdvInstagram1.Like(TAdvInstagram1.Photos[lbMedia.ItemIndex].ID)
    else
      TAdvInstagram1.UnLike(TAdvInstagram1.Photos[lbMedia.ItemIndex].ID);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Connected := false;
  ToggleControls;
  NextMaxTagID := EmptyStr;
  PagingFunction := EmptyStr;
  btMediaNext.Enabled := false;
  imgMediaPreview.URL := '';
  lbLocation.Caption := '';
  lbFilter.Caption := '';
  lbLink.Caption := '';
  lbCreated.Caption := '';
  lbinfo.Caption := '';
  lbBio.Caption := '';
  lbWebsite.Caption := '';
  lbUsername.Caption := '';
  lbInfo.Caption := '';
  lbMediaProfile.Caption := '';

end;

procedure TForm1.btGetFeedClick(Sender: TObject);
var
  I: integer;
begin
  btMediaNext.Enabled := TAdvInstagram1.GetFeed();
  SetPagingFunction('feed');

  if TAdvInstagram1.Photos.Count > 0 then
  begin
    lbMedia.Items.Clear;
    for I := 0 to TAdvInstagram1.Photos.Count - 1 do
    begin
      if TAdvInstagram1.Photos[I].Caption <> '' then
        lbMedia.Items.Add(TAdvInstagram1.Photos[I].Caption)
      else
        lbMedia.Items.Add('Photo ' + IntToStr(I + 1));
    end;

    lbMedia.ItemIndex := 0;
    GetPhotoInfo;
  end;
end;

procedure TForm1.btGetFollowingClick(Sender: TObject);
var
  I: Integer;
begin
  Screen.Cursor := crHourGlass;
  lbMedia.Items.Clear;
  imgMediaPreview.URL := '';
  lbLocation.Caption := '';
  lbFilter.Caption := '';
  lbLink.Caption := '';
  lbCreated.Caption := '';

  TAdvInstagram1.GetFollowing;
  lbFollowing.Items.Clear;
  for I := 0 to TAdvInstagram1.Users.Count - 1 do
  begin
    lbFollowing.Items.Add(TAdvInstagram1.Users[I].User.FullName);
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.btFollowersClick(Sender: TObject);
var
  I: Integer;
begin
  Screen.Cursor := crHourGlass;
  lbMedia.Items.Clear;
  imgMediaPreview.URL := '';
  lbLocation.Caption := '';
  lbFilter.Caption := '';
  lbLink.Caption := '';
  lbCreated.Caption := '';

  TAdvInstagram1.GetFollowers;
  lbFollowing.Items.Clear;
  for I := 0 to TAdvInstagram1.Users.Count - 1 do
  begin
    lbFollowing.Items.Add(TAdvInstagram1.Users[I].User.FullName);
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.btDeleteClick(Sender: TObject);
begin
  if (lvComments.ItemIndex > -1) and (lbMedia.ItemIndex > -1) then
    TAdvInstagram1.DeleteComment(TAdvInstagram1.Photos[lbMedia.ItemIndex].ID, TAdvInstagram1.Photos[lbMedia.ItemIndex].Comments[lvComments.ItemIndex].ID)
end;

procedure TForm1.btDownloadClick(Sender: TObject);
begin
  if lbMedia.ItemIndex > -1 then
  begin
    SaveDialog1.FileName := TAdvInstagram1.Photos[lbMedia.ItemIndex].ID + '.jpg';
    if (SaveDialog1.Execute) then
    begin
      Screen.Cursor := crHourGlass;
      TAdvInstagram1.DownloadPhoto(SaveDialog1.FileName, TAdvInstagram1.Photos[lbMedia.ItemIndex].Images.StandardRes.URL);
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TForm1.btFollowClick(Sender: TObject);
begin
  if lbFollowing.ItemIndex > -1 then
  begin
    TAdvInstagram1.Follow(TAdvInstagram1.Users[lbFollowing.ItemIndex].User.ID);
  end;
end;

procedure TForm1.lbMediaClick(Sender: TObject);
begin
  GetPhotoInfo;
end;

procedure TForm1.lbUsernameClick(Sender: TObject);
begin
  ShellExecute(self.WindowHandle,'open',PChar('http://www.instagram.com/' + lbUsername.Caption),nil,nil, SW_SHOWNORMAL);
end;

procedure TForm1.lbWebsiteClick(Sender: TObject);
begin
  ShellExecute(self.WindowHandle,'open',PChar(lbWebsite.Caption),nil,nil, SW_SHOWNORMAL);
end;

procedure TForm1.SetPagingFunction(FunctionName: string);
begin
  if btMediaNext.Enabled then
    PagingFunction := FunctionName
  else
    PagingFunction := EmptyStr;
end;

procedure TForm1.TAdvInstagram1ReceivedAccessToken(Sender: TObject);
begin
  TAdvInstagram1.SaveTokens;
  Connected := true;
  ToggleControls;
end;

procedure TForm1.ToggleControls;
begin
  btConnect.Enabled := not connected;
  btRemove.Enabled := connected;
  lbFollowing.Enabled := connected;
  lbMedia.Enabled := connected;
  btDownload.Enabled := connected;
  btSearch.Enabled := connected;
  lvComments.Enabled := connected;
  cbSearch.Enabled := connected;
  edSearchUsers.Enabled := connected;
  btGetUser.Enabled := connected;
  btGetFollowing.Enabled := connected;
  btDownload.Enabled := connected;
  btFollowers.Enabled := connected;
  btFollow.Enabled := connected;
  btUnfollow.Enabled := connected;
  btMediaProfileDetails.Enabled := connected;
  btMediaLocation.Enabled := connected;
  chkLike.Enabled := connected;
  PageControl1.Enabled := connected;
  PageControl2.Enabled := connected;
  btGetFeed.Enabled := connected;
end;

procedure TForm1.GetPhotoInfo;
var
  ph: TInstagramPhoto;
  I: Integer;
  li: TListItem;
begin
  if lbMedia.ItemIndex > -1 then
  begin
    Screen.Cursor := crHourGlass;
    ph := TAdvInstagram1.Photos[lbMedia.ItemIndex];
    imgMediaPreview.URL := ph.Images.Thumbnail.URL;
    lbLocation.Caption := ph.Location.Summary;
    lbFilter.Caption := ph.Filter;
    lbLink.Caption := ph.Link;
    lbCreated.Caption := DateTimeToStr(ph.CreatedTime);
    lbLikesCount.Caption := 'Likes: (' + IntToStr(ph.LikesCount) + ')';
    lbMediaProfile.Caption := ph.From.FullName;
    chkLike.Checked := ph.UserLikes;

    lbTags.Items.Clear;
    for I := 0 to ph.Tags.Count - 1 do
      lbTags.Items.Add(ph.Tags[I]);

    lbLikes.Items.Clear;
    for I := 0 to ph.Likes.Count - 1 do
      lbLikes.Items.Add(ph.Likes[I].User.FullName);

    lvComments.Columns[0].Caption := 'Text (' + IntToStr(ph.CommentsCount) + ')';
    lvComments.Items.Clear;
    for I := 0 to ph.Comments.Count - 1 do
    begin
      li := lvComments.Items.Add;
      li.Caption := ph.Comments[I].Text;
      li.SubItems.Add(ph.Comments[I].From.FullName);
      li.SubItems.Add(DateTimeToStr(ph.Comments[I].CreatedTime));
    end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TForm1.lbFollowingClick(Sender: TObject);
var
  I: integer;
  User: TInstagramUser;
begin
  Screen.Cursor := crHourGlass;
  if lbFollowing.ItemIndex > -1 then
  begin

    if TAdvInstagram1.Tags.Count > 0 then
    begin
      NextMaxTagID := TAdvInstagram1.GetMediaByTag(TAdvInstagram1.Tags[lbFollowing.ItemIndex].Summary);

      if NextMaxTagID = EmptyStr then
        btMediaNext.Enabled := false
      else
        btMediaNext.Enabled := true;

      SetPagingFunction('tag');
    end
    else
    begin
      if TAdvInstagram1.Users.Count > 0 then
      begin
        User := TAdvInstagram1.Users[lbFollowing.ItemIndex].User;
        TAdvInstagram1.GetProfile(User.ID, User);
      end
      else
        User := TAdvInstagram1.Profile;

      CurrentUserID := User.ID;
      imgUser.URL := User.ProfilePicture;
      lbUsername.Caption := User.UserName;
      lbBio.Caption := User.Bio;
      lbWebsite.Caption := User.Website;
      lbInfo.Caption := 'Photos: ' + IntToStr(User.Photos)
        + ' Followers: ' + IntToStr(User.Followers)
        + ' Following: ' + IntToStr(User.Following);

      btMediaNext.Enabled := TAdvInstagram1.GetMediaByUser(User.ID, 20, '', '');

      SetPagingFunction('user');
    end;

    lbMedia.Items.Clear;
    for I := 0 to TAdvInstagram1.Photos.Count - 1 do
    begin
      if TAdvInstagram1.Photos[I].Caption <> '' then
        lbMedia.Items.Add(TAdvInstagram1.Photos[I].Caption)
      else
        lbMedia.Items.Add('Photo ' + IntToStr(I + 1));
    end;

    if TAdvInstagram1.Photos.Count > 0 then
    begin
      lbMedia.ItemIndex := 0;
      GetPhotoInfo;
    end;

  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.lbLinkClick(Sender: TObject);
begin
  ShellExecute(self.WindowHandle,'open',PChar(lbLink.Caption),nil,nil, SW_SHOWNORMAL);
end;

end.

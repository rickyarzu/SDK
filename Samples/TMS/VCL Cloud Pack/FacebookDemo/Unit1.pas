{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2012 - 2021                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CloudBase, StdCtrls, CloudFacebook, CloudCustomFacebook,
  CloudImage, ExtCtrls, Buttons, ComCtrls, CloudBaseWin;

type

  TForm1 = class(TForm)
    AdvFacebook1: TAdvFacebook;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    SpeedButton1: TSpeedButton;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    Edit1: TEdit;
    Label3: TLabel;
    Label1: TLabel;
    Edit3: TEdit;
    Button3: TButton;
    Button2: TButton;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    AdvCloudImage1: TAdvCloudImage;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    lbName: TLabel;
    ListView1: TListView;
    Button4: TButton;
    Image1: TImage;
    btRemove: TButton;
    PageControl1: TPageControl;
    Likes: TTabSheet;
    Comments: TTabSheet;
    lvComments: TListView;
    lvLikes: TListView;
    btShowLikes: TButton;
    SpeedButton3: TSpeedButton;
    GroupBox4: TGroupBox;
    ListBox2: TListBox;
    Label12: TLabel;
    lbPageLikes: TLabel;
    ListBox3: TListBox;
    SpeedButton4: TSpeedButton;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    SpeedButton5: TSpeedButton;
    ListBox4: TListBox;
    SpeedButton6: TSpeedButton;
    btUserLikes: TButton;
    Label14: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ToggleControls;
    procedure LoadFeed;
    procedure LoadComments;
    procedure LoadLikes;
    procedure ShowProfile(Profile: TFacebookProfile);
    procedure AdvFacebook1ReceivedAccessToken(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btShowLikesClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure AdvCloudImage1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure btUserLikesClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    InitLV: boolean;
    InitLVC: boolean;
    FeedOffset: integer;
    Profile: TFacebookProfile;
    Feed: TFeed;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  uProfilePicture;

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  FacebookAppkey = 'xxxxxxxxx';
//  FacebookAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm1.btRemoveClick(Sender: TObject);
begin

  AdvFacebook1.Logout;

  AdvFacebook1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TForm1.btShowLikesClick(Sender: TObject);
var
  i, j, k: integer;
  strlikes: string;
  o: TFacebookFeedItem;
begin
  if InitLVC then
    Exit;

  if (ListView1.ItemIndex >= 0) and (lvComments.ItemIndex >= 0) then
  begin
    i := ListView1.ItemIndex;
    j := lvComments.ItemIndex;
    o := ListView1.Items[i].Data;

    AdvFacebook1.GetLikes(o.Comments[j]);

    if o.Comments[j].Likes.Count > 0 then
    begin
      strlikes := 'Likes:' + #13;
      for k := 0 to o.Likes.Count - 1 do
        strlikes := strlikes + o.Comments[j].Likes[k].FullName + #13;
    end
    else
      strlikes := 'No Likes found for this Comment.';

    ShowMessage(strlikes);
  end;
end;

procedure TForm1.btUserLikesClick(Sender: TObject);
var
  I: Integer;
begin
  ListBox3.Clear;
  AdvFacebook1.GetLikes(Profile);
  for I := 0 to Profile.Likes.Count - 1 do
    ListBox3.Items.Add(Profile.Likes[I].Name);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  acc: boolean;
begin

  AdvFacebook1.App.CallBackPort := 8000;
  AdvFacebook1.App.CallBackURL := 'http://localhost:8000/';

  AdvFacebook1.Scopes.Add('email');

  AdvFacebook1.App.Key := FacebookAppkey;
  AdvFacebook1.App.Secret := FacebookAppSecret;
  AdvFacebook1.Logging := true;
  AdvFacebook1.LogLevel := llDetail;

  if AdvFacebook1.App.Key <> '' then
  begin
    AdvFacebook1.PersistTokens.Location := plIniFile;
    AdvFacebook1.PersistTokens.Key := '.\facebook.ini';
    AdvFacebook1.PersistTokens.Section := 'tokens';
    AdvFacebook1.LoadTokens;

    acc := AdvFacebook1.TestTokens;

    if not acc then
    begin
      AdvFacebook1.RefreshAccess;
      acc := AdvFacebook1.TestTokens;
      if not acc then
        AdvFacebook1.DoAuth;
    end
    else
    begin
      Connected := true;
      ToggleControls;
      AdvFacebook1.GetUserInfo;
      Profile := AdvFacebook1.Profile;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  ImageID: string;
begin

  if OpenDialog1.Execute then
  begin
     ImageID := AdvFacebook1.PostImage(Edit2.Text, OpenDialog1.FileName);
     Edit3.Text := AdvFacebook1.GetImageURL(ImageID);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if ListBox2.ItemIndex >= 0 then
  begin
    AdvFacebook1.Post(Edit2.Text, Edit1.Text, Edit3.Text, AdvFacebook1.PageList[ListBox2.ItemIndex]);
    Feed := AdvFacebook1.PageList[ListBox2.ItemIndex].Feed;
  end
  else
  begin
    AdvFacebook1.Post(Edit2.Text, Edit1.Text, Edit3.Text);
    Feed := Profile.Feed;
  end;

  LoadFeed;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FeedOffset := FeedOffset + 10;
  LoadFeed;
end;

procedure TForm1.AdvCloudImage1Click(Sender: TObject);
var
  Profile: TFacebookProfile;
  url: string;
  ProfilePicture: TProfilePicture;
begin
  Profile := ListBox1.Items.Objects[ListBox1.ItemIndex] as TFacebookProfile;

  url := AdvFacebook1.GetProfilePicture(Profile.ID, ppLarge);

  if url <> '' then
  begin
      ProfilePicture := TProfilePicture.Create(Self);
      try
        ProfilePicture.AdvCloudImage1.URL := url;
        ProfilePicture.ShowModal;
      finally
        ProfilePicture.Free;
      end;
  end;
end;

procedure TForm1.AdvFacebook1ReceivedAccessToken(Sender: TObject);
begin
  AdvFacebook1.SaveTokens;
  Connected := true;
  ToggleControls;
  AdvFacebook1.GetUserInfo;
  Profile := AdvFacebook1.Profile;
  ShowProfile(Profile);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Connected := false;
  FeedOffset := 0;
  ToggleControls;

  ReportMemoryLeaksOnShutdown := true;
end;

procedure TForm1.ShowProfile(Profile: TFacebookProfile);
begin
  lbName.Caption := Profile.FirstName + ' ' + Profile.LastName;
  Label5.Caption := Profile.BirthDay;
  Label6.Caption := Profile.Location.Name;
  AdvCloudImage1.URL := Profile.ImageURL;
  ListBox3.Clear;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  I: Integer;
begin
  Screen.Cursor := crHourGlass;
  ListBox1.Items.Clear;
  AdvFacebook1.GetFriends;
  for I := 0 to AdvFacebook1.FriendList.Count - 1 do
    ListBox1.Items.AddObject(AdvFacebook1.FriendList.Items[I].FullName, AdvFacebook1.FriendList.Items[I]);

  Screen.Cursor := crDefault;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  FeedOffset := 0;
  Profile := AdvFacebook1.Profile;
  Feed := Profile.Feed;

  AdvFacebook1.GetFeed(Profile,10,FeedOffset);

  LoadFeed;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
var
  i: integer;
begin
  AdvFacebook1.GetPages;
  Listbox2.Items.Clear;
  for I := 0 to AdvFacebook1.PageList.Count - 1 do
    ListBox2.Items.AddObject(AdvFacebook1.PageList.Items[I].Summary, AdvFacebook1.PageList.Items[I]);
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var
  o: TFacebookPage;
begin
  if ListBox2.ItemIndex < 0 then
    Exit;

  FeedOffset := 0;

  o := ListBox2.Items.Objects[ListBox2.ItemIndex] as TFacebookPage;
  AdvFacebook1.GetFeed(o, 10, FeedOffset);

  Profile := AdvFacebook1.Profile;
  Feed := o.Feed;

  LoadFeed;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
var
  o: TFacebookGroup;
begin
  if ListBox4.ItemIndex < 0 then
    Exit;

  FeedOffset := 0;

  o := ListBox4.Items.Objects[ListBox4.ItemIndex] as TFacebookGroup;
  AdvFacebook1.GetFeed(o, 10, FeedOffset);

  Profile := AdvFacebook1.Profile;
  Feed := o.Feed;

  LoadFeed;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
var
  I: integer;
begin
  AdvFacebook1.GetGroups;
  Listbox4.Items.Clear;
  for I := 0 to AdvFacebook1.GroupList.Count - 1 do
    ListBox4.Items.AddObject(AdvFacebook1.GroupList.Items[I].Summary, AdvFacebook1.GroupList.Items[I]);
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  Profile := ListBox1.Items.Objects[ListBox1.ItemIndex] as TFacebookProfile;
  Profile := AdvFacebook1.FriendList.Find(Profile.ID);

  AdvFacebook1.GetProfileInfo(Profile.ID, Profile);
  ShowProfile(Profile);
end;

procedure TForm1.ListBox2Click(Sender: TObject);
var
  p: TFacebookPage;
begin
  p := ListBox2.Items.Objects[ListBox2.ItemIndex] as TFacebookPage;
  AdvFacebook1.GetLikes(p);
  lbPageLikes.Caption := IntToStr(p.Likes);
end;

procedure TForm1.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if InitLV then
    Exit;

  Screen.Cursor := crHourGlass;
  LoadComments;
  LoadLikes;
  Screen.Cursor := crDefault;
end;

procedure TForm1.LoadComments;
var
  cm: TFacebookComment;
  li: TListItem;
  i, j: integer;
  o: TFacebookFeedItem;
begin
  if ListView1.ItemIndex >= 0 then
  begin
    InitLV := true;
    lvComments.Items.Clear;
    i := ListView1.ItemIndex;
    o := ListView1.Items[i].Data;

    AdvFacebook1.GetComments(o);

    for j := 0 to o.Comments.Count - 1 do
    begin
      li := lvComments.Items.Add;
      cm := o.Comments[j];

      li.Caption := BoolToStr(cm.UserLikes, true);
      li.SubItems.Add(cm.Text);
      li.SubItems.Add(cm.User.FullName);
      li.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:nn',cm.CreatedTime));
      li.Data := cm;
    end;
    InitLV := false;
  end;
end;

procedure TForm1.LoadLikes;
var
  li: TListItem;
  i, j: integer;
  o: TFacebookFeedItem;
begin
  if ListView1.ItemIndex >= 0 then
  begin
    lvLikes.Items.Clear;
    i := ListView1.ItemIndex;
    o := ListView1.Items[i].Data;

    AdvFacebook1.GetLikes(o);

    for j := 0 to o.Likes.Count - 1 do
    begin
      li := lvLikes.Items.Add;
      li.Caption := o.Likes[j].FullName;
      li.Data := o.Likes[j];
    end;
  end;
end;

procedure TForm1.LoadFeed;
var
  I: integer;
  li: TListItem;
begin
  Screen.Cursor := crHourGlass;
  if FeedOffset = 0 then
    ListView1.Items.Clear;

  Profile := AdvFacebook1.Profile;

  InitLV := true;

  for I := FeedOffset to Feed.Count - 1 do
  begin
    li := ListView1.Items.Add;
    li.Caption := IntToStr(i + 1);
    li.Caption := BoolToStr(Feed[i].Likes.Find(Profile.ID) <> nil, true);
    li.SubItems.Add(Feed[i].User.FullName);
    if Feed[i].Text <> '' then
      li.SubItems.Add(Feed[i].Text)
    else
      li.SubItems.Add(Feed[i].Story);
    li.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:nn',Feed[i].CreatedTime));
    li.Data := Feed[i];
  end;
  InitLV := false;
  Screen.Cursor := crDefault;
end;

procedure TForm1.ToggleControls;
begin
  GroupBox1.Enabled := Connected;
  GroupBox3.Enabled := Connected;
  SpeedButton1.Enabled := Connected;
  SpeedButton2.Enabled := Connected;
  SpeedButton3.Enabled := Connected;
  SpeedButton4.Enabled := Connected;
  SpeedButton5.Enabled := Connected;
  SpeedButton6.Enabled := Connected;
  ListBox1.Enabled := Connected;
  ListBox2.Enabled := Connected;
  ListBox3.Enabled := Connected;
  ListBox4.Enabled := Connected;
  Button2.Enabled := Connected;
  Button3.Enabled := Connected;
  Edit1.Enabled := Connected;
  Edit2.Enabled := Connected;
  Edit3.Enabled := Connected;
  btRemove.Enabled := Connected;
  btUserLikes.Enabled := Connected;
  lvLikes.Enabled := Connected;
  PageControl1.Enabled := Connected;
  Button1.Enabled := not Connected;
end;


end.

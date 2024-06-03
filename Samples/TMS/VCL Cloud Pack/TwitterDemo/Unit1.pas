{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2012 - 2017                                        }
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
  Dialogs, CloudBase, CloudBaseWin, StdCtrls, CloudTwitter, CloudCustomTwitter, CloudURLShortener,
  ExtCtrls, CloudImage, Buttons, ComCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, Vcl.OleCtrls, SHDocVw;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    ListBox2: TListBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    AdvCloudImage1: TAdvCloudImage;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    OpenDialog1: TOpenDialog;
    AdvTwitter1: TAdvTwitter;
    Label4: TLabel;
    btRemove: TButton;
    Image1: TImage;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    cbIncludeImage: TCheckBox;
    TweetSizeLbl: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Label10: TLabel;
    edURL: TEdit;
    btURL: TButton;
    AdvCloudImage2: TAdvCloudImage;
    Label11: TLabel;
    Button5: TButton;
    Button7: TButton;
    SpeedButton3: TSpeedButton;
    Button4: TButton;
    Button3: TButton;
    ListView1: TListView;
    Memo2: TMemo;
    btSendDM: TButton;
    btGetDM: TButton;
    Label12: TLabel;
    lbDMSize: TLabel;
    Label14: TLabel;
    ListView2: TListView;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure AdvTwitter1ReceivedAccessToken(Sender: TObject);
    procedure FillFollowers;
    procedure FillFriends;
    procedure LoadTweets;
    procedure btSendDMClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToggleControls;
    procedure ProfileDetails(Profile: TTWitterProfile);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btURLClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure cbIncludeImageClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btGetDMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    procedure UpdateTweetLength;
    procedure UpdateDMLength;
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
//  TwitterAppkey = 'xxxxxxxxx';
//  TwitterAppSecret = 'yyyyyyyy';


{$I APPIDS.INC}

procedure TForm1.AdvTwitter1ReceivedAccessToken(Sender: TObject);
begin
  AdvTwitter1.SaveTokens;
  AdvTwitter1.GetAccountInfo;
  UpdateTweetLength;
  Connected := true;
  ToggleControls;
end;

procedure TForm1.FillFollowers;
var
  i: integer;
begin
  Screen.Cursor := crHourGlass;
  AdvTwitter1.GetFollowers;
  AdvTwitter1.GetProfileListInfo(AdvTwitter1.Followers);

  ListBox1.Items.Clear;
  for i := 0 to AdvTwitter1.Followers.Count - 1 do
  begin
    listbox1.Items.AddObject(AdvTwitter1.Followers[i].Name, AdvTwitter1.Followers[i]);
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.FillFriends;
var
  i: integer;
begin
  Screen.Cursor := crHourGlass;
  AdvTwitter1.GetFriends;
  AdvTwitter1.GetProfileListInfo(AdvTwitter1.Friends);

  ListBox2.Items.Clear;
  for i := 0 to AdvTwitter1.Friends.Count - 1 do
  begin
    listbox2.Items.AddObject(AdvTwitter1.Friends[i].Name, AdvTwitter1.Friends[i]);
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Connected := false;
  ToggleControls;
  Button5.Enabled := false;
  Button2.Enabled := false;
  UpdateDMLength;

  ReportMemoryLeaksOnShutdown := true;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
  ListBox2.ItemIndex := -1;
  ProfileDetails(ListBox1.Items.Objects[ListBox1.ItemIndex] as TTWitterProfile);
end;

procedure TForm1.ListBox2Click(Sender: TObject);
begin
  ListBox1.ItemIndex := -1;
  ProfileDetails(ListBox2.Items.Objects[ListBox2.ItemIndex] as TTWitterProfile);
end;

procedure TForm1.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  TwitterStatus: TTWitterStatus;
begin
  if ListView1.ItemIndex >= 0 then
  begin
    Button5.Enabled := true;
    Button2.Enabled := true;
    TwitterStatus := ListView1.Items[ListView1.ItemIndex].Data;
    AdvCloudImage2.URL := TwitterStatus.MediaURL;
  end;
end;

procedure TForm1.LoadTweets;
var
  i: integer;
  li: TListItem;
  TwitterStatus: TTWitterStatus;

begin
  Screen.Cursor := crHourGlass;

  if ListView1.Items.Count = 0 then
  begin
    AdvTwitter1.Statuses.Clear;
    if ListBox2.ItemIndex >= 0 then
      AdvTwitter1.GetStatuses(10, -1, -1, -1, AdvTwitter1.Friends[ListBox2.ItemIndex].ScreenName)
    else
      AdvTwitter1.GetStatuses();
  end
  else
  begin
    TWitterStatus := ListView1.Items[ListView1.Items.Count - 1].Data;
    if ListBox2.ItemIndex >= 0 then
      AdvTwitter1.GetStatuses(10, -1, Twitterstatus.ID, -1, AdvTwitter1.Friends[ListBox2.ItemIndex].ScreenName)
    else
      AdvTwitter1.GetStatuses(10, -1, TwitterStatus.ID);
  end;

  for i := ListView1.Items.Count to AdvTwitter1.Statuses.Count - 1 do
  begin
    li := ListView1.Items.Add;
    li.Caption := AdvTwitter1.Statuses[i].User.Name;

    if AdvTwitter1.Statuses[i].InReplyToStatusID > 0 then
      li.Caption := li.Caption + ' -> ' + IntToStr(AdvTwitter1.Statuses[i].InReplyToStatusID);

    li.SubItems.Add(AdvTwitter1.Statuses[i].Text);
    li.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:nn',AdvTwitter1.Statuses[i].CreatedAt));
    li.SubItems.Add(inttostr(AdvTwitter1.Statuses[i].Retweets));
    li.SubItems.Add(inttostr(AdvTwitter1.Statuses[i].Favorites));
    li.Data := AdvTwitter1.Statuses[i];
  end;

  Button5.Enabled := false;
  Button2.Enabled := false;
  Screen.Cursor := crDefault;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  UpdateTweetLength;
end;

procedure TForm1.ProfileDetails(Profile: TTWitterProfile);
begin
  AdvCloudImage1.URL := Profile.ImageURL;
  Label1.Caption := IntToStr(Profile.FriendsCount);
  Label3.Caption := IntToStr(Profile.FollowersCount);
  Label4.Caption := Profile.Description;
  Label5.Caption := Profile.Location;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  FillFollowers;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  FillFriends;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  ListView1.Items.Clear;
  LoadTweets;
  Button7.Enabled := true;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  acc: boolean;
begin
  AdvTwitter1.App.Key := TwitterAppkey;
  AdvTwitter1.App.Secret := TwitterAppSecret;

  if AdvTwitter1.App.Key <> '' then
  begin
    AdvTwitter1.PersistTokens.Location := plIniFile;
    AdvTwitter1.PersistTokens.Key := '.\twitter.ini';
    AdvTwitter1.PersistTokens.Section := 'tokens';
    AdvTwitter1.LoadTokens;

    acc := AdvTwitter1.TestTokens;

    if not acc then
      acc := AdvTwitter1.RefreshAccess;

    if not acc then
    begin
      AdvTwitter1.DoAuth;
      AdvTwitter1.GetAccountInfo;
    end
    else
    begin
      connected := true;
      ToggleControls;
    end;

    UpdateTweetLength;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Status: TTWitterStatus;
begin
  if ListView1.ItemIndex >= 0 then
  begin
    Status := ListView1.Items[ListView1.ItemIndex].Data;
    AdvTwitter1.DeleteTweet(Status.ID);
  end
  else
  begin
    ShowMessage('Select an item from the list of Tweets first.');
  end;
end;

procedure TForm1.btSendDMClick(Sender: TObject);
var
  mediaid: string;
begin
  if (ListBox1.ItemIndex >= 0) or (ListBox2.ItemIndex >= 0) then
  begin
    if ListBox1.ItemIndex >= 0 then
    begin
      //AdvTwitter1.DirectMessage(Memo2.Text, IntToStr((ListBox1.Items.Objects[ListBox1.ItemIndex] as TTWitterProfile).ID));
      if OpenDialog1.Execute then
      begin
        mediaid := AdvTwitter1.UploadMedia(opendialog1.FileName);
        if mediaid <> '' then
          AdvTwitter1.DirectMessageWithMedia(Memo2.Lines.Text, (ListBox1.Items.Objects[ListBox1.ItemIndex] as TTWitterProfile).ID, mediaid);
      end;
    end
    else if ListBox2.ItemIndex >= 0 then
      AdvTwitter1.DirectMessage(Memo2.Lines.Text,  (ListBox2.Items.Objects[ListBox2.ItemIndex] as TTWitterProfile).ID);
  end
  else
    ShowMessage('Select an item from the "Followers" or "Following" list first.');
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  s:string;
begin
  s := Memo1.Lines.Text;
  AdvTwitter1.Tweet(s);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  mediaid: string;
  mediaids: TStringList;
begin
  if OpenDialog1.Execute then
  begin
    mediaid := AdvTwitter1.UploadMedia(opendialog1.FileName);

    if mediaid <> '' then
    begin
      mediaids := TStringList.Create;
      mediaids.Add(mediaid);
//      mediaids.Add(mediaid);
//      mediaids.Add(mediaid);
//      mediaids.Add(mediaid);
      AdvTwitter1.TweetWithMedia(Memo1.Lines.Text, mediaids);
      mediaids.Free;
    end;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  Status: TTWitterStatus;
begin
  if ListView1.ItemIndex >= 0 then
  begin
    Status := ListView1.Items[ListView1.ItemIndex].Data;
    AdvTwitter1.ReTweet(Status.ID);
  end
  else
  begin
    ShowMessage('Select an item from the list of Tweets first.');
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  LoadTweets;
end;

procedure TForm1.cbIncludeImageClick(Sender: TObject);
begin
  UpdateTweetLength;
end;

procedure TForm1.btGetDMClick(Sender: TObject);
var
  I: Integer;
  dm: TTWitterDirectMessage;
  li: TListItem;
begin
  if AdvTwitter1.HasNextDirectMessages then
  begin
    if AdvTwitter1.GetNextDirectMessages then
    begin
      ListView2.Clear;
      for I := 0 to AdvTwitter1.DirectMessages.Count - 1 do
      begin
        dm := AdvTwitter1.DirectMessages[I].DirectMessage;

        if dm.Sender.ID <> AdvTwitter1.Profile.ID then
          AdvTwitter1.GetProfileInfo(dm.Sender.ID, dm.Sender)
        else
          dm.Sender.ScreenName := AdvTwitter1.Profile.ScreenName;

        li := ListView2.Items.Add;
        li.Caption := dm.Sender.ScreenName;
        li.SubItems.Add(dm.Text);
        li.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:nn', dm.CreatedAt));
        li.Data := dm;
      end;
    end;
  end
  else
  begin
    if AdvTwitter1.GetDirectMessages then
    begin
      ListView2.Clear;
      for I := 0 to AdvTwitter1.DirectMessages.Count - 1 do
      begin
        dm := AdvTwitter1.DirectMessages[I].DirectMessage;

        if dm.Sender.ID <> AdvTwitter1.Profile.ID then
          AdvTwitter1.GetProfileInfo(dm.Sender.ID, dm.Sender)
        else
          dm.Sender.ScreenName := AdvTwitter1.Profile.ScreenName;

        li := ListView2.Items.Add;
        li.Caption := dm.Sender.ScreenName;
        li.SubItems.Add(dm.Text);
        li.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:nn', dm.CreatedAt));
        li.Data := dm;
      end;
    end;
  end;
end;

procedure TForm1.btRemoveClick(Sender: TObject);
begin
  AdvTwitter1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TForm1.btURLClick(Sender: TObject);
begin
  Memo1.Lines.Add(edURL.Text);
end;

procedure TForm1.ToggleControls;
begin
  GroupBox1.Enabled := Connected;
  SpeedButton1.Enabled := Connected;
  SpeedButton2.Enabled := Connected;
  SpeedButton3.Enabled := Connected;
  Button3.Enabled := Connected;
  Button4.Enabled := Connected;
  Button7.Enabled := Connected;
  Memo1.Enabled := Connected;
  Memo2.Enabled := Connected;
  edURL.Enabled := Connected;
  btURL.Enabled := Connected;
  btRemove.Enabled := Connected;
  btGetDM.Enabled := Connected;
  btSendDM.Enabled := Connected; 
  
  Button1.Enabled := not Connected;
end;

procedure TForm1.UpdateDMLength;
begin
  lbDMSize.Caption := IntToStr(Length(Memo2.Lines.Text)) + ' of 10.000';
end;

procedure TForm1.UpdateTweetLength;
var
  TweetLength: integer;
begin
  TweetLength := AdvTwitter1.GetTweetLength(Memo1.Lines.Text, cbIncludeImage.Checked);
  TweetSizeLbl.Caption := 'Characters: ' + IntToStr(TweetLength) + ' of 280.';

  if TweetLength > 280 then
  begin
    TweetSizeLbl.Font.Style := [fsBold];
    TweetSizeLbl.Font.Color := clRed;
  end
  else
  begin
    TweetSizeLbl.Font.Style := [];
    TweetSizeLbl.Font.Color := clBlack;
  end;
end;

end.

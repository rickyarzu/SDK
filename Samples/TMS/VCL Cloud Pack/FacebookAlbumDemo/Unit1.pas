{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2012 - 2018                                        }
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
  Dialogs, CloudBase, StdCtrls, CloudFacebook,
  CloudImage, Buttons, ComCtrls, ExtCtrls, CloudBaseWin, CloudCustomFacebook;

type

  TForm1 = class(TForm)
    AdvFacebook1: TAdvFacebook;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Button1: TButton;
    GroupBox3: TGroupBox;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    AdvCloudImage1: TAdvCloudImage;
    ListView1: TListView;
    ListView2: TListView;
    btAdd: TButton;
    edAdd: TEdit;
    Image1: TImage;
    btRemove: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ToggleControls;
    procedure LoadAlbums;
    procedure LoadPictures;
    procedure Init;
    procedure AdvFacebook1ReceivedAccessToken(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListView2Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btAddClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure AdvCloudImage1DownLoadComplete(Sender: TObject);
    procedure AdvCloudImage1DownLoadCancel(Sender: TObject;
      var Cancel: Boolean);
    procedure AdvCloudImage1DownLoadError(Sender: TObject; err: string);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    LVInit: boolean;
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
//  FacebookAppkey = 'xxxxxxxxx';
//  FacebookAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm1.btAddClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
     AdvFacebook1.PostImage(edAdd.Text, OpenDialog1.FileName, ListView2.Items[ListView2.ItemIndex].Data);
     LoadPictures;
  end;
end;

procedure TForm1.btRemoveClick(Sender: TObject);
begin
  AdvFacebook1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  acc: boolean;
begin
  AdvFacebook1.App.Key := FacebookAppkey;
  AdvFacebook1.App.Secret := FacebookAppSecret;

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
      AdvFacebook1.DoAuth;
    end
    else
      Init;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm1.AdvCloudImage1DownLoadCancel(Sender: TObject;
  var Cancel: Boolean);
begin
  Screen.Cursor := crDefault;
end;

procedure TForm1.AdvCloudImage1DownLoadComplete(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure TForm1.AdvCloudImage1DownLoadError(Sender: TObject; err: string);
begin
  Screen.Cursor := crDefault;
end;

procedure TForm1.AdvFacebook1ReceivedAccessToken(Sender: TObject);
begin
  AdvFacebook1.SaveTokens;
  Init;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  LVInit := false;
  Connected := false;
  ToggleControls;
end;

procedure TForm1.Init;
begin
  Connected := true;
  ToggleControls;
  AdvFacebook1.GetUserInfo;
  LoadAlbums;
end;

procedure TForm1.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  Picture: TFacebookPicture;
begin
  if LVInit then
   exit;

  if ListView1.ItemIndex >= 0 then
  begin
    Screen.Cursor := crHourGlass;
    Picture := ListView1.Items[ListView1.ItemIndex].Data;
    AdvCloudImage1.URL := Picture.ImageURL;
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm1.ListView2Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if LVInit then
    exit;

  LoadPictures;
end;

procedure TForm1.LoadAlbums;
var
  I: integer;
  Profile: TFacebookProfile;
  li: TListItem;
begin
  Screen.Cursor := crHourGlass;
  LVInit := true;

  Profile := AdvFacebook1.Profile;

  AdvFacebook1.GetAlbums(Profile);
  ListView2.Clear;

  for I := 0 to Profile.Albums.Count - 1 do
  begin
    li := ListView2.Items.Add;
    li.Caption := Profile.Albums[I].Title;
    li.SubItems.Add(DateToStr(Profile.Albums[I].UpdatedTime));
    li.Data := Profile.Albums[I];
  end;
  LVInit := false;
  Screen.Cursor := crDefault;
end;

procedure TForm1.LoadPictures;
var
  AlbumItem: TFacebookAlbum;
  li: TListItem;
  I: Integer;
begin
  if ListView2.ItemIndex >= 0 then
  begin
    Screen.Cursor := crHourGlass;
    LVInit := true;
    edAdd.Enabled := true;
    btAdd.Enabled := true;

    AlbumItem := ListView2.Items[ListView2.ItemIndex].Data;

    AdvCloudImage1.URL := AdvFacebook1.GetImageURL(AlbumItem.CoverPhotoID);

    ListView1.Clear;
    AdvFacebook1.GetPictures(AlbumItem);

    for I := 0 to AlbumItem.Pictures.Count - 1 do
    begin
      li := ListView1.Items.Add;
      li.Caption := AlbumItem.Pictures[I].Caption;
      if li.Caption = '' then
        li.Caption := 'No Description';
      li.SubItems.Add(DateToStr(AlbumItem.Pictures[I].CreatedTime));
      li.Data := AlbumItem.Pictures[I];
    end;
    LVInit := false;
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  LoadAlbums;
end;

procedure TForm1.ToggleControls;
begin
  GroupBox3.Enabled := Connected;
  SpeedButton2.Enabled := Connected;
  ListView2.Enabled := Connected;
  ListView1.Enabled := Connected;
  btRemove.Enabled := Connected;
  Button1.Enabled := not Connected;
end;


end.

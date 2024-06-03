{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2013 - 2015                                        }
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

unit UPicasaDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, CloudBase,
  CloudPicasa, CloudCustomPicasa, ComCtrls, CloudImage, ExtCtrls, Buttons,
  CloudBaseWin, CloudCustomGoogle, CloudGoogleWin;

type
  TForm5 = class(TForm)
    AdvPicasa1: TAdvPicasa;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    btConnect: TButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    edPhotoDescription: TEdit;
    btUpload: TButton;
    lvPhotos: TListView;
    btDeletePhoto: TSpeedButton;
    btUpdatePhoto: TButton;
    edPhotoTags: TEdit;
    Label4: TLabel;
    lbPhotoCount: TLabel;
    btPrev: TButton;
    btNext: TButton;
    SaveDialog1: TSaveDialog;
    btDownload: TButton;
    edLatitude: TEdit;
    edLongitude: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Image1: TImage;
    edSearch: TEdit;
    btSearch: TButton;
    GroupBox2: TGroupBox;
    lvAlbums: TListView;
    edAlbumDescription: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    btAlbums: TButton;
    btDownloadAlbum: TButton;
    btUploadFolder: TButton;
    edAlbumTitle: TEdit;
    GroupBox1: TGroupBox;
    AdvCloudImage1: TAdvCloudImage;
    btRemove: TButton;
    lvComments: TListView;
    AdvCloudImage2: TAdvCloudImage;
    btComments: TButton;
    Label5: TLabel;
    lbAuthor: TLabel;
    btDeleteAlbum: TSpeedButton;
    procedure btConnectClick(Sender: TObject);
    procedure AdvPicasa1ReceivedAccessToken(Sender: TObject);
    procedure btAlbumsClick(Sender: TObject);
    procedure btUploadClick(Sender: TObject);
    procedure btDeleteAlbumClick(Sender: TObject);
    procedure btDeletePhotoClick(Sender: TObject);
    procedure btUpdatePhotoClick(Sender: TObject);
    procedure btSearchClick(Sender: TObject);
    procedure lvPhotosChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure lvAlbumsChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btNextClick(Sender: TObject);
    procedure btPrevClick(Sender: TObject);
    procedure btDownloadClick(Sender: TObject);
    procedure btCommentsClick(Sender: TObject);
    procedure btDownloadAlbumClick(Sender: TObject);
    procedure btUploadFolderClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    connected: boolean;
    PageIndex: integer;
    procedure ToggleControls;
    procedure GetAlbums;
    procedure GetPhotos;
    procedure FillPhotos(Photos: TPicasaPhotos);
    procedure FillComments(Photo: TPicasaPhoto);
    procedure DoSearch;
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses
  FileCtrl;

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  GAppkey = 'xxxxxxxxx';
//  GAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm5.AdvPicasa1ReceivedAccessToken(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  AdvPicasa1.SaveTokens;
  Connected := true;
  ToggleControls;
  Screen.Cursor := crDefault;
end;


procedure TForm5.btAlbumsClick(Sender: TObject);
begin
  GetAlbums;
end;

procedure TForm5.btCommentsClick(Sender: TObject);
begin
  if lvPhotos.ItemIndex >= 0 then
  begin
    AdvPicasa1.GetComments(TPicasaPhoto(lvPhotos.Selected.Data));
    FillComments(TPicasaPhoto(lvPhotos.Selected.Data));
  end;
end;

procedure TForm5.btConnectClick(Sender: TObject);
var
  acc: boolean;
begin
  Screen.Cursor := crHourGlass;
  AdvPicasa1.App.Key := GAppkey;
  AdvPicasa1.App.Secret := GAppSecret;

  if AdvPicasa1.App.Key <> '' then
  begin
    AdvPicasa1.PersistTokens.Location := plIniFile;
    AdvPicasa1.PersistTokens.Key := '.\picasa.ini';
    AdvPicasa1.PersistTokens.Section := 'tokens';
    AdvPicasa1.LoadTokens;

    acc := AdvPicasa1.TestTokens;

    if not acc then
    begin
      AdvPicasa1.RefreshAccess;
      AdvPicasa1.DoAuth;
    end
    else
    begin
      connected := true;
      ToggleControls;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');

  Screen.Cursor := crDefault;
end;

procedure TForm5.btUpdatePhotoClick(Sender: TObject);
var
  Photo: TPicasaPhoto;
begin
  if Assigned(lvAlbums.Selected) and Assigned(lvPhotos.Selected) then
  begin
    Screen.Cursor := crHourGlass;
    Photo := AdvPicasa1.Albums[lvAlbums.ItemIndex].Photos[lvPhotos.ItemIndex];
    Photo.Summary := edPhotoDescription.Text;
    Photo.Tags.CommaText := edPhotoTags.Text;
    Photo.Latitude := StrToFloat(edLatitude.Text);
    Photo.Longitude := StrToFloat(edLongitude.Text);
    AdvPicasa1.UpdatePhoto(Photo);
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm5.btUploadClick(Sender: TObject);
begin
  if (OpenDialog1.Execute) and Assigned(lvAlbums.Selected) then
  begin
    Screen.Cursor := crHourGlass;

    AdvPicasa1.UploadPhoto(AdvPicasa1.Albums[lvAlbums.ItemIndex],
      OpenDialog1.FileName, edPhotoDescription.Text, edPhotoTags.Text,
      StrToFloat(StringReplace(edLatitude.Text, '.', FormatSettings.DecimalSeparator, [rfIgnoreCase])),
      StrToFloat(StringReplace(edLongitude.Text, '.', FormatSettings.DecimalSeparator, [rfIgnoreCase])));

    Screen.Cursor := crDefault;
  end;
end;

procedure TForm5.btUploadFolderClick(Sender: TObject);
begin
  if edAlbumTitle.Text = '' then
  begin
    ShowMessage('No title set for album');
    Exit;
  end;

  if (OpenDialog1.Execute) then
  begin
    Screen.Cursor := crHourGlass;
    AdvPicasa1.AddFolderToAlbum(OpenDialog1.FileName, edAlbumTitle.Text, edAlbumDescription.Text);
    AdvPicasa1.GetAlbums;
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm5.FillComments(Photo: TPicasaPhoto);
var
  I: integer;
  li: TListItem;
begin
  lvComments.Clear;
  if Photo.Comments.Count > 0 then
  begin
    for I := 0 to Photo.Comments.Count - 1 do
    begin
      li := lvComments.Items.Add;
      li.Data := Photo.Comments[i];
      li.Caption := Photo.Comments[i].Author.FullName;
      li.SubItems.Add(Photo.Comments[i].Text);
    end;
  end
  else
    ShowMessage('There are no comments for this photo.');
end;

procedure TForm5.FillPhotos(Photos: TPicasaPhotos);
var
  I: integer;
  li: TListItem;
begin
  if Photos.Count > 0 then
  begin
    lbPhotoCount.Caption := 'Results: '
      + IntToStr((PageIndex * 10) + 1)
      + ' to ' + IntToStr((PageIndex * 10) + Photos.Count);
  end
  else
    lbPhotoCount.Caption := 'Results: 0';

  lvPhotos.Items.Clear;
  AdvCloudImage1.URL := '';
  AdvCloudImage2.URL := '';
  lbAuthor.Caption := '';

  for I := 0 to Photos.Count - 1 do
  begin
    li := lvPhotos.Items.Add;
    li.Data := Photos[i];
    li.Caption := Photos[i].FileName;
    li.SubItems.Add(Photos[i].Summary);
  end;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
  AdvPicasa1.Logging := true;
  AdvPicasa1.LogLevel := llDetail;

  ReportMemoryLeaksOnShutdown := true;
  ToggleControls;
  AdvPicasa1.Albums.Clear;
  btPrev.Enabled := false;
  btNext.Enabled := false;
end;

procedure TForm5.GetAlbums;
var
  I: Integer;
  li: TListItem;
begin
  Screen.Cursor := crHourGlass;
  AdvPicasa1.Albums.Clear;
  AdvPicasa1.GetAlbums;

  lvAlbums.Items.Clear;
  for I := 0 to AdvPicasa1.Albums.Count - 1 do
  begin
    li := lvAlbums.Items.Add;
    li.Data := AdvPicasa1.Albums[i];
    li.Caption := AdvPicasa1.Albums[i].Title;
    li.SubItems.Add(AdvPicasa1.Albums[i].Summary);
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm5.GetPhotos;
begin
  if lvAlbums.ItemIndex >= 0 then
  begin
    Screen.Cursor := crHourGlass;

    AdvPicasa1.Albums[lvAlbums.ItemIndex].Photos.Clear;
    AdvPicasa1.Albums[lvAlbums.ItemIndex].GetPhotos;
    FillPhotos(AdvPicasa1.Albums[lvAlbums.ItemIndex].Photos);

    Screen.Cursor := crDefault;
  end;
end;

procedure TForm5.lvAlbumsChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if Assigned(lvAlbums.Selected) then
  begin
    edAlbumTitle.Text := AdvPicasa1.Albums[lvAlbums.ItemIndex].Title;
    edAlbumDescription.Text := AdvPicasa1.Albums[lvAlbums.ItemIndex].Summary;
    AdvCloudImage2.URL := '';
    edPhotoDescription.Text := '';
    edPhotoTags.Text := '';
    GetPhotos;
    AdvCloudImage1.URL := AdvPicasa1.Albums[lvAlbums.ItemIndex].ImageURL;
  end;
end;

procedure TForm5.lvPhotosChange(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  pic: TPicasaPhoto;
begin
  if lvPhotos.ItemIndex >= 0 then
  begin
    Screen.Cursor := crHourGlass;
    pic := TPicasaPhoto(lvPhotos.Selected.Data);
    edPhotoDescription.Text := pic.Summary;
    edPhotoTags.Text := pic.Tags.CommaText;
    edLatitude.Text := FloatToStr(pic.Latitude);
    edLongitude.Text := FloatToStr(pic.Longitude);
    AdvCloudImage1.URL := '';
    AdvCloudImage2.URL := '';
    AdvCloudImage1.URL := pic.ImageURL;
    AdvCloudImage2.URL := pic.ThumbnailURL;
    lbAuthor.Caption := 'Author: ' + pic.Author.NickName;
    lvComments.Clear;
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm5.btDeleteAlbumClick(Sender: TObject);
var
  buttonSelected: integer;
begin
  if Assigned(lvAlbums.Selected) then
  begin
    buttonSelected := MessageDlg('Are you sure you want to delete the selected album?', mtConfirmation, mbOKCancel, 0);

    if buttonSelected = mrOk then
    begin
      Screen.Cursor := crHourGlass;

      lvPhotos.Clear;
      AdvCloudImage1.URL := '';
      AdvCloudImage2.URL := '';
      AdvPicasa1.DeleteAlbum(AdvPicasa1.Albums[lvAlbums.ItemIndex]);
      GetAlbums;

      Screen.Cursor := crDefault;
    end;
  end
  else
  begin
    ShowMessage('No album selected.');
  end;
end;

procedure TForm5.btDeletePhotoClick(Sender: TObject);
var
  buttonSelected: integer;
begin
  if Assigned(lvAlbums.Selected) and Assigned(lvPhotos.Selected) then
  begin
    buttonSelected := MessageDlg('Are you sure you want to delete the selected photo?', mtConfirmation, mbOKCancel, 0);

    if buttonSelected = mrOk then
    begin
      Screen.Cursor := crHourGlass;

      AdvCloudImage1.URL := '';
      AdvCloudImage2.URL := '';
      AdvPicasa1.DeletePhoto(AdvPicasa1.Albums[lvAlbums.ItemIndex].Photos[lvPhotos.ItemIndex]);
      GetPhotos;

      Screen.Cursor := crDefault;
    end;
  end
  else
  begin
    ShowMessage('No photo selected.');
  end;
end;

procedure TForm5.btDownloadAlbumClick(Sender: TObject);
var
  chosenDirectory: string;
begin
  if Assigned(lvAlbums.Selected) then
  begin
    if SelectDirectory('Select a directory', 'C:\', chosenDirectory) then
    begin
      Screen.Cursor := crHourGlass;
      AdvPicasa1.DownloadToFolder(chosenDirectory, TPicasaAlbum(lvAlbums.Selected.Data));
      Screen.Cursor := crDefault;
    end;
  end
  else
    ShowMessage('No album selected.');
end;

procedure TForm5.btDownloadClick(Sender: TObject);
var
  ph: TPicasaPhoto;
begin
  if Assigned(lvPhotos.Selected) then
  begin
    ph := TPicasaPhoto(lvPhotos.Selected.Data);
    SaveDialog1.FileName := ph.FileName;
    if (SaveDialog1.Execute) then
    begin
      Screen.Cursor := crHourGlass;
      AdvPicasa1.DownloadPhoto(SaveDialog1.FileName, ph);
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TForm5.btNextClick(Sender: TObject);
begin
  PageIndex := PageIndex + 1;
  btPrev.Enabled := true;
  DoSearch;
end;

procedure TForm5.btPrevClick(Sender: TObject);
begin
  if PageIndex > 0 then
  begin
    PageIndex := PageIndex - 1;
    if PageIndex = 0 then
      btPrev.Enabled := false;
    DoSearch;
  end
end;

procedure TForm5.btRemoveClick(Sender: TObject);
begin
  AdvPicasa1.ClearTokens;
  Connected := false;
  ToggleControls;
end;

procedure TForm5.btSearchClick(Sender: TObject);
begin
  if edSearch.Text <> '' then
  begin
    PageIndex := 0;
    btPrev.Enabled := false;
    DoSearch;
  end;
end;

procedure TForm5.DoSearch;
var
  EnableNextButton: boolean;

begin
  Screen.Cursor := crHourGlass;
  AdvPicasa1.SearchPhotos(edSearch.Text, EnableNextButton, PageIndex);
  FillPhotos(AdvPicasa1.SearchResults);
  //btNext.Enabled := EnableNextButton;
  Screen.Cursor := crDefault;
end;


procedure TForm5.ToggleControls;
begin
  btConnect.Enabled := not connected;
  btRemove.Enabled := connected;
  btUpload.Enabled := connected;
  btDeletePhoto.Enabled := connected;
  btUpdatePhoto.Enabled := connected;
  btDownload.Enabled := connected;
  btSearch.Enabled := connected;
  btAlbums.Enabled := connected;
  btDeleteAlbum.Enabled := connected;
  btDownloadAlbum.Enabled := connected;
  btUploadFolder.Enabled := connected;
  btComments.Enabled := connected;
  edPhotoDescription.Enabled := connected;
  edPhotoTags.Enabled := connected;
  edLatitude.Enabled := connected;
  edLongitude.Enabled := connected;
  edSearch.Enabled := connected;
  edAlbumDescription.Enabled := connected;
  edAlbumTitle.Enabled := connected;
  lvPhotos.Enabled := connected;
  lvAlbums.Enabled := connected;
  lvComments.Enabled := connected;
end;

end.

{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2019                                               }
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

unit UGooglePhotosDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, CloudBase,
  ComCtrls, CloudImage, ExtCtrls, Buttons,
  CloudBaseWin, CloudCustomGoogle, CloudGoogleWin, CloudCustomGooglePhotos,
  CloudGooglePhotos;

type
  TForm5 = class(TForm)
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    btConnect: TButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    edPhotoDescription: TEdit;
    btUpload: TButton;
    lvPhotos: TListView;
    SaveDialog1: TSaveDialog;
    btDownload: TButton;
    GroupBox2: TGroupBox;
    lvAlbums: TListView;
    Label2: TLabel;
    btAlbums: TButton;
    btDownloadAlbum: TButton;
    btUploadFolder: TButton;
    edAlbumTitle: TEdit;
    btRemove: TButton;
    AdvCloudImage2: TAdvCloudImage;
    Label5: TLabel;
    AdvGooglePhotos1: TAdvGooglePhotos;
    btCreateAlbum: TButton;
    AdvCloudImage1: TAdvCloudImage;
    Label3: TLabel;
    procedure btConnectClick(Sender: TObject);
    procedure btAlbumsClick(Sender: TObject);
    procedure btUploadClick(Sender: TObject);
    procedure btDownloadClick(Sender: TObject);
    procedure btDownloadAlbumClick(Sender: TObject);
    procedure btUploadFolderClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGooglePhotos1Connected(Sender: TObject);
    procedure btCreateAlbumClick(Sender: TObject);
    procedure lvAlbumsClick(Sender: TObject);
    procedure lvPhotosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    connected: boolean;
    PageIndex: integer;
    procedure ToggleControls;
    procedure GetAlbums;
    procedure GetPhotos;
    procedure FillPhotos(Photos: TGooglePhotosPhotos);
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

procedure TForm5.AdvGooglePhotos1Connected(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  AdvGooglePhotos1.SaveTokens;
  Connected := true;
  ToggleControls;
  Screen.Cursor := crDefault;
end;

procedure TForm5.btAlbumsClick(Sender: TObject);
begin
  GetAlbums;
end;

procedure TForm5.btConnectClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  AdvGooglePhotos1.App.Key := GAppkey;
  AdvGooglePhotos1.App.Secret := GAppSecret;

  AdvGooglePhotos1.PersistTokens.Location := plIniFile;
  AdvGooglePhotos1.PersistTokens.Key := '.\googlephotos.ini';
  AdvGooglePhotos1.PersistTokens.Section := 'tokens';
  AdvGooglePhotos1.LoadTokens;
  AdvGooglePhotos1.Connect;
  Screen.Cursor := crDefault;
end;

procedure TForm5.btUploadClick(Sender: TObject);
begin
  if (OpenDialog1.Execute) and Assigned(lvAlbums.Selected) then
  begin
    Screen.Cursor := crHourGlass;

    AdvGooglePhotos1.UploadPhoto(AdvGooglePhotos1.Albums[lvAlbums.ItemIndex],
      OpenDialog1.FileName, edPhotoDescription.Text);

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
    AdvGooglePhotos1.AddFolderToAlbum(OpenDialog1.FileName, edAlbumTitle.Text);
    AdvGooglePhotos1.GetAlbums;
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm5.btCreateAlbumClick(Sender: TObject);
var
  a: TGooglePhotosAlbum;
begin
  a := AdvGooglePhotos1.Albums.Add;
  a.Title := edAlbumTitle.Text;
  AdvGooglePhotos1.CreateAlbum(a);
end;

procedure TForm5.FillPhotos(Photos: TGooglePhotosPhotos);
var
  I: integer;
  li: TListItem;
begin
  lvPhotos.Items.Clear;
  AdvCloudImage1.URL := '';
  AdvCloudImage2.URL := '';

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
  ReportMemoryLeaksOnShutdown := true;
  ToggleControls;
end;

procedure TForm5.GetAlbums;
var
  I: Integer;
  li: TListItem;
begin
  Screen.Cursor := crHourGlass;
  AdvGooglePhotos1.GetAlbums;

  lvAlbums.Items.Clear;
  for I := 0 to AdvGooglePhotos1.Albums.Count - 1 do
  begin
    li := lvAlbums.Items.Add;
    li.Data := AdvGooglePhotos1.Albums[i];
    li.Caption := AdvGooglePhotos1.Albums[i].Title;
  end;
  Screen.Cursor := crDefault;
end;

procedure TForm5.GetPhotos;
begin
  if lvAlbums.ItemIndex >= 0 then
  begin
    Screen.Cursor := crHourGlass;

    AdvGooglePhotos1.Albums[lvAlbums.ItemIndex].GetPhotos;
    FillPhotos(AdvGooglePhotos1.Albums[lvAlbums.ItemIndex].Photos);

    Screen.Cursor := crDefault;
  end;
end;

procedure TForm5.lvAlbumsClick(Sender: TObject);
var
  a: TGooglePhotosAlbum;
begin
  if Assigned(lvAlbums.Selected) then
  begin
    a := TGooglePhotosAlbum(lvAlbums.Selected.Data);
    edAlbumTitle.Text := a.Title;
    AdvCloudImage2.URL := '';
    edPhotoDescription.Text := '';
    GetPhotos;
    AdvCloudImage1.URL := a.ImageURL;
  end;
end;

procedure TForm5.lvPhotosClick(Sender: TObject);
var
  pic: TGooglePhotosPhoto;
begin
  if lvPhotos.ItemIndex >= 0 then
  begin
    Screen.Cursor := crHourGlass;
    pic := TGooglePhotosPhoto(lvPhotos.Selected.Data);
    edPhotoDescription.Text := pic.Summary;
    AdvCloudImage2.URL := pic.ImageURL;
    Screen.Cursor := crDefault;
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
      AdvGooglePhotos1.DownloadToFolder(chosenDirectory, TGooglePhotosAlbum(lvAlbums.Selected.Data));
      Screen.Cursor := crDefault;
    end;
  end
  else
    ShowMessage('No album selected.');
end;

procedure TForm5.btDownloadClick(Sender: TObject);
var
  ph: TGooglePhotosPhoto;
begin
  if Assigned(lvPhotos.Selected) then
  begin
    ph := TGooglePhotosPhoto(lvPhotos.Selected.Data);
    SaveDialog1.FileName := ph.FileName;
    if (SaveDialog1.Execute) then
    begin
      Screen.Cursor := crHourGlass;
      AdvGooglePhotos1.DownloadPhoto(SaveDialog1.FileName, ph);
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TForm5.ToggleControls;
begin
  btConnect.Enabled := not connected;
  btRemove.Enabled := connected;
  btUpload.Enabled := connected;
  btDownload.Enabled := connected;
  btCreateAlbum.Enabled := connected;
  btAlbums.Enabled := connected;
  btDownloadAlbum.Enabled := connected;
  btUploadFolder.Enabled := connected;
  edPhotoDescription.Enabled := connected;
  edAlbumTitle.Enabled := connected;
  lvPhotos.Enabled := connected;
  lvAlbums.Enabled := connected;
end;

end.

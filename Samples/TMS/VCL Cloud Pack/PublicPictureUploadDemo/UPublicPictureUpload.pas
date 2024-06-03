unit UPublicPictureUpload;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  CloudCustomImgur, CloudImgur, CloudBase, CloudBaseWin, CloudCustomCloudinary,
  CloudCloudInary, CloudImage, Vcl.ExtDlgs;

type
  TForm13 = class(TForm)
    AdvCloudinary1: TAdvCloudinary;
    AdvImgur1: TAdvImgur;
    RadioGroup1: TRadioGroup;
    btUpload: TButton;
    lbLocal: TListBox;
    Label1: TLabel;
    lbCloud: TListBox;
    Label2: TLabel;
    btView: TButton;
    btConnect: TButton;
    AdvCloudImage1: TAdvCloudImage;
    btRemove: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure btUploadClick(Sender: TObject);
    procedure btViewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btConnectClick(Sender: TObject);
    procedure AdvImgur1Connected(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure lbCloudClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    procedure ToggleControls;
  end;

var
  Form13: TForm13;

implementation

uses
  ShellAPI;

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  CloudinaryAppkey = 'xxxxxxxxx';
//  CloudinaryAppsecret = 'xxxxxxxxx';
//  CloudinaryAppcloudname = 'xxxxxxxxx';
//  CloudinaryApppresetupload = 'xxxxxxxxx';
//
//  ImgurAppkey = 'xxxxxxxxx';
//  ImgurAppsecret = 'xxxxxxxxx';

{$I APPIDS.INC}

procedure TForm13.AdvImgur1Connected(Sender: TObject);
begin
  AdvImgur1.SaveTokens;
  Connected := true;
  ToggleControls;
end;

procedure TForm13.btConnectClick(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    AdvImgur1.PersistTokens.Location := plIniFile;
    AdvImgur1.PersistTokens.Key := '.\imgur.ini';
    AdvImgur1.PersistTokens.Section := 'tokens';
    AdvImgur1.LoadTokens;
    AdvImgur1.Connect;
  end
  else if RadioGroup1.ItemIndex = 1 then
  begin
    if (AdvCloudinary1.App.Key <> '')
    and (AdvCloudinary1.App.Secret <> '')
    and (AdvCloudinary1.App.CloudName <> '')
    and (AdvCloudinary1.App.PresetUpload <> '')
    then
    begin
      Connected := true;
      ToggleControls
    end;
  end;
end;

procedure TForm13.btRemoveClick(Sender: TObject);
begin
  AdvImgur1.ClearTokens;
  Connected := false;
  lbLocal.Items.Clear;
  lbCloud.Items.Clear;
  AdvCloudImage1.URL := '';
  ToggleControls;
end;

procedure TForm13.btUploadClick(Sender: TObject);
var
  url: string;
begin
  if OpenPictureDialog1.Execute then
  begin
    Screen.Cursor := crHourGlass;

    if RadioGroup1.ItemIndex = 0 then
      url := AdvImgur1.UploadImage(OpenPictureDialog1.FileName)
    else if RadioGroup1.ItemIndex = 1 then
      url := AdvCloudinary1.UploadImage(OpenPictureDialog1.FileName);

    if url <> '' then
    begin
      lbLocal.Items.Insert(0, OpenPictureDialog1.FileName);
      lbLocal.ItemIndex := 0;
      lbCloud.Items.Insert(0, url);
      lbCloud.ItemIndex := 0;
      AdvCloudImage1.URL := url;
    end;

    Screen.Cursor := crDefault;
  end;
end;

procedure TForm13.btViewClick(Sender: TObject);
begin
  if lbCloud.ItemIndex >= 0 then
    ShellExecute(0,'open',PChar(lbCloud.Items[lbCloud.ItemIndex]),nil,nil,SW_NORMAL);
end;

procedure TForm13.FormCreate(Sender: TObject);
begin
  Connected := false;
  ToggleControls;

  AdvImgur1.App.Key := ImgurAppkey;
  AdvImgur1.App.Secret := ImgurAppsecret;

  AdvCloudinary1.App.Key := CloudinaryAppkey;
  AdvCloudinary1.App.Secret := CloudinaryAppsecret;
  AdvCloudinary1.App.CloudName := CloudinaryAppcloudname;
  AdvCloudinary1.App.PresetUpload := CloudinaryApppresetupload;
end;

procedure TForm13.lbCloudClick(Sender: TObject);
begin
  AdvCloudImage1.URL := lbCloud.Items[lbCloud.ItemIndex];
end;

procedure TForm13.ToggleControls;
begin
  btConnect.Enabled := not Connected;
  RadioGroup1.Enabled := not Connected;
  btRemove.Enabled := Connected;
  btUpload.Enabled := Connected;
  btView.Enabled := Connected;
  lbLocal.Enabled := Connected;
  lbCloud.Enabled := Connected;
end;

end.


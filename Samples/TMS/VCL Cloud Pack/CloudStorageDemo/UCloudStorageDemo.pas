{***************************************************************************}
{ TMS DropBox Cloud access demo                                             }
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
unit UCloudStorageDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ImgList, ExtCtrls,
  CloudBase, CloudBaseWin,
  CloudDropBox, CloudCustomDropBox,
  CloudGDrive, CloudCustomGDrive,
  CloudWinLive, CloudCustomWinLive,
  CloudBoxNet, CloudCustomBoxNet,
  CloudCustomHubic, CloudHubic, CloudCustomOpenStack,
  CloudCustomHiDrive, CloudHiDrive, OleCtrls, SHDocVw, CloudTreeviewAdapter,
  System.ImageList, CloudCustomYandexDisk, CloudYandexDisk;

type
  TForm4 = class(TForm)
    AdvBoxNetDrive1: TAdvBoxNetDrive;
    AdvDropBox1: TAdvDropBox;
    AdvGDrive1: TAdvGDrive;
    AdvSkyDrive1: TAdvSkyDrive;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    ConnectBtn: TButton;
    Panel2: TPanel;
    TreeView1: TTreeView;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FileName: TLabel;
    Created: TLabel;
    Size: TLabel;
    DownloadBtn: TButton;
    UploadBtn: TButton;
    ProgressBar1: TProgressBar;
    DisconnectBtn: TButton;
    CreateFolderBtn: TButton;
    DeleteBtn: TButton;
    ImageList1: TImageList;
    clrAccess: TCheckBox;
    ProgressLabel: TLabel;
    AdvHubic1: TAdvHubic;
    AdvHiDrive1: TAdvHiDrive;
    RadioGroup1: TRadioGroup;
    CloudTreeViewAdapter1: TCloudTreeViewAdapter;
    AdvYandexDisk1: TAdvYandexDisk;
    procedure ConnectBtnClick(Sender: TObject);
    procedure AdvDropBox1DownloadProgress(Sender: TObject; FileName: string;
      Position, Total: Int64);
    procedure DownloadBtnClick(Sender: TObject);
    procedure AdvBoxNetDrive1DownloadProgress(Sender: TObject; FileName: string;
      Position, Total: Int64);
    procedure UploadBtnClick(Sender: TObject);
    procedure AdvBoxNetDrive1UploadProgress(Sender: TObject; FileName: string;
      Position, Total: Int64);
    procedure AdvDropBox1UploadProgress(Sender: TObject; FileName: string;
      Position, Total: Int64);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure DisconnectBtnClick(Sender: TObject);
    procedure CreateFolderBtnClick(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
    procedure AdvDropBox1AuthFormClose(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvDropBox1Connected(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Authenticated: boolean;
    IsDownloading: boolean;
    IsUploading: boolean;
    function Storage: TCloudStorageWin;
    procedure ShowItem;
    procedure DoConnect;
    procedure DoDisconnect;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  DropBoxAppkey = 'xxxxxxxxx';
//  DropBoxAppSecret = 'yyyyyyyy';
//
//  WinLiveClientID = 'xxxxxxxxxxx';
//  WinLiveClientSecret = 'yyyyyyyyyy';
//
//  GoogleAppKey = 'xxxxxxxxxxx';
//  GoogleAppSecret = 'yyyyyyyyyyy';
//
//  BoxNetAppKey = 'xxxxxxxxxxx';
//  BoxNetAppSecret = 'yyyyyyyyyyy';
//
//  HubicAppKey := 'xxxxxxxxxxx';
//  HubicAppSecret := 'yyyyyyyyyyy';
//  HubicCallBack = 'zzzzzzzzzzz';
//
//  HiDriveAppKey = 'xxxxxxxxxxx';
//  HiDriveAppSecret = 'yyyyyyyyyyy';
//
//  YandexDiskAppKey = 'xxxxxxxxxxx';
//  YandexDiskAppSecret = 'yyyyyyyyyyy';

{$I APPIDS.INC}

procedure TForm4.AdvBoxNetDrive1DownloadProgress(Sender: TObject;
  FileName: string; Position, Total: Int64);
begin
  Progressbar1.Position := Position;
  ProgressBar1.Max := Total;
end;

procedure TForm4.AdvBoxNetDrive1UploadProgress(Sender: TObject;
  FileName: string; Position, Total: Int64);
begin
  Progressbar1.Position := Position;
  ProgressBar1.Max := Total;
end;

procedure TForm4.AdvDropBox1AuthFormClose(Sender: TObject);
begin
  if not Authenticated then
    DoDisconnect;
end;

procedure TForm4.AdvDropBox1Connected(Sender: TObject);
var
  cs: TCloudStorage;
begin
  Authenticated := true;

  if (Sender is TCloudStorage) then
  begin
    cs := Sender as TCloudStorage;
    cs.SaveTokens;
  end;

  CloudTreeViewAdapter1.CloudStorage := Storage;
  DoConnect;
end;

procedure TForm4.AdvDropBox1DownloadProgress(Sender: TObject; FileName: string;
  Position, Total: Int64);
begin
  Progressbar1.Position := Position;
  ProgressBar1.Max := Total;
  if IsDownloading then
    Progresslabel.Caption := InttoStr(Position) +' of ' + InttoStr(Total) +' downloaded';
end;

procedure TForm4.AdvDropBox1UploadProgress(Sender: TObject; FileName: string;
  Position, Total: Int64);
begin
  progressbar1.Position := Position;
  ProgressBar1.Max := Total;
  if IsUploading then
    Progresslabel.Caption := InttoStr(Position) +' of ' + InttoStr(Total) +' uploaded';
end;

procedure TForm4.CreateFolderBtnClick(Sender: TObject);
var
  ci: TCloudItem;
  FolderName: string;
begin
  FolderName := '';

  if InputQuery('Name','Name for new folder',FolderName) and (FolderName <> '') then
  begin
    ci := nil;

    if Assigned(TreeView1.Selected) then
    begin
      ci := TCloudItem(TreeView1.Selected.Data);
      if ci.ItemType <> ciFolder then
        ci := nil;
    end;

    Storage.CreateFolder(ci,FolderName);
    CloudTreeViewAdapter1.InitTreeView;
  end;
end;

procedure TForm4.ConnectBtnClick(Sender: TObject);
begin
  Advdropbox1.App.Key := DropBoxAppKey;
  Advdropbox1.App.Secret := DropBoxAppSecret;

  AdvSkyDrive1.App.Key := WinLiveClientID;
  AdvSkyDrive1.App.Secret := WinLiveClientSecret;

  Advgdrive1.App.Key := GoogleAppKey;
  Advgdrive1.App.Secret := GoogleAppSecret;

  AdvBoxNetDrive1.App.Key := BoxNetAppKey;
  AdvBoxNetDrive1.App.Secret := BoxNetAppSecret;

  AdvHubic1.App.Key := HubicAppKey;
  AdvHubic1.App.Secret := HubicAppSecret;
  AdvHubic1.App.CallBackURL := HubicCallBack;

  AdvHiDrive1.App.Key := HiDriveAppKey;
  AdvHiDrive1.App.Secret := HiDriveAppSecret;

  AdvYandexDisk1.App.Key := YandexDiskAppKey;
  AdvYandexDisk1.App.Secret := YandexDiskAppSecret;

  radiogroup1.Enabled := false;

  Storage.Connect;
end;


procedure TForm4.DeleteBtnClick(Sender: TObject);
var
  ci: TCloudItem;
begin
  if Assigned(treeview1.Selected) then
  begin
    ci := TCloudItem(Treeview1.Selected.Data);

    if MessageDlg('Are you sure to delete item: ' + ci.FileName,mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      Storage.Delete(ci);
      ci.Free;
      TreeView1.Selected.Delete;
    end;
  end;
end;

procedure TForm4.DisconnectBtnClick(Sender: TObject);
begin
  DoDisconnect;
end;

procedure TForm4.DoConnect;
begin
  ConnectBtn.Enabled := false;
  DisconnectBtn.Enabled := true;
  UploadBtn.Enabled := true;
  RadioGroup1.Enabled := false;
  CreateFolderBtn.Enabled := true;
  DeleteBtn.Enabled := true;
end;

procedure TForm4.DoDisconnect;
begin
  if clrAccess.Checked then
    Storage.ClearTokens;

  Storage.Disconnect;

  Authenticated := false;
  ConnectBtn.Enabled := true;
  DisconnectBtn.Enabled := false;
  UploadBtn.Enabled := false;
  DownloadBtn.Enabled := false;
  CreateFolderBtn.Enabled := false;
  RadioGroup1.Enabled := true;
  DeleteBtn.Enabled := false;
  Size.Caption := '';
  Created.Caption := '';
  FileName.Caption := '';
end;

procedure TForm4.DownloadBtnClick(Sender: TObject);
var
  ci: TCloudItem;
  sv: TSaveDialog;
begin
  if Assigned(treeview1.Selected) then
  begin
    ci := TCloudItem(Treeview1.Selected.Data);
    begin
      sv := TSaveDialog.Create(Self);
      sv.FileName := ci.FileName;
      if sv.Execute then
      begin
        ProgressBar1.Position := 0;
        ProgressBar1.Visible := true;
        IsDownloading := true;

        Storage.Download(ci,sv.FileName);

        ProgressBar1.Visible := false;
        IsDownloading := false;
        ProgressLabel.Caption := '';
        ShowMessage('File ' +  ci.FileName + ' downloaded');
      end;

      sv.Free;
    end;
  end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
  CloudTreeViewAdapter1.TreeView := TreeView1;
end;

procedure TForm4.UploadBtnClick(Sender: TObject);
var
  fn: string;
  ci, nci: TCloudItem;
begin
  if OpenDialog1.Execute then
  begin
    fn := opendialog1.FileName;

    ProgressBar1.Position := 0;
    ProgressBar1.Visible := true;

    ci := nil;

    if Assigned(TreeView1.Selected) then
    begin
      IsUploading := true;

      ci := TCloudItem(TreeView1.Selected.Data);

      // when selected item is a file, upload to file parent folder
      if ci.ItemType = ciFile then
        ci := ci.ParentFolder;
    end;

    nci := Storage.Upload(ci, fn);

    if Assigned(nci) then
      CloudTreeViewAdapter1.InitTreeView;
    IsUploading := false;

    ProgressBar1.Visible := false;
    ProgressLabel.Caption := '';
  end;
end;

procedure TForm4.ShowItem;
var
  ci: TCloudItem;
begin
  if Assigned(TreeView1.Selected) then
  begin
    ci := TCloudItem(TreeView1.Selected.Data);
    if (ci is TBoxNetItem) then
      (ci as TBoxNetItem).LoadFileInfo;

    FileName.Caption := ci.FileName;

    if ci.CreationDate <> 0 then
      Created.Caption := FormatDateTime(FormatSettings.ShortDateFormat + ' ' + FormatSettings.ShortTimeFormat,ci.CreationDate)
    else
      Created.Caption := FormatDateTime(FormatSettings.ShortDateFormat + ' ' + FormatSettings.ShortTimeFormat,ci.ModifiedDate);

    Size.Caption := IntToStr(ci.Size);

    DownloadBtn.Enabled := ci.ItemType = ciFile;
  end;
end;

function TForm4.Storage: TCloudStorageWin;
begin
  Result := nil;
  case RadioGroup1.ItemIndex of
  0: Result := AdvDropBox1;
  1: Result := AdvGDrive1;
  2: Result := AdvSkyDrive1;
  3: Result := AdvBoxNetDrive1;
  4: Result := AdvHubic1;
  5: Result := AdvHiDrive1;
  6: Result := AdvYandexDisk1;
  end;
end;

procedure TForm4.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  Screen.Cursor := crHourGlass;
  ShowItem;
  Screen.Cursor := crDefault;
end;

end.


unit Janua.TMLogistic.frmVCLFileMigration;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.ImageList,
  // Vcl ............................................................................
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ImgList,
  // Tms  ............................................................................
  CloudCustomHiDrive, CloudDropBox, AdvProgr, CloudHiDrive, CloudCustomOpenStack, CloudCustomHubic,
  CloudHubic, CloudTreeViewAdapter, CloudCustomYandexDisk, CloudYandexDisk, CloudCustomWinLive, CloudWinLive,
  CloudCustomGDrive, CloudGDrive, CloudCustomBoxNet, CloudBoxNet, CloudBase, CloudBaseWin, CloudCustomDropBox,
  // Janua ............................................................................
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  Janua.Core.TMLogistic.Types, uframeTMMigration, uJanuaVCLForm, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  AdvMemo, AdvEdit, AdvEdBtn, AdvDirectoryEdit, DBAccess, Uni, Janua.Vcl.EnhDBGrid, MemDS, VirtualTable;

type
  TfrmTMLogisticVCLFileMigration = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaControl)
    PageControl1: TPageControl;
    tabConnection: TTabSheet;
    tabPratiche: TTabSheet;
    tabEntrate: TTabSheet;
    Panel2: TPanel;
    ProgressLabel: TLabel;
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
    CreateFolderBtn: TButton;
    DeleteBtn: TButton;
    Panel1: TPanel;
    ConnectBtn: TButton;
    DisconnectBtn: TButton;
    clrAccess: TCheckBox;
    RadioGroup1: TRadioGroup;
    AdvDropBox1: TAdvDropBox;
    AdvBoxNetDrive1: TAdvBoxNetDrive;
    AdvGDrive1: TAdvGDrive;
    AdvSkyDrive1: TAdvSkyDrive;
    AdvYandexDisk1: TAdvYandexDisk;
    CloudTreeViewAdapter1: TCloudTreeViewAdapter;
    AdvHubic1: TAdvHubic;
    OpenDialog1: TOpenDialog;
    ImageList1: TImageList;
    AdvHiDrive1: TAdvHiDrive;
    ProgressBar1: TAdvProgress;
    pnlPratiche: TPanel;
    DBNavigator1: TDBNavigator;
    grdReceiptsAttachments: TDBGrid;
    grdReceiptsFiles: TDBGrid;
    Panel3: TPanel;
    DBNavigator2: TDBNavigator;
    grdDocReceipts: TDBGrid;
    btnWorks: TButton;
    btnReceipts: TButton;
    dsDocumentiPratiche: TDataSource;
    dsDocumentiEntrate: TDataSource;
    dsWorkAttachments: TDataSource;
    dsDocumentsAttachments: TDataSource;
    dsBlobFiles: TDataSource;
    DBGrid3: TDBGrid;
    DBGrid2: TDBGrid;
    btnTestWorkUpload: TButton;
    edCustomPath: TCheckBox;
    edPathLocationPratiche: TEdit;
    edPathLocationEntrate: TEdit;
    lbPathPratiche: TLabel;
    lbPathLocationEntrate: TLabel;
    tabLog: TTabSheet;
    advMemoLog: TAdvMemo;
    prgOverall: TAdvProgress;
    btnTestReceipts: TButton;
    prgOverallReceipts: TAdvProgress;
    Edit1: TEdit;
    btnSearchAndOpen: TButton;
    tabFileMoving: TTabSheet;
    Panel4: TPanel;
    btnSelectFolder: TButton;
    edRootDirectory: TAdvDirectoryEdit;
    Label4: TLabel;
    ImageList: TImageList;
    vtFiles: TVirtualTable;
    vtFilesFileName: TStringField;
    EnhDBGrid1: TEnhDBGrid;
    UniDataSource1: TUniDataSource;
    btnMoveReceipts: TButton;
    lbTargetReceipts: TLabel;
    Panel5: TPanel;
    EnhDBGrid2: TEnhDBGrid;
    EnhDBGrid3: TEnhDBGrid;
    dsAttachments: TUniDataSource;
    btnOpen: TButton;
    Panel6: TPanel;
    EnhDBGrid4: TEnhDBGrid;
    EnhDBGrid5: TEnhDBGrid;
    btnMoveWorks: TButton;
    btnOpenWorks: TButton;
    dsWorkAttach: TUniDataSource;
    tsNewFileMoving: TTabSheet;
    pnlFileMoving: TPanel;
    edDocAttachmentsDestRoot: TAdvDirectoryEdit;
    lbMoveFile: TLabel;
    btnMoveDocAttachments: TButton;
    EnhDBGrid6: TEnhDBGrid;
    dsDocAttachmentsMoving: TDataSource;
    memFile: TMemo;
    btnStopTask: TButton;
    lbCounter: TLabel;
    procedure AdvGDrive1AuthFormClose(Sender: TObject);
    procedure AdvGDrive1Connected(Sender: TObject);
    procedure AdvGDrive1DownloadProgress(Sender: TObject; FileName: string; Position, Total: Int64);
    procedure AdvGDrive1UploadProgress(Sender: TObject; FileName: string; Position, Total: Int64);
    procedure btnMoveDocAttachmentsClick(Sender: TObject);
    procedure btnMoveReceiptsClick(Sender: TObject);
    procedure btnMoveWorksClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnOpenWorksClick(Sender: TObject);
    procedure btnReceiptsClick(Sender: TObject);
    procedure btnSearchAndOpenClick(Sender: TObject);
    procedure btnSelectFolderClick(Sender: TObject);
    procedure btnStopTaskClick(Sender: TObject);
    procedure btnWorksClick(Sender: TObject);
    procedure btnTestReceiptsClick(Sender: TObject);
    procedure btnTestWorkUploadClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConnectBtnClick(Sender: TObject);
    procedure CreateFolderBtnClick(Sender: TObject);
    procedure DeleteBtnClick(Sender: TObject);
    procedure DisconnectBtnClick(Sender: TObject);
    procedure DownloadBtnClick(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Click(Sender: TObject);
    procedure UploadBtnClick(Sender: TObject);
  private
    { Private declarations }
    FStopTAsk: Boolean;
    function TempPath: String;
    procedure keysetup;
    procedure DriveConnect;

  public
    { Public declarations }
    Authenticated: Boolean;
    IsDownloading: Boolean;
    IsUploading: Boolean;
    function Storage: TCloudStorageWin;
    procedure ShowItem;
    procedure DoConnect;
    procedure DoDisconnect;
    procedure UploadFile(const aFileName: TFileName);
    procedure UploadWork;
    procedure UploadDoc;
  end;

var
  frmTMLogisticVCLFileMigration: TfrmTMLogisticVCLFileMigration;

implementation

uses Winapi.ShellAPI, System.Threading, udmTMMigration, Janua.Core.Functions, Janua.Core.AsyncTask, System.IOUtils,
  Janua.Application.Framework, System.Strutils;

var
  strPath: string;

const
  DropBoxAppkey = '';
  DropBoxAppSecret = '';

  WinLiveClientID = '';
  WinLiveClientSecret = '';

  GoogleAppKey = '871182331783-1vv4igf0rc5jvnqtlgi7ebvbt0elpt8f.apps.googleusercontent.com';
  GoogleAppSecret = 'ok60yC6BGpxCNvJoOCVZOaUU';

  BoxNetAppKey = '';
  BoxNetAppSecret = '';

  HubicAppKey = '';
  HubicAppSecret = '';
  HubicCallBack = '';

  HiDriveAppKey = '';
  HiDriveAppSecret = '';

  YandexDiskAppKey = '';
  YandexDiskAppSecret = '';

{$R *.dfm}

procedure TfrmTMLogisticVCLFileMigration.AdvGDrive1AuthFormClose(Sender: TObject);
begin
  if not Authenticated then
    DoDisconnect;
end;

procedure TfrmTMLogisticVCLFileMigration.AdvGDrive1Connected(Sender: TObject);
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

procedure TfrmTMLogisticVCLFileMigration.AdvGDrive1DownloadProgress(Sender: TObject; FileName: string;
  Position, Total: Int64);
begin
  ProgressBar1.Position := Position;
  ProgressBar1.Max := Total;
  if IsDownloading then
    ProgressLabel.Caption := InttoStr(Position) + ' of ' + InttoStr(Total) + ' downloaded';
end;

procedure TfrmTMLogisticVCLFileMigration.AdvGDrive1UploadProgress(Sender: TObject; FileName: string;
  Position, Total: Int64);
begin
  ProgressBar1.Position := Position;
  ProgressBar1.Max := Total;
  if IsUploading then
    ProgressLabel.Caption := InttoStr(Position) + ' of ' + InttoStr(Total) + ' uploaded';
end;

procedure TfrmTMLogisticVCLFileMigration.btnMoveDocAttachmentsClick(Sender: TObject);
var
  bTask: Itask;
begin
  inherited;
  if DirectoryExists(edDocAttachmentsDestRoot.Text) then
    dmTMMigration.qryDocAttachmentsFileMove.Open;

  dmTMMigration.qryDocAttachmentsFileMove.Last;
  dmTMMigration.qryDocAttachmentsFileMove.First;

  Application.ProcessMessages;

  memFile.Lines.Add('Task Started');
  FStopTAsk := False;

  bTask := TTask.Create(
    procedure
    var
      lSourceFile, lDestFile, lDestDir: string;
      aTask: Itask;
      I: Integer;
    begin
      with dmTMMigration do
      begin
        I := 0;
        While not qryDocAttachmentsFileMove.Eof { and (I < 1) } do
        begin
          Inc(I);
          lDestFile := tpl(edDocAttachmentsDestRoot.Text) +
            StringReplace(qryDocAttachmentsFileMovedestination.AsWideString, '/', '\', [rfReplaceAll, rfIgnoreCase]);
          lDestDir := ExtractFilePath(lDestFile);

          TThread.Synchronize(TThread.Current,
            procedure
            begin
              memFile.Lines.Add('Check Folder: ' + lDestDir);
              lbCounter.Caption := I.ToString;
            end);

          if not DirectoryExists(lDestDir) then
          begin
            TDirectory.CreateDirectory(lDestDir);
            TThread.Synchronize(TThread.Current,
              procedure
              begin
                memFile.Lines.Add('Directory Created: ' + lDestDir);
              end)
          end
          else
            TThread.Synchronize(TThread.Current,
              procedure
              begin
                memFile.Lines.Add('Directory Exists: ' + sLineBreak + lDestDir);
              end);

          if DirectoryExists(lDestDir) then
          begin
            lSourceFile := qryDocAttachmentsFileMoveorigin.AsString;

            if FileExists(lDestFile) then
              TThread.Synchronize(TThread.Current,
                procedure
                begin
                  qryDocAttachmentsFileMove.Edit;
                  qryDocAttachmentsFileMoveflg_stored.AsBoolean := true;
                  qryDocAttachmentsFileMove.Post;
                  memFile.Lines.Add('File Exists: ' + sLineBreak + lDestFile);
                end)
            else if not FileExists(lDestFile) then
            begin
              aTask := TTask.Create(
                procedure
                var
                  lTaskDest, lTaskSource: string;
                begin
                  lTaskDest := lDestFile;
                  lTaskSource := lSourceFile;
                  memFile.Lines.Add('Start Loading: ' + sLineBreak + lTaskSource + sLineBreak + 'To: ' + lTaskDest);
                  try
                    TFile.Copy(lTaskSource, lTaskDest);
                    TThread.Synchronize(TThread.Current,
                      procedure
                      begin
                        memFile.Lines.Add('End Loading: ' + lTaskSource + sLineBreak + 'To: ' + lTaskDest);
                      end);
                  except
                    on e: Exception do
                      TThread.Synchronize(TThread.Current,
                        procedure
                        begin
                          memFile.Lines.Add('Error Loading: ' + sLineBreak + 'From: ' + lTaskSource + sLineBreak +
                            'To: ' + lTaskDest + sLineBreak + e.Message);
                        end);
                  end;
                end);
              aTask.Start;
              TThread.Synchronize(TThread.Current,
                procedure
                begin
                  qryDocAttachmentsFileMove.Edit;
                  qryDocAttachmentsFileMoveflg_stored.AsBoolean := true;
                  qryDocAttachmentsFileMove.Post;
                end);
            end;
          end;
          qryDocAttachmentsFileMove.Next;
        end;
      end;
    end);
  bTask.Start;
end;

procedure TfrmTMLogisticVCLFileMigration.btnMoveReceiptsClick(Sender: TObject);
// ----------------------------------------------------------------------------------------------
var
  RootDir, DocDir, Year, Month, FilePath, DestPath, FileName: string;
begin
  if DirectoryExists(edRootDirectory.Text) then
  begin
    // At First I need to Know Local Root File Location.
    // This can be stored just in the 'right' Key on Application 'ini' file
    // This file is managed by a simple Key->Value storage that is a string
    // If this 'string' is a File (an image a pdf file or whatever it is)
    // it will be stored just as an Encoded64 File.
    RootDir := TPath.Combine(edRootDirectory.Text, 'TMApp\CLOUD\DOCUMENTS');
    lbPathLocationEntrate.Caption := RootDir;
    if DirectoryExists(RootDir) then
    begin
      dmTMMigration.qryDocHeads.Open;
      dmTMMigration.qryDocHeads.First;
      while not dmTMMigration.qryDocHeads.Eof do
      begin
        Year := FormatDateTime('YYYY', dmTMMigration.qryDocHeadsDoc_Date.AsDateTime);
        Month := FormatDateTime('MM', dmTMMigration.qryDocHeadsDoc_Date.AsDateTime);
        DocDir := TPath.Combine(RootDir, Year);
        if not DirectoryExists(DocDir) then
          CreateDir(DocDir);
        DocDir := TPath.Combine(DocDir, Month);
        if not DirectoryExists(DocDir) then
          CreateDir(DocDir);

        if dmTMMigration.qryDocAttachments.RecordCount > 0 then
        begin
          dmTMMigration.qryDocAttachments.First;
          while not dmTMMigration.qryDocAttachments.Eof do
          begin
            FileName := dmTMMigration.qryDocAttachmentscblb_jguid.AsString;
            FileName := FileName + dmTMMigration.qryDocAttachmentsfile_ext.AsString;
            FilePath := TPath.Combine(edRootDirectory.Text, FileName);
            if FileExists(FilePath) then
            begin
              DestPath := TPath.Combine(DocDir, FileName);
              TFile.Move(FilePath, DestPath);
            end;
            dmTMMigration.qryDocAttachments.Next;
          end;

        end;

        dmTMMigration.qryDocHeads.Next;
      end;

    end;
  end;

  // ----------------------------------------------------------------------------------------------

end;

procedure TfrmTMLogisticVCLFileMigration.btnMoveWorksClick(Sender: TObject);
// ----------------------------------------------------------------------------------------------
var
  RootDir, DocDir, Year, Month, FilePath, DestPath, FileName: string;
begin
  if DirectoryExists(edRootDirectory.Text) then
  begin
    // TMApp\CLOUD\DOCUMENTS
    RootDir := TPath.Combine(edRootDirectory.Text, 'TMApp\CLOUD\WORKFLOW');
    lbPathLocationEntrate.Caption := RootDir;
    if DirectoryExists(RootDir) then
    begin
      dmTMMigration.qryWorks.Open;
      dmTMMigration.qryWorks.First;
      while not dmTMMigration.qryWorks.Eof do
      begin
        Year := FormatDateTime('YYYY', dmTMMigration.qryWorksworkdate.AsDateTime);
        Month := FormatDateTime('MM', dmTMMigration.qryWorksworkdate.AsDateTime);
        DocDir := TPath.Combine(RootDir, Year);
        if not DirectoryExists(DocDir) then
          CreateDir(DocDir);
        DocDir := TPath.Combine(DocDir, Month);
        if not DirectoryExists(DocDir) then
          CreateDir(DocDir);

        if dmTMMigration.qryWorkAttachments.RecordCount > 0 then
        begin
          dmTMMigration.qryWorkAttachments.First;
          while not dmTMMigration.qryWorkAttachments.Eof do
          begin
            FileName := dmTMMigration.qryWorkAttachmentscblb_jguid.AsString;
            FileName := FileName + dmTMMigration.qryWorkAttachmentsfile_ext.AsString;
            FilePath := TPath.Combine(edRootDirectory.Text, FileName);
            if FileExists(FilePath) then
            begin
              DestPath := TPath.Combine(DocDir, FileName);
              TFile.Move(FilePath, DestPath);
            end;
            dmTMMigration.qryWorkAttachments.Next;
          end;
        end;
        dmTMMigration.qryWorks.Next;
      end;
    end;
  end
  else
    JShowWarning('Directory does not exist: ' + edRootDirectory.Text);

  // ----------------------------------------------------------------------------------------------

end;

procedure TfrmTMLogisticVCLFileMigration.btnOpenClick(Sender: TObject);
begin
  dmTMMigration.qryDocHeads.Open;
  dmTMMigration.qryDocHeads.First;
end;

procedure TfrmTMLogisticVCLFileMigration.btnOpenWorksClick(Sender: TObject);
begin
  dmTMMigration.qryWorks.Open;
  dmTMMigration.qryWorks.First;
end;

procedure TfrmTMLogisticVCLFileMigration.btnReceiptsClick(Sender: TObject);
begin
  DriveConnect;
  dmTMMigration.sqlUpdatePratiche.Execute;
  dmTMMigration.qryAttachmentsEntrate.First;
  prgOverallReceipts.Max := dmTMMigration.qryAttachmentsEntrate.RecordCount;

  while not dmTMMigration.qryAttachmentsEntrate.Eof do
  begin
    UploadDoc;
    prgOverallReceipts.Position := prgOverallReceipts.Position + 1;
    dmTMMigration.qryAttachmentsEntrate.Next;
  end;
end;

procedure TfrmTMLogisticVCLFileMigration.btnSearchAndOpenClick(Sender: TObject);
var
  I: Integer;
  aFile: string;
  bFound: Boolean;
  ci: TCloudItem;
begin
  if Storage.Drive.Count = 0 then
    Storage.GetDriveInfo;
  aFile := JanuainputText('File to Download', 'Enter File Name to Download', '');
  I := -1;
  bFound := False;
  while (I < Storage.Drive.Count - 1) and not bFound do
  begin
    Inc(I);
    bFound := Storage.Drive.Items[I].FileName.ToLower = aFile.ToLower;
    if bFound then
    begin
      ci := Storage.Drive.Items[I];
      ProgressBar1.Position := 0;
      ProgressBar1.Visible := true;
      IsDownloading := true;

      Storage.Download(ci, TJanuaCoreOS.GetTempPath + '\' + aFile);

      ProgressBar1.Visible := False;
      IsDownloading := False;
      ProgressLabel.Caption := '';
      ShowMessage('File ' + ci.FileName + ' downloaded');

      TJanuaCoreOS.InternalExec(TJanuaCoreOS.GetTempPath + '\' + aFile, '');
    end;
  end;

  // SearchList(Query: string; ExactMatch: Boolean; Folder: TCloudItem): TCloudItems;
end;

procedure TfrmTMLogisticVCLFileMigration.btnSelectFolderClick(Sender: TObject);
var
  I: Integer;
  Icon: TIcon;
  SearchRec: TSearchRec;
  FileInfo: SHFILEINFO;
begin
{$WARN SYMBOL_PLATFORM OFF}
  // Create a temporary TIcon
  Icon := TIcon.Create;
  strPath := edRootDirectory.Text;

  if strPath <> '' then
    try
      // search for the first file
      I := FindFirst(TPath.Combine(strPath, '*.*'), faAnyFile, SearchRec);
      while I = 0 do
      begin
        // On directories and volumes
        if ((SearchRec.Attr and FaDirectory <> FaDirectory) and (SearchRec.Attr and FaVolumeId <> FaVolumeId)) then
        begin
          vtFiles.Append;
          vtFilesFileName.AsString := FileInfo.szDisplayName;
          vtFiles.Post;
          // Get The DisplayName
          SHGetFileInfo(PChar(strPath + SearchRec.Name), 0, FileInfo, SizeOf(FileInfo), SHGFI_DISPLAYNAME);
          // Get The TypeName
          SHGetFileInfo(PChar(strPath + SearchRec.Name), 0, FileInfo, SizeOf(FileInfo), SHGFI_TYPENAME);
          {
            // Get The Icon That Represents The File
            SHGetFileInfo(PChar(strPath + SearchRec.Name), 0, FileInfo, SizeOf(FileInfo),
            SHGFI_ICON or SHGFI_SMALLICON);
            Icon.Handle := FileInfo.hIcon;
            // ListItem.ImageIndex := ImageList.AddIcon(Icon);
            // Destroy the Icon
            DestroyIcon(FileInfo.hIcon);
          }
        end;
      end;
      I := FindNext(SearchRec);
    finally
      Icon.Free;
    end;
{$WARN SYMBOL_PLATFORM ON}
end;

procedure TfrmTMLogisticVCLFileMigration.btnStopTaskClick(Sender: TObject);
begin
  inherited;
  FStopTAsk := true;
end;

procedure TfrmTMLogisticVCLFileMigration.btnWorksClick(Sender: TObject);
begin
  { DriveConnect; }
  dmTMMigration.sqlUpdateEntrate.Execute;
  dmTMMigration.qryAttachmentsPratiche.First;
  prgOverall.Max := dmTMMigration.qryAttachmentsPratiche.RecordCount;
  while not dmTMMigration.qryAttachmentsPratiche.Eof do
  begin
    UploadWork;
    prgOverall.Position := prgOverall.Position + 1;
    dmTMMigration.qryAttachmentsPratiche.Next;
  end;

end;

procedure TfrmTMLogisticVCLFileMigration.btnTestReceiptsClick(Sender: TObject);
begin
  keysetup;
  Storage.Connect;
  UploadDoc;
end;

procedure TfrmTMLogisticVCLFileMigration.btnTestWorkUploadClick(Sender: TObject);
begin
  DriveConnect;
  UploadWork;
end;

procedure TfrmTMLogisticVCLFileMigration.FormCreate(Sender: TObject);
begin
  if not Assigned(dmTMMigration) then
    Application.CreateForm(TdmTMMigration, dmTMMigration);
  CloudTreeViewAdapter1.TreeView := TreeView1;
  dmTMMigration.qryAttachmentsEntrate.Open;
  dmTMMigration.qryAttachmentsPratiche.Open;
  dmTMMigration.qryBlobFile.Open;
  dmTMMigration.tbDocumentsAttachments.Open;
  dmTMMigration.tbWorkFlowAttachments.Open;

  // Assign a Imagelist to the ListView
  vtFiles.Open;

end;

procedure TfrmTMLogisticVCLFileMigration.ConnectBtnClick(Sender: TObject);
begin
  DoConnect;
end;

procedure TfrmTMLogisticVCLFileMigration.CreateFolderBtnClick(Sender: TObject);
var
  ci: TCloudItem;
  FolderName: string;
begin
  FolderName := '';

  if InputQuery('Name', 'Name for new folder', FolderName) and (FolderName <> '') then
  begin
    ci := nil;

    if Assigned(TreeView1.Selected) then
    begin
      ci := TCloudItem(TreeView1.Selected.Data);
      if ci.ItemType <> ciFolder then
        ci := nil;
    end;

    Storage.CreateFolder(ci, FolderName);
    CloudTreeViewAdapter1.InitTreeView;
  end;
end;

procedure TfrmTMLogisticVCLFileMigration.DeleteBtnClick(Sender: TObject);
var
  ci: TCloudItem;
begin
  if Assigned(TreeView1.Selected) then
  begin
    ci := TCloudItem(TreeView1.Selected.Data);

    if MessageDlg('Are you sure to delete item: ' + ci.FileName, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Storage.Delete(ci);
      ci.Free;
      TreeView1.Selected.Delete;
    end;
  end;
end;

procedure TfrmTMLogisticVCLFileMigration.DisconnectBtnClick(Sender: TObject);
begin
  DoDisconnect;
end;

procedure TfrmTMLogisticVCLFileMigration.DoConnect;
begin
  DriveConnect;
  ConnectBtn.Enabled := False;
  DisconnectBtn.Enabled := true;
  UploadBtn.Enabled := true;
  RadioGroup1.Enabled := False;
  CreateFolderBtn.Enabled := true;
  DeleteBtn.Enabled := true;
end;

procedure TfrmTMLogisticVCLFileMigration.DoDisconnect;
begin
  if clrAccess.Checked then
    Storage.ClearTokens;

  Storage.Disconnect;

  Authenticated := False;
  ConnectBtn.Enabled := true;
  DisconnectBtn.Enabled := False;
  UploadBtn.Enabled := False;
  DownloadBtn.Enabled := False;
  CreateFolderBtn.Enabled := False;
  RadioGroup1.Enabled := true;
  DeleteBtn.Enabled := False;
  Size.Caption := '';
  Created.Caption := '';
  FileName.Caption := '';
end;

procedure TfrmTMLogisticVCLFileMigration.DownloadBtnClick(Sender: TObject);
var
  ci: TCloudItem;
  sv: TSaveDialog;
begin
  if Assigned(TreeView1.Selected) then
  begin
    ci := TCloudItem(TreeView1.Selected.Data);

    begin
      sv := TSaveDialog.Create(Self);
      sv.FileName := ci.FileName;
      if sv.Execute then
      begin
        ProgressBar1.Position := 0;
        ProgressBar1.Visible := true;
        IsDownloading := true;

        Storage.Download(ci, sv.FileName);

        ProgressBar1.Visible := False;
        IsDownloading := False;
        ProgressLabel.Caption := '';
        ShowMessage('File ' + ci.FileName + ' downloaded');
      end;

      sv.Free;
    end;
  end;
end;

procedure TfrmTMLogisticVCLFileMigration.DriveConnect;
begin
  if not Authenticated then
  begin
    keysetup;
    Storage.Connect;
  end;
end;

procedure TfrmTMLogisticVCLFileMigration.ShowItem;
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
      Created.Caption := FormatDateTime(FormatSettings.ShortDateFormat + ' ' + FormatSettings.ShortTimeFormat,
        ci.CreationDate)
    else
      Created.Caption := FormatDateTime(FormatSettings.ShortDateFormat + ' ' + FormatSettings.ShortTimeFormat,
        ci.ModifiedDate);

    Size.Caption := InttoStr(ci.Size);

    DownloadBtn.Enabled := ci.ItemType = ciFile;
  end;
end;

function TfrmTMLogisticVCLFileMigration.Storage: TCloudStorageWin;
begin
  Result := nil;
  case RadioGroup1.ItemIndex of
    0:
      Result := AdvDropBox1;
    1:
      Result := AdvGDrive1;
    2:
      Result := AdvSkyDrive1;
    3:
      Result := AdvBoxNetDrive1;
    4:
      Result := AdvHubic1;
    5:
      Result := AdvHiDrive1;
    6:
      Result := AdvYandexDisk1;
  end;
end;

function TfrmTMLogisticVCLFileMigration.TempPath: String;
begin
  Result := TJanuaCoreOS.TempPath;
end;

procedure TfrmTMLogisticVCLFileMigration.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  Screen.Cursor := crHourGlass;
  ShowItem;
  Screen.Cursor := crDefault;
end;

procedure TfrmTMLogisticVCLFileMigration.UploadBtnClick(Sender: TObject);
var
  fn: string;
  ci, nci: TCloudItem;
begin
  if OpenDialog1.Execute then
  begin
    fn := OpenDialog1.FileName;

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
    IsUploading := False;

    ProgressBar1.Visible := False;
    ProgressLabel.Caption := '';
  end;
end;

procedure TfrmTMLogisticVCLFileMigration.UploadDoc;
var
  lFileUpload, lTmp, lReplaceDir, lExt: TFileName;
  lTest: Integer;
  lID: Int64;
  aGUID: TGUID;
  dm: TdmTMMigration;
begin
  if dmTMMigration.qryAttachmentsEntrate.RecordCount = 0 then
    Exit;
  try
    dm := dmTMMigration;
    lTmp := dm.qryAttachmentsEntratepath.AsString;
    lExt := TPath.GetExtension(dm.qryAttachmentsEntratenomefile.AsString);
    lFileUpload := dm.qryAttachmentsEntratenomefile.AsString;
    aGUID := dm.qryAttachmentsEntratejguid.AsGuid;

    if edCustomPath.Checked then
    begin
      lReplaceDir := edPathLocationEntrate.Text;
      lTest := Pos('\\192.168.1.202\ScambioSoftnet\ARCHIVIAZIONEDOCUMENTI\MAGAZZINO', lTmp);
      lTmp := StringReplace(lTmp, '\\192.168.1.202\ScambioSoftnet\ARCHIVIAZIONEDOCUMENTI\MAGAZZINO', lReplaceDir,
        [rfIgnoreCase]);
    end;

    lFileUpload := TPath.Combine(lTmp, lFileUpload);
    lTmp := TPath.Combine(TempPath, dm.qryAttachmentsEntratejguid.AsString + lExt);

    if FileExists(lTmp) then
      DeleteFile(lTmp);

    TFile.Copy(lFileUpload, lTmp);

    if FileExists(lTmp) then
      DeleteFile(lTmp);

    dm.qryBlobFile.Append;
    dm.qryBlobFilefilename.AsWideString := dm.qryAttachmentsEntratenomefile.AsString;
    dm.qryBlobFileispublic.AsBoolean := False;
    dm.qryBlobFileisresource.AsBoolean := False;
    dm.qryBlobFilejguid.AsGuid := aGUID;
    dm.qryBlobFilecblb_deleted.AsBoolean := False;
    dm.qryBlobFilecblb_jguid.AsGuid := aGUID;
    dm.qryBlobFilefile_ext.AsString := lExt;
    dm.qryBlobFile.Post;
    lID := dm.qryBlobFileblob_id.AsLargeInt;

    dm.tbDocumentsAttachments.Append;
    dm.tbDocumentsAttachmentsdoc_id.AsLargeInt := dm.qryAttachmentsEntrateid.AsLargeInt;
    dm.tbDocumentsAttachmentsblob_id.AsLargeInt := lID;
    dm.tbDocumentsAttachmentsblob_jguid.AsGuid := aGUID;
    dm.tbDocumentsAttachmentslocation.AsAnsiString := 'G';
    dm.tbDocumentsAttachmentsfilename.AsWideString := dm.qryAttachmentsPratichenomefile.AsString;
    dm.tbDocumentsAttachmentsdescription.Text := dm.qryAttachmentsEntratenote.Text;
    dm.tbDocumentsAttachmentsextension.AsWideString := lExt;
    dm.tbDocumentsAttachments.Post;
  except
    on e: Exception do
    begin
      Self.advMemoLog.Lines.Add('Error Loading' + lFileUpload);
      Self.advMemoLog.Lines.Add(e.Message);
    end;
  end;

end;

procedure TfrmTMLogisticVCLFileMigration.keysetup;
begin
  AdvDropBox1.App.Key := DropBoxAppkey;
  AdvDropBox1.App.Secret := DropBoxAppSecret;
  AdvSkyDrive1.App.Key := WinLiveClientID;
  AdvSkyDrive1.App.Secret := WinLiveClientSecret;
  AdvGDrive1.App.Key := GoogleAppKey;
  AdvGDrive1.App.Secret := GoogleAppSecret;
  AdvBoxNetDrive1.App.Key := BoxNetAppKey;
  AdvBoxNetDrive1.App.Secret := BoxNetAppSecret;
  AdvHubic1.App.Key := HubicAppKey;
  AdvHubic1.App.Secret := HubicAppSecret;
  AdvHubic1.App.CallBackURL := HubicCallBack;
  AdvHiDrive1.App.Key := HiDriveAppKey;
  AdvHiDrive1.App.Secret := HiDriveAppSecret;
  AdvYandexDisk1.App.Key := YandexDiskAppKey;
  AdvYandexDisk1.App.Secret := YandexDiskAppSecret;
end;

procedure TfrmTMLogisticVCLFileMigration.TreeView1Click(Sender: TObject);
var
  ci: TCloudItem;
begin
  if Assigned(TreeView1.Selected) then
  begin
    ci := TCloudItem(TreeView1.Selected.Data);
    Edit1.Text := ci.FileName;
  end;
end;

procedure TfrmTMLogisticVCLFileMigration.UploadFile(const aFileName: TFileName);
var
  ci, nci: TCloudItem;
begin
  if (aFileName <> '') and FileExists(aFileName) then
  begin
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

    nci := Storage.Upload(ci, aFileName);

    if Assigned(nci) then
      CloudTreeViewAdapter1.InitTreeView;
    IsUploading := False;

    ProgressBar1.Visible := False;
    ProgressLabel.Caption := '';
  end;
end;

procedure TfrmTMLogisticVCLFileMigration.UploadWork;
var
  lFileUpload, lTmp, lReplaceDir, lExt: TFileName;
  lTest: Integer;
  lID: Int64;
  aGUID: TGUID;
  dm: TdmTMMigration;
begin
  if dmTMMigration.qryAttachmentsPratiche.RecordCount = 0 then
    Exit;
  try
    dm := dmTMMigration;
    lTmp := dm.qryAttachmentsPratichePath.AsString;
    lExt := TPath.GetExtension(dm.qryAttachmentsPratichenomefile.AsString);
    lFileUpload := dm.qryAttachmentsPratichenomefile.AsString;
    aGUID := dm.qryAttachmentsPraticheJguid.AsGuid;

    if edCustomPath.Checked then
    begin
      lReplaceDir := edPathLocationPratiche.Text;
      lTest := Pos('\\192.168.1.202\ScambioSoftnet\ARCHIVIAZIONEDOCUMENTI\PRATICHE', lTmp);
      lTmp := StringReplace(lTmp, '\\192.168.1.202\ScambioSoftnet\ARCHIVIAZIONEDOCUMENTI\PRATICHE', lReplaceDir,
        [rfIgnoreCase]);
    end;

    lFileUpload := TPath.Combine(lTmp, lFileUpload);
    lTmp := TPath.Combine(Self.TempPath, dm.qryAttachmentsPraticheJguid.AsString + lExt);

    if FileExists(lTmp) then
      DeleteFile(lTmp);

    TFile.Copy(lFileUpload, lTmp);
    UploadFile(lTmp);
    if FileExists(lTmp) then
      DeleteFile(lTmp);

    dm.qryBlobFile.Append;
    dm.qryBlobFilefilename.AsWideString := dm.qryAttachmentsPratichenomefile.AsString;
    dm.qryBlobFileispublic.AsBoolean := False;
    dm.qryBlobFileisresource.AsBoolean := False;
    dm.qryBlobFilejguid.AsGuid := aGUID;
    dm.qryBlobFilecblb_deleted.AsBoolean := False;
    dm.qryBlobFilecblb_jguid.AsAnsiString := dm.qryAttachmentsPraticheJguid.AsAnsiString;
    dm.qryBlobFilefile_ext.AsString := lExt;
    dm.qryBlobFile.Post;
    lID := dm.qryBlobFileblob_id.AsLargeInt;

    dm.tbWorkFlowAttachments.Append;
    dm.tbWorkFlowAttachmentswork_id.AsLargeInt := dm.qryAttachmentsPraticheid.AsLargeInt;
    dm.tbWorkFlowAttachmentsblob_id.AsLargeInt := lID;
    dm.tbWorkFlowAttachmentsblob_jguid.AsGuid := aGUID;
    dm.tbWorkFlowAttachmentslocation.AsAnsiString := 'G';
    dm.tbWorkFlowAttachmentsfilename.AsWideString := dm.qryAttachmentsPratichenomefile.AsString;
    dm.tbWorkFlowAttachmentsdescription.Text := dm.qryAttachmentsEntratenote.Text;
    dm.tbWorkFlowAttachmentsextension.AsWideString := lExt;
    dm.tbWorkFlowAttachments.Post;
  except
    on e: Exception do
    begin
      Self.advMemoLog.Lines.Add('Error Loading' + lFileUpload);
      Self.advMemoLog.Lines.Add(e.Message);
    end;
  end;

end;

end.

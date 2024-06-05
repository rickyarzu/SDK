unit UGSheetsDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, CloudBase,
  CloudBaseWin, CloudCustomGoogle, CloudGoogleWin, CloudCustomGSheets,
  CloudCustomGDrive, CloudGDrive, CloudGSheets, ComCtrls, Grids, AdvObj,
  BaseGrid, AdvGrid, CloudGSheetGridAdapter;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    btnConnect: TButton;
    btnShowWorksheet: TButton;
    AdvGDrive1: TAdvGDrive;
    treeFiles: TTreeView;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    lblType: TLabel;
    txtWorksheetId: TEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    AdvStringGrid1: TAdvStringGrid;
    btnLoadGrid: TButton;
    btnExportGrid: TButton;
    btnUploadFile: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    txtFileName: TEdit;
    lblWorking: TLabel;
    AdvGSheets1: TAdvCloudGSheetsGridAdapter;
    btnRemoveAccess: TButton;
    ckLiveEdit: TCheckBox;
    procedure btnConnectClick(Sender: TObject);
    procedure ShowFiles;
    procedure AdvGDrive1ReceivedAccessToken(Sender: TObject);
    procedure treeFilesChange(Sender: TObject; Node: TTreeNode);
    procedure btnLoadGridClick(Sender: TObject);
    procedure btnExportGridClick(Sender: TObject);
    procedure btnShowWorksheetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DisableControls;
    procedure btnUploadFileClick(Sender: TObject);
    procedure btnRemoveAccessClick(Sender: TObject);
    procedure ckLiveEditClick(Sender: TObject);
  private
    procedure EnableControls;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Generics.Collections;
{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  GAppkey = 'xxxxxxxxx';
//  GAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm2.AdvGDrive1ReceivedAccessToken(Sender: TObject);
var
  cs: TCloudStorageWin;
begin
  if (Sender is TCloudStorageWin) then
  begin
    cs := Sender as TCloudStorageWin;
    Screen.Cursor := crHourGlass;
    cs.GetDriveInfo;
    cs.FillTreeView(treeFiles);

    Screen.Cursor := crDefault;
    cs.SaveTokens;
    EnableControls;
  end;
end;


procedure TForm2.btnShowWorksheetClick(Sender: TObject);
begin
  AdvGSheets1.WorkSheetID := txtWorksheetId.Text;
  DisableControls;
  AdvGSheets1.ImportGrid;
  EnableControls;
end;

procedure TForm2.btnUploadFileClick(Sender: TObject);
begin
  DisableControls;
  AdvGSheets1.WorkSheetTitle := txtFileName.Text;
  AdvGSheets1.WorkSheetId := AdvGSheets1.GetWorkSheetId(AdvGSheets1.WorkSheetTitle);
  AdvGSheets1.ExportGrid;
  txtFileName.Text := EmptyStr;
  btnConnectClick(Self);
  EnableControls;
end;

procedure TForm2.ckLiveEditClick(Sender: TObject);
begin
  AdvGSheets1.LiveEdit := ckLiveEdit.Checked;
end;

procedure TForm2.btnConnectClick(Sender: TObject);
var
  Acc: Boolean;
begin
  DisableControls;

  AdvGDrive1.App.Key := GAppkey;
  AdvGDrive1.App.Secret := GAppSecret;

  AdvGSheets1.App.Key := GAppkey;
  AdvGSheets1.App.Secret := GAppSecret;

  if AdvGDrive1.App.Key <> '' then
  begin
    AdvGDrive1.PersistTokens.Location := plIniFile;
    AdvGDrive1.PersistTokens.Key := '.\google.ini';
    AdvGDrive1.PersistTokens.Section := 'tokens';
    AdvGDrive1.LoadTokens;

    AdvGSheets1.PersistTokens.Location := plIniFile;
    AdvGSheets1.PersistTokens.Key := '.\google.ini';
    AdvGSheets1.PersistTokens.Section := 'tokens';
    AdvGSheets1.LoadTokens;

    Acc := AdvGDrive1.TestTokens;

    if not Acc then
    begin
      AdvGDrive1.RefreshAccess;
      AdvGDrive1.DoAuth;
    end
    else
    begin
      EnableControls;
      ShowFiles();
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm2.btnLoadGridClick(Sender: TObject);
begin
  AdvStringGrid1.Clear;
  AdvStringGrid1.SaveFixedCells := AdvGSheets1.ImportFixedCells;
  AdvStringGrid1.Delimiter := #0;
  AdvStringGrid1.LoadFromCSV('.\cars.csv');
end;

procedure TForm2.btnRemoveAccessClick(Sender: TObject);
begin
  AdvGDrive1.ClearTokens;
  DisableControls;
end;

procedure TForm2.btnExportGridClick(Sender: TObject);
begin
  DisableControls;
  AdvGSheets1.WorkSheetTitle := txtFileName.Text;
  AdvGSheets1.ExportGrid;
  EnableControls;
end;

procedure TForm2.DisableControls;
begin
  lblWorking.Caption := 'Working...';
  btnShowWorksheet.Enabled := False;
  btnLoadGrid.Enabled := False;
  btnExportGrid.Enabled := False;
  AdvStringGrid1.Enabled := False;
  txtFileName.Enabled := False;
  btnUploadFile.Enabled := False;
  lblWorking.Visible := True;
end;

procedure TForm2.EnableControls;
begin
  btnShowWorksheet.Enabled := True;
  btnLoadGrid.Enabled := True;
  btnExportGrid.Enabled := True;
  AdvStringGrid1.Enabled := True;
  txtFileName.Enabled := True;
  btnUploadFile.Enabled := True;
  lblWorking.Visible := False;
  lblWorking.Caption := '';
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  DisableControls;
  lblWorking.Caption := 'Not Connected';
end;

procedure TForm2.ShowFiles;
begin
  treeFiles.Items.Clear;
  AdvGDrive1.GetDriveInfo;
  AdvGDrive1.FillTreeView(treeFiles);
end;

procedure TForm2.treeFilesChange(Sender: TObject; Node: TTreeNode);
var
  Ci: TCloudItem;
  Id, MIME: string;
begin
  if Assigned(treeFiles.Selected) then
  begin
    Ci := TCloudItem(treeFiles.Selected.Data);

    Id := ci.FileName;
    MIME := 'Google Drive File/Folder';

    txtWorksheetId.Enabled := False;
    btnShowWorksheet.Enabled := False;
    btnExportGrid.Enabled := False;

    if (ci is TGDriveItem) then
    begin
      Id := (ci as TGDriveItem).ID;
      MIME := (ci as TGDriveItem).MimeType;
      if Pos('sheet', MIME) > 0 then
      begin
        txtWorksheetId.Enabled := True;
        btnShowWorksheet.Enabled := True;
        btnExportGrid.Enabled := True;
      end;
    end;

    lblType.Caption := MIME;
    txtWorksheetId.Text := Id;
    btnShowWorksheetClick(Self);
  end;
end;

end.

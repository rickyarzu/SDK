unit uframeBackupSelectDirectories;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, CurvyControls, Vcl.ComCtrls, Data.DB, Janua.VCL.Backup,
  Vcl.Grids, Vcl.DBGrids, CRGrid, EnhCRDBGrid, Vcl.ImgList, Janua.VCL.Dialogs,
  Vcl.DBCGrids, Vcl.DBCtrls, JvExControls, JvSpeedButton;

type
  TframeBackupSelectDirectories = class(TFrame)
    Panel1: TPanel;
    btnSelezionaCartella: TBitBtn;
    CurvyEdit1: TCurvyEdit;
    TreeView1: TTreeView;
    dsLocalFileLog: TDataSource;
    dsRemoteFiles: TDataSource;
    JanuaVclBackupTreeMaker1: TJanuaVclBackupTreeMaker;
    DBGrid2: TEnhCRDBGrid;
    ImageList1: TImageList;
    JanuaDialog1: TJanuaDialog;
    DBCtrlGrid1: TDBCtrlGrid;
    dsLocalDirectories: TDataSource;
    dbtDirectoryName: TDBText;
    procedure TreeView1Click(Sender: TObject);
    procedure btnSelezionaCartellaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses udmErgoCloudClient;

procedure TframeBackupSelectDirectories.btnSelezionaCartellaClick(Sender: TObject);
begin
   if not assigned(dmErgoCloudClient) then
      Application.CreateForm(TdmErgoCloudClient, dmErgoCloudClient);
   Screen.Cursor := crHourGlass;
   try
    JanuaVclBackupTreeMaker1.FirstBackup;
    self.CurvyEdit1.Text := JanuaVclBackupTreeMaker1.DirectoryName;
   finally
     Screen.Cursor := crArrow;
   end;

   if self.JanuaDialog1.JMessageDlg('Attenzione Volete registare la cartella sul server ?') then
   try
     Screen.Cursor := crHourGlass;
     JanuaVclBackupTreeMaker1.GoStore;
   finally
     Screen.Cursor := crArrow;
   end;
end;

procedure TframeBackupSelectDirectories.TreeView1Click(Sender: TObject);
begin
   self.JanuaVclBackupTreeMaker1.FilterNode(self.TreeView1.Selected);
end;

end.

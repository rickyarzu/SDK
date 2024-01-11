unit Janua.Test.VCL.frmDatasetOrmSync;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls, VCL.ComCtrls, Data.DB, VCL.Grids,
  VCL.DBGrids, CRGrid,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf, uJanuaVCLFrame,
  // Interposers
  Janua.VCL.EnhCRDBGrid, Janua.VCL.EnhDBGrid, Janua.VCL.Interposers, Janua.TMS.Interposers,
  Janua.VCL.FormController, Janua.Components.Grids, Janua.Test.VCL.frameVclOrmDatasetSync,
  Janua.Test.VCL.frameOrmDB;

type
  // TJanuaVCLFormModel = class(TForm, IJanuaForm, IJanuaContainer, IJanuaControl, IJanuaBindable)
  TfrmTestVCLDatasetOrmSync = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    pgcTestOrmDatasetMVVM: TPageControl;
    tabOrmDatasetSync: TTabSheet;
    frameTestOrmDB1: TframeTestOrmDB;
    tabOrmMVVMTest: TTabSheet;
    frameVclTestOrmDatasetSync1: TframeVclTestOrmDatasetSync;
    tabTestNavigator: TTabSheet;
    pnlTestMVVMNavigator: TPanel;
    btnStartTestMVVMNavigator: TButton;
    tsTestSearchGrids: TTabSheet;
    pgTestGrids: TPageControl;
    tsStandardGrid: TTabSheet;
    tsCRDBGrid: TTabSheet;
    pnlTestGrids: TPanel;
    btnStartTests: TButton;
    dbgrdTestStandard: TDBGrid;
    crdbgrdTestGrid: TCRDBGrid;
    procedure frameTestOrmDB1btnStartOrmdbTestClick(Sender: TObject);
    procedure frameTestOrmDB1btnSetupRecordClick(Sender: TObject);
    procedure frameTestOrmDB1btnSaveClick(Sender: TObject);
    procedure btnStartTestMVVMNavigatorClick(Sender: TObject);
    procedure frameVclTestOrmDatasetSync1btnTestSubModelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestVCLDatasetOrmSync: TfrmTestVCLDatasetOrmSync;

implementation

{$R *.dfm}

uses ufrmVCLVMTestNavigator;

procedure TfrmTestVCLDatasetOrmSync.btnStartTestMVVMNavigatorClick(Sender: TObject);
var
  lfrmVCLVMTestNavigator: TfrmVCLVMTestNavigator;
begin
  lfrmVCLVMTestNavigator := ufrmVCLVMTestNavigator.TfrmVCLVMTestNavigator.Create(self);
  lfrmVCLVMTestNavigator.Parent := tabTestNavigator;
  lfrmVCLVMTestNavigator.BorderStyle := bsNone;
  lfrmVCLVMTestNavigator.BorderIcons := [];
  lfrmVCLVMTestNavigator.Align := alClient;
  lfrmVCLVMTestNavigator.Visible := True;
  lfrmVCLVMTestNavigator.Activate;
end;

procedure TfrmTestVCLDatasetOrmSync.frameTestOrmDB1btnSaveClick(Sender: TObject);
begin
  frameTestOrmDB1.btnSaveClick(Sender);
end;

procedure TfrmTestVCLDatasetOrmSync.frameTestOrmDB1btnSetupRecordClick(Sender: TObject);
begin
  frameTestOrmDB1.btnSetupRecordClick(Sender);
end;

procedure TfrmTestVCLDatasetOrmSync.frameTestOrmDB1btnStartOrmdbTestClick(Sender: TObject);
begin
  frameTestOrmDB1.btnStartOrmdbTestClick(Sender);

end;

procedure TfrmTestVCLDatasetOrmSync.frameVclTestOrmDatasetSync1btnTestSubModelClick(Sender: TObject);
begin
  inherited;
  frameVclTestOrmDatasetSync1.btnTestSubModelClick(Sender);
end;

end.

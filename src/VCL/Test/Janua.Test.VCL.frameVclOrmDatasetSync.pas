unit Janua.Test.VCL.frameVclOrmDatasetSync;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, VCL.wwbutton, VCL.wwdbigrd, VCL.wwdbgrid,
  System.Classes, VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.Samples.Spin, MoneyEdit,
  VCL.StdCtrls,
  Data.DB, VCL.Grids, VCL.DBGrids, Janua.VCL.EnhDBGrid, VCL.ToolWin, VCL.ComCtrls, System.ImageList,
  VCL.ImgList,
  SVGIconImageListBase, SVGIconImageList, System.Actions, VCL.ActnList, VCL.ExtCtrls, VCL.DBCtrls,
  JvExStdCtrls, JvEdit,
  JvValidateEdit,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLFrame, Janua.Core.Types,
  Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types, Janua.Orm.Test.Intf,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Test.ViewModel.Intf,
  // Interposers
  Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.VCL.ViewModel,
  Janua.Core.Classes, Janua.VCL.Actions, Janua.VCL.FormController,
  Janua.Components.Grids,
  Janua.Test.VCL.frameRecordSetOrmSyncNavigator, Janua.VCL.MVVM.frameNavigator, VCL.Mask, Janua.Core.Commons;

type
  TframeVclTestOrmDatasetSync = class(TJanuaVCLFrameModel)
    btnStartTest: TButton;
    grdMaster: TwwDBGrid;
    grdDetail: TwwDBGrid;
    tlbMaster: TToolBar;
    JanuaMasterActionViewController: TJanuaActionViewController;
    JanuaVCLMVVMSearchTextBuilder1: TJanuaVCLMVVMSearchTextBuilder;
    JanuaVCLMVVMSearchParamsBuilder1: TJanuaVCLMVVMSearchParamsBuilder;
    DataSource1: TDataSource;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    SVGIconImageList1: TSVGIconImageList;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    grdDetail2: TwwDBGrid;
    tlbSubModel: TToolBar;
    btnTestSubModel: TButton;
    edTextSubModel: TEdit;
    DetailActionViewController1: TJanuaActionViewController;
    JanuaDetailVCLMVVMSearchTextBuilder: TJanuaVCLMVVMSearchTextBuilder;
    dbnavDetail: TDBNavigator;
    JanuaMVVMMasterController: TJanuaMVVMFormController;
    DetailFormController: TJanuaMVVMFormController;
    MasterGridBuilder1: TJanuaMVVMGridBuilder;
    DetailGridBuilder1: TJanuaMVVMGridBuilder;
    grdDetailWW: TwwDBGrid;
    grdMasterIButton: TwwIButton;
    edtMasterStringField: TLabeledEdit;
    dtpMasterDate: TDateTimePicker;
    MoneyEdit1: TMoneyEdit;
    btnDeleteSubModels: TButton;
    pnlNavigatorTest: TPanel;
    seDetailIntField: TSpinEdit;
    lbMasterGUID: TLabel;
    lbDetailGUID: TLabel;
    edtDetailString: TLabeledEdit;
    btnSaveAll: TButton;
    chkMasterBoolean: TCheckBox;
    seIntegerEdit: TJvValidateEdit;
    procedure btnDeleteSubModelsClick(Sender: TObject);
    procedure btnSaveAllClick(Sender: TObject);
    procedure btnStartTestClick(Sender: TObject);
    procedure btnTestSubModelClick(Sender: TObject);
  private
    { Private declarations }
    [weak]
    FViewModel: IJanuaDBViewModel;
    [weak]
    MasterRecord: IJanuaTestNestedRecord;
    FTestViewModel: IJanuaTestDBViewModel;
    FSubViewModel: IJanuaDBViewModel;
    frameTestRecordSetOrmSyncNavigator: TframeTestRecordSetOrmSyncNavigator;
    procedure AssignMasterEditors;
    procedure SetSubViewModel(const Value: IJanuaDBViewModel);
  protected
    function GetViewModel: IJanuaDBViewModel;
    procedure SetViewModel(const Value: IJanuaDBViewModel);
  public
    { Public declarations }
    property ViewModel: IJanuaDBViewModel read GetViewModel write SetViewModel;
    property SubViewModel: IJanuaDBViewModel read FSubViewModel write SetSubViewModel;
  end;

implementation

uses
  Spring, Janua.VCL.Framework, Janua.Application.Framework, Janua.Core.Functions;

{$R *.dfm}

procedure TframeVclTestOrmDatasetSync.AssignMasterEditors;
begin

end;

procedure TframeVclTestOrmDatasetSync.btnDeleteSubModelsClick(Sender: TObject);
begin
  if Assigned(FTestViewModel) then
    try
      // At this point Detail Form Controller should deactivate itself and turn grid, datasource, and so on ....
      DetailFormController.Active := False;
      DetailFormController.ViewModel := nil;

      // The Reference is set to 'nil' this should trigger a set of procedures to turn off the Frame Toolbar/Grid
      frameTestRecordSetOrmSyncNavigator.TestRSDetailViewModel := nil;

      // At the End the Master ViewModel must Remove its subModels based on its Record (that needs to be 'updated')
      FTestViewModel.RemoveSubModels;

      btnDeleteSubModels.Enabled := False;
      btnTestSubModel.Enabled := True;
    except
      on e: Exception do
        RaiseException('btnTestSubModelClick', e, self);
    end;
end;

procedure TframeVclTestOrmDatasetSync.btnSaveAllClick(Sender: TObject);
begin
  inherited;
  FTestViewModel.PostRecord;
end;

procedure TframeVclTestOrmDatasetSync.btnStartTestClick(Sender: TObject);
var
  lViewModel: IJanuaDBViewModel;
begin
  inherited;
  { TODO : Make a Test focused on IJanuaTestViewModel instead of IJanuaTestDBViewModel }
  try
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaTestDBViewModel, FTestViewModel) then
      raise Exception.Create(self.ClassName + '.FormCreate IJanuaWHReceiptsViewModel not set');
    // function Supports(const Instance: IInterface; const IID: TGUID; out Intf): Boolean;
    if not Supports(FTestViewModel, IJanuaDBViewModel, lViewModel) then
      raise Exception.Create
        ('TfrmVCLTestViewModel.FormCreate FDocumentsViewModel no support IJanuaDBViewModel');
    ViewModel := lViewModel;
    { Master Record is used just as a Sample to better Manage The Edit Demo }
    MasterRecord := FTestViewModel.TestNestedRecord;
    btnTestSubModel.Enabled := True;

    // Master Binding
    {
      property TestInteger: IJanuaField read GetInteger write SetInteger;
      property TestString: IJanuaField read GetString write SetString;
      function GetDateTime: IJanuaField;
      property TestDouble: IJanuaField read GetDouble write SetDouble;
    }
    lbMasterGUID.Caption := FTestViewModel.TestNestedRecord.GUIDString;
    FTestViewModel.TestNestedRecord.Bind('GUIDString', lbMasterGUID, 'Caption', True);

    edtMasterStringField.Text := FTestViewModel.TestNestedRecord.TestString.AsString;
    FTestViewModel.TestNestedRecord.TestString.Bind('AsString', edtMasterStringField, 'Text');

    dtpMasterDate.Date := FTestViewModel.TestNestedRecord.TestDateTime.AsDateTime;
    FTestViewModel.TestNestedRecord.TestDateTime.Bind('AsDateTime', dtpMasterDate, 'Date');

    chkMasterBoolean.Checked := FTestViewModel.TestNestedRecord.TestBoolean.AsBoolean;
    FTestViewModel.TestNestedRecord.TestBoolean.Bind('AsBoolean', chkMasterBoolean, 'Checked');

    seIntegerEdit.Value := FTestViewModel.TestNestedRecord.TestInteger.AsInteger;
    FTestViewModel.TestNestedRecord.TestInteger.Bind('AsInteger', seIntegerEdit, 'Value');

  except
    on e: Exception do
      RaiseException('btnStartTestClick', e, self);
  end;
end;

procedure TframeVclTestOrmDatasetSync.btnTestSubModelClick(Sender: TObject);
var
  lSubModel: IJanuaTestDetailViewModel;
begin
  if Assigned(FTestViewModel) then
    try
      // At first the Master ViewModel must Generate its subModels based on its Record (that needs to be 'updated')
      FTestViewModel.GenerateSubModels;
      FTestViewModel.DetailViewModel1.Activate;
      DetailFormController.ViewModel := FTestViewModel.DetailViewModel1 as IJanuaViewModel;
      if not DetailFormController.Activate then
        JShowError('Form Controller Failed to Activate');
      frameTestRecordSetOrmSyncNavigator := TframeTestRecordSetOrmSyncNavigator.Create(self);
      frameTestRecordSetOrmSyncNavigator.Parent := pnlNavigatorTest;
      frameTestRecordSetOrmSyncNavigator.Align := alClient;
      frameTestRecordSetOrmSyncNavigator.Visible := True;
      frameTestRecordSetOrmSyncNavigator.TestRSDetailViewModel := FTestViewModel.DetailViewModel1;

      Guard.CheckNotNull(FTestViewModel.DetailViewModel1, 'FTestViewModel.DetailViewModel1');
      Guard.CheckNotNull(FTestViewModel.DetailViewModel1.RecordSet, 'FTestViewModel RecordSet');

      // Detail Binding
      lbDetailGUID.Caption := FTestViewModel.DetailViewModel1.RecordSet.GUIDString;
      FTestViewModel.DetailViewModel1.RecordSet.Bind('GUIDString', lbDetailGUID, 'Caption');

      FTestViewModel.DetailViewModel1.RecordSet.TestInteger.Bind('AsInteger', seDetailIntField, 'Value');
      // lbledtStringField
      FTestViewModel.DetailViewModel1.RecordSet.TestString.Bind('AsString', edtDetailString, 'Text');

      btnDeleteSubModels.Enabled := True;
      btnTestSubModel.Enabled := False;
      btnSaveAll.Enabled := True;
    except
      on e: Exception do
        RaiseException('btnTestSubModelClick', e, self);
    end;
end;

{ TframeVclTestOrmDatasetSync }

function TframeVclTestOrmDatasetSync.GetViewModel: IJanuaDBViewModel;
begin
  Result := FViewModel;
end;

procedure TframeVclTestOrmDatasetSync.SetSubViewModel(const Value: IJanuaDBViewModel);
begin
  FSubViewModel := Value;
end;

procedure TframeVclTestOrmDatasetSync.SetViewModel(const Value: IJanuaDBViewModel);
begin
  try
    FViewModel := Value;
    if Assigned(FViewModel) then
    begin
      writelog('ViewModel.Initialize');
      ViewModel.Activate;
      // pnlSearch.Images := TJanuaVCLApplication.FontVCLIcons24;
      writelog('JanuaVCLMVVMSearchTextBuilder1.MDViewModel');
      JanuaVCLMVVMSearchTextBuilder1.MDViewModel := FViewModel;
      // TJanuaApplicationFactory.RegisterClass(IJanuaTestViewModel, TTestViewModel);
      writelog('JanuaVCLMVVMSearchTextBuilder1.Activate');
      JanuaVCLMVVMSearchTextBuilder1.Activate;
      Guard.CheckNotNull(FViewModel.dsMaster, 'FViewModel.dsMaster');

      grdMaster.DataSource := FViewModel.dsMaster;

      Guard.CheckNotNull(FViewModel.dsMaster.DataSet, 'FViewModel.dsMaster.Dataset');
      // vTest1 := FViewModel.dsMaster.DataSet.RecordCount;
      JanuaMasterActionViewController.DataSource := FViewModel.dsMaster;
      writelog('JanuaActionList := FViewModel.MainActionList');
      JanuaMasterActionViewController.JanuaActionList := FViewModel.GetMainActionList;
      writelog('JanuaMasterActionViewController.Activate');
      JanuaMasterActionViewController.Activate;

      if not FViewModel.HasDetail then
        grdDetail.Visible := False
      else
      begin
        writelog('navDetail.DataSource := FViewModel.dsDetail');
        grdDetail.Visible := FViewModel.HasDetail;
        // FViewModel.Bind('HasDetail', grdDetail, 'Visible', True);
        // navDetail.DataSource := FViewModel.dsDetail;
        // vTest2 := FViewModel.dsMaster.DataSet.RecordCount;
        // vTestName2 := FViewModel.dsMaster.DataSet.Name;
        grdDetail.DataSource := FViewModel.dsDetail;
        // writelog('JanuaActionList := FViewModel.MainActionList');
        // JanuaDetailActionViewController.JanuaActionList := FViewModel.DetailActionList;
        // writelog('JanuaActionViewController1.Activate');
        // JanuaDetailActionViewController.Activate;

        grdDetail2.DataSource := FTestViewModel.dsDetail2;
      end;

    end;
  except
    on e: Exception do
      RaiseException('SetViewModel', e, self, self.LogString);
  end;
end;

end.

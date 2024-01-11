unit ufrmVCLViewModelNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.Buttons, Vcl.StdCtrls, Janua.Core.Classes, Janua.Vcl.Actions, Vcl.DBCtrls, Vcl.Menus,
  Vcl.ToolWin, Vcl.ComCtrls, Janua.Vcl.ViewModel, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Themes,

  System.ImageList, SVGIconImageListBase, SVGIconImageList,
  // TMS
  Lucombo, AdvSplitter,
  // DB Controls
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid,
  // VCL
  Vcl.wwbutton, Vcl.wwdbigrd, Vcl.wwdbgrid, Vcl.WinXPickers, Vcl.WinXCtrls,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  // Interposers
  Janua.Vcl.EnhCRDBGrid, Janua.Vcl.EnhDBGrid, Janua.Vcl.Interposers, Janua.TMS.Interposers,
  Janua.Vcl.FormController,
  Janua.Components.Grids, Janua.Core.Commons;

type
  // TJanuaVCLFormModel = class(TForm, IJanuaForm, IJanuaContainer, IJanuaControl, IJanuaBindable)
  TfrmVCLViewModelNavigator = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    pnlCommands: TPanel;
    pnlSearch: TPanel;
    JanuaMasterActionViewController: TJanuaActionViewController;
    JanuaVCLMVVMSearchParamsBuilder1: TJanuaVCLMVVMSearchParamsBuilder;
    JanuaVCLMVVMSearchTextBuilder1: TJanuaVCLMVVMSearchTextBuilder;
    JanuaDetailActionViewController: TJanuaActionViewController;
    MasterGridBuilder1: TJanuaMVVMGridBuilder;
    JanuaMVVMFormController1: TJanuaMVVMFormController;
    btnStartSearch: TButton;
    tlbMaster: TToolBar;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    pnlSearchParams: TPanel;
    DataSource1: TDataSource;
    pnlDetailBottom: TPanel;
    pnlDetail: TPanel;
    grdDetail: TwwDBGrid;
    pnlBottom: TPanel;
    Splitter1: TAdvSplitter;
    lbDetailRecordCount: TLabel;
    grdMaster: TwwDBGrid;
    tlbDetail: TToolBar;
    pnlSearchText: TPanel;
    lbSearchText: TLabel;
    edSearchText: TEdit;
    grdMasterIButton: TwwIButton;
    pnlDetailBottomToolBar: TPanel;
    DetailGridBuilder1: TJanuaMVVMGridBuilder;
    tmrOpenAll: TTimer;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure btnStartSearchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grdMasterDblClick(Sender: TObject);
    procedure tmrOpenAllTimer(Sender: TObject);
  strict protected
    { Private declarations }
  [weak]
    FViewModel: IJanuaDBViewModel;
    function InternalActivate: Boolean; override;
  protected
    function GetViewModel: IJanuaDBViewModel;
    procedure SetViewModel(const Value: IJanuaDBViewModel);
    procedure ActivateModel; virtual;
    procedure SetParams(const Value: TJanuaVariantArray); override;
  public
    constructor CreateWithParams(AOwner: TComponent; aParams: TJanuaVariantArray); overload; virtual;
  public
    { Public declarations }
    property ViewModel: IJanuaDBViewModel read GetViewModel write SetViewModel;
  end;

var
  frmVCLViewModelNavigator: TfrmVCLViewModelNavigator;

implementation

uses Spring, Janua.Application.Framework, Janua.Vcl.Framework, Janua.Core.Functions, Janua.Core.AsyncTask;

{$R *.dfm}

procedure TfrmVCLViewModelNavigator.FormDestroy(Sender: TObject);
begin
  if Assigned(FViewModel) and (TInterfacedObject(FViewModel.GetSelf).RefCount > 0) then
    TJanuaInterfacedObject(FViewModel.GetSelf).Release;
  FViewModel := nil;
end;

procedure TfrmVCLViewModelNavigator.FormCreate(Sender: TObject);
begin
  btnStartSearch.Images := TJanuaVCLApplication.FontVCLIcons32;
  btnStartSearch.ImageIndex := 8;
  btnStartSearch.Invalidate;
end;

procedure TfrmVCLViewModelNavigator.Action1Execute(Sender: TObject);
begin
  Action1.Checked := True;
  Action2.Checked := not Action1.Checked;
end;

procedure TfrmVCLViewModelNavigator.Action2Execute(Sender: TObject);
begin
  Action2.Checked := True;
  Action1.Checked := not Action2.Checked;
end;

procedure TfrmVCLViewModelNavigator.ActivateModel;
begin
  SetViewModel(nil);
end;

procedure TfrmVCLViewModelNavigator.btnStartSearchClick(Sender: TObject);
begin
  FViewModel.StartSearch;
end;

constructor TfrmVCLViewModelNavigator.CreateWithParams(AOwner: TComponent; aParams: TJanuaVariantArray);
begin
  Params := aParams;
  inherited Create(AOwner);
end;

procedure TfrmVCLViewModelNavigator.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FViewModel := nil;
end;

procedure TfrmVCLViewModelNavigator.FormShow(Sender: TObject);
begin
  { if not Active then
    Activate; }
  try
    pnlDetailBottom.Visible := DetailGridBuilder1.Enabled and FViewModel.HasDetail;
    // ------------- When Screen or Windows Size / heigth goes under 900px some Panels become invisible.
    if self.Height < 900 then
    begin
      pnlBottom.Visible := False;
      { grdDetail.Visible := False; }
      { pnlDetailBottom.Height := pnlBottom.Height + 2; }
      { pnlBottom.Align := alClient; }
    end
    else if Assigned(FViewModel) then
    begin
      { grdDetail.Visible := FViewModel.HasDetail; }
    end;
  except
    on e: Exception do
      RaiseException('FormShow', e, self);
  end;
end;

function TfrmVCLViewModelNavigator.GetViewModel: IJanuaDBViewModel;
begin
  Result := FViewModel
end;

procedure TfrmVCLViewModelNavigator.grdMasterDblClick(Sender: TObject);
begin
  if Assigned(FViewModel) then
    FViewModel.actionEdit.Execute;
end;

function TfrmVCLViewModelNavigator.InternalActivate: Boolean;
begin
  Result := Initialized;
  try
    if not Result then
    begin
      Result := inherited;
      if Result then
      begin
        if not Assigned(ViewModel) then
          ActivateModel;
        Result := Assigned(FViewModel);
        if (Length(Params) > 0) and Result then
          FViewModel.GroupID := Params[0];
      end;
    end;
  except
    on e: Exception do
      RaiseException('Activate', e, self);
  end;
end;

procedure TfrmVCLViewModelNavigator.SetParams(const Value: TJanuaVariantArray);
begin
  inherited;
  if Assigned(FViewModel) then
    FViewModel.Params := FParams;
end;

procedure TfrmVCLViewModelNavigator.SetViewModel(const Value: IJanuaDBViewModel);
begin
  try
    FViewModel := Value;
    if Assigned(FViewModel) then
    begin
      FViewModel.Params := FParams;
      grdDetail.Visible := DetailGridBuilder1.Enabled and FViewModel.HasDetail;
      JanuaMVVMFormController1.ViewModel := FViewModel as IJanuaViewModel;
      if not JanuaMVVMFormController1.Activate then
        JShowError('Form Controller Failed to Activate');
      Application.ProcessMessages;
      if Assigned(FViewModel) and not FViewModel.jdsMaster.Active then
        tmrOpenAll.Enabled := True;
    end;
  except
    On e: Exception do
      RaiseException('SetViewModel', e, self);
  end;
end;

procedure TfrmVCLViewModelNavigator.tmrOpenAllTimer(Sender: TObject);
begin
  tmrOpenAll.Enabled := False;
  if TJanuaApplication.UnitTesting then
  begin
    try
      grdMaster.DataSource := nil;
      if Assigned(FViewModel) and not FViewModel.jdsMaster.Active then
        FViewModel.OpenAll(False);
      lbDetailRecordCount.Caption := FViewModel.jdsMaster.RecordCount.ToString;
      grdMaster.DataSource := FViewModel.jdsMaster.DataSource;
    except
      on e: Exception do
        RaiseException('tmrOpenAllTimer', e, self)
    end;
  end
  else
    Async.Run<Integer>(
      function: Integer
      begin
        grdMaster.DataSource := nil;
        if Assigned(FViewModel) and not FViewModel.jdsMaster.Active then
          FViewModel.OpenAll(False);
        Result := FViewModel.jdsMaster.RecordCount;
      end,
      procedure(const aResult: Integer)
      begin
        lbDetailRecordCount.Caption := aResult.ToString;
        grdMaster.DataSource := FViewModel.jdsMaster.DataSource;
      end,
      procedure(const Ex: Exception)
      begin
        JShowError(Ex.Message);
      end);
end;

end.

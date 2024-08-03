unit Janua.UniGUI.BackofficeMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, System.Generics.Collections, System.ImageList,
  Controls, Forms, Data.DB, DBAccess, Uni,
  // VCL
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Menus,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniImageList, uniButton, uniBitBtn, uniSpeedButton, uniPanel, uniPageControl, uniTimer, uniDBGrid,
  uniLabel, uniImage, uniTreeView, uniBasicGrid, uniTreeMenu, UniFSConfirm, uniMainMenu, UniFSButton,
  // Januaproject
  Janua.Carservice.PgBooking, Janua.Carservice.dmPgService;

type
  TfrmUniGUICarServiceBackOfficeMain = class(TUniForm)
    UCPMain: TUniContainerPanel;
    UpnlButtons: TUniPanel;
    UPnlCenter: TUniPanel;
    PgcMain: TUniPageControl;
    untvmglstFA: TUniNativeImageList;
    untvmglstimgl20: TUniNativeImageList;
    unpnlA: TUniPanel;
    unpnlpnl5: TUniPanel;
    tvmSettings: TUniTreeMenu;
    Confirm: TUniFSConfirm;
    MenAcesso1: TUniMenuItems;
    ActSistema1: TUniMenuItem;
    itmBookingList: TUniMenuItem;
    itmNewBooking2: TUniMenuItem;
    itmSettings: TUniMenuItem;
    itmCompanyInfo: TUniMenuItem;
    itmUserData: TUniMenuItem;
    itmCustomersList: TUniMenuItem;
    itmInvoiceListing: TUniMenuItem;
    pgMainMenu: TUniTabSheet;
    imgl32: TUniNativeImageList;
    tabBookingList: TUniTabSheet;
    tabBalance: TUniTabSheet;
    tabCustomersList: TUniTabSheet;
    UniPanel1: TUniPanel;
    grdBookingList: TUniDBGrid;
    dsBookingList: TDataSource;
    UniPanel2: TUniPanel;
    dsCurrentAccount: TUniDataSource;
    UniDBGrid1: TUniDBGrid;
    cntMain: TUniContainerPanel;
    imgLogo: TUniImage;
    cntButtons: TUniContainerPanel;
    pnl02Payments: TUniContainerPanel;
    pnl01ServiceDrivers: TUniContainerPanel;
    btnDriversManagement: TUniFSButton;
    btnServiceManagement: TUniFSButton;
    btnBookingList: TUniFSButton;
    btnPayments: TUniFSButton;
    img64: TUniNativeImageList;
    UniTimer1: TUniTimer;
    pnlMenuPrincipal: TUniPanel;
    btnSair: TUniFSButton;
    UniFSButton2: TUniFSButton;
    UniPanel3: TUniPanel;
    UniDBGrid2: TUniDBGrid;
    dsUsers: TDataSource;
    UniDBGrid3: TUniDBGrid;
    dsUsersVehicles: TDataSource;
    btnEditBooking: TUniButton;
    btnEditCustomer: TUniButton;
    iclassfafausersariahiddentruei1: TUniMenuItem;
    iclassfafaidcardiGestioneDrivers1: TUniMenuItem;
    iclassfaregularfausertieiAmministratoriSoftware1: TUniMenuItem;
    pnl03MessagesSettings: TUniContainerPanel;
    btnSettings: TUniFSButton;
    btnMessages: TUniFSButton;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure tvmSettingsClick(Sender: TObject);
    procedure itmBookingListClick(Sender: TObject);
    procedure itmInvoiceListingClick(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure itmCustomersListClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnEditCustomerClick(Sender: TObject);
  private
    { Private declarations }
    FCarServiceBookingDM: TdmPgCarServiceBookingStorage;
    FCount: Integer;
    FdmPgCarServiceMain: TdmPgCarServiceMain;
    procedure ActivateDM;
  public
    { Public declarations }
    procedure FrameClose(Sender: TObject);
    procedure NewBooking(Sender: TObject);
  end;

function frmUniGUICarServiceBackOfficeMain: TfrmUniGUICarServiceBackOfficeMain;

implementation

{$R *.dfm}

uses
  uniGUIVars, Janua.UniGUI.MainModule, uniGUIApplication, Janua.Anagraph.UniGUI.dlgSimpleAnagraph;

function frmUniGUICarServiceBackOfficeMain: TfrmUniGUICarServiceBackOfficeMain;
begin
  Result := TfrmUniGUICarServiceBackOfficeMain
    (UniMainModule.GetFormInstance(TfrmUniGUICarServiceBackOfficeMain));
end;

procedure TfrmUniGUICarServiceBackOfficeMain.ActivateDM;
begin
  // FdmPgCarServiceMain.UserProfile := UniMainModule.UserSessionVM.CurrentRecord.UserProfile;
  FdmPgCarServiceMain.OfficeID := UniMainModule.UserSessionVM.CurrentRecord.UserProfile.AnagraphID.asinteger;
  FdmPgCarServiceMain.UserSession := UniMainModule.UserSessionVM.CurrentRecord;
  FdmPgCarServiceMain.qryBookingList.Open;
  if FdmPgCarServiceMain.qryBookingList.RecordCount > 0 then
    dsBookingList.Dataset := FdmPgCarServiceMain.qryBookingList;
  FdmPgCarServiceMain.qryCurrentAccount.Open;
  if FdmPgCarServiceMain.qryCurrentAccount.RecordCount > 0 then
    dsCurrentAccount.Dataset := FdmPgCarServiceMain.qryCurrentAccount;
  { FdmPgCarServiceMain.qryUsers.Open;
    dsUsers.Dataset := FdmPgCarServiceMain.qryUsers;
    dsUsersVehicles.Dataset := FdmPgCarServiceMain.qryUsersVehicles; }
end;

procedure TfrmUniGUICarServiceBackOfficeMain.btnEditCustomerClick(Sender: TObject);
var
  lDialog: TdlgUniGUISimpleAnagraph;
begin
  lDialog := TdlgUniGUISimpleAnagraph.Create(UniApplication);
  lDialog.Anagraph := nil; { FBranchesList.AnagraphView };
  lDialog.ShowModal(
    procedure(Sender: TComponent; AResult: Integer)
    begin
      if (AResult = mrOK) then
      begin
        { FBranchesList.Post;
          if Assigned(FInsertBranchProc) then
          InsertBranchProc(Self)
          else if Assigned(FBranchesList.CurrentRecord.DBDataset) then
          FBranchesList.SaveToDataset;
          AssignBranches(FBranchesList); }
      end
      else
        { FBranchesList.CancelRecord; }
    end)

end;

procedure TfrmUniGUICarServiceBackOfficeMain.btnSairClick(Sender: TObject);
begin
  Confirm.Question('Attenzione', 'Siete sicuro di voler uscire dall''applicazione?', 'far fa-question-circle',
    TTypeColor.Red, TTheme.modern,
    procedure(Button: TConfirmButton)
    begin
      if Button = Yes then
      begin
        UniApplication.Restart;
        // Confirm.Alert('Congratulations !!!', ' ', 'far fa-thumbs-up', TTypeColor.green, TTheme.modern);
      end;
      if Button = No then
        Confirm.Alert('Annullato', ' ', 'fas fa-exclamation-circle', TTypeColor.orange, TTheme.modern);
    end);
end;

procedure TfrmUniGUICarServiceBackOfficeMain.FrameClose(Sender: TObject);
begin
  // Close and destroy the Container Tabsheet

end;

procedure TfrmUniGUICarServiceBackOfficeMain.itmBookingListClick(Sender: TObject);
begin
  PgcMain.ActivePage := tabBookingList;
end;

procedure TfrmUniGUICarServiceBackOfficeMain.itmCustomersListClick(Sender: TObject);
begin
  PgcMain.ActivePage := tabCustomersList
end;

procedure TfrmUniGUICarServiceBackOfficeMain.itmInvoiceListingClick(Sender: TObject);
begin
  PgcMain.ActivePage := tabBalance
end;

procedure TfrmUniGUICarServiceBackOfficeMain.UniFormCreate(Sender: TObject);
begin
  FdmPgCarServiceMain := TdmPgCarServiceMain.Create(self);
  PgcMain.ActivePage := pgMainMenu;
end;

procedure TfrmUniGUICarServiceBackOfficeMain.UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
begin
  if AHeight < self.Height then
  begin
    Top := 1;
    Left := 1;
  end;
  Height := AHeight;
  Width := AWidth;
end;

procedure TfrmUniGUICarServiceBackOfficeMain.UniTimer1Timer(Sender: TObject);
begin
  UniTimer1.Enabled := False;
  ActivateDM;
end;

procedure TfrmUniGUICarServiceBackOfficeMain.tvmSettingsClick(Sender: TObject);
var
  Nd: TUniTreeNode;
  lItem: TUniMenuItem;
  vI: Integer;
  vII: Integer;
begin
  Nd := tvmSettings.Selected;
  if Assigned(Nd) then
  begin

    if not(Nd.Enabled) then
      Exit;

    if not(Nd.HasChildren) then
    begin
      lItem := MenAcesso1.Items.Find(Nd.Text, True);
      if Assigned(lItem) and Assigned(lItem.OnClick) then
        lItem.OnClick(self);
    end;
  end;

end;

procedure TfrmUniGUICarServiceBackOfficeMain.NewBooking(Sender: TObject);
begin

end;

initialization

RegisterAppFormClass(TfrmUniGUICarServiceBackOfficeMain);

end.

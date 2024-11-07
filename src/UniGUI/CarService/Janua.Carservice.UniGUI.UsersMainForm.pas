unit Janua.Carservice.UniGUI.UsersMainForm;

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
  Janua.Carservice.PgBooking, Janua.Carservice.UniGUI.frameCarBooking, Janua.Carservice.dmPgService;

type
  TfrmUNIMainForm = class(TUniForm)
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
    itmNewBooking: TUniMenuItem;
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
    UniContainerPanel3: TUniContainerPanel;
    UniContainerPanel1: TUniContainerPanel;
    spbNewBooking: TUniFSButton;
    UniFSButton1: TUniFSButton;
    btnBookingList: TUniFSButton;
    btnTransactions: TUniFSButton;
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
    procedure UniFormCreate(Sender: TObject);
    procedure spbNewBookingClick(Sender: TObject);
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

function frmUNIMainForm: TfrmUNIMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, Janua.UniGUI.MainModule, uniGUIApplication, Janua.Carservice.UniGUI.dlgBookingWizard,
  Janua.Carservice.UniGUI.frameUserMenu, Janua.Anagraph.UniGUI.dlgSimpleAnagraph,
  Janua.Carservice.UniGUI.dlgBookingFrameWizard;

function frmUNIMainForm: TfrmUNIMainForm;
begin
  Result := TfrmUNIMainForm(UniMainModule.GetFormInstance(TfrmUNIMainForm));
end;

procedure TfrmUNIMainForm.ActivateDM;
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
  FdmPgCarServiceMain.qryUsers.Open;
  dsUsers.Dataset := FdmPgCarServiceMain.qryUsers;
  dsUsersVehicles.Dataset := FdmPgCarServiceMain.qryUsersVehicles;
end;

procedure TfrmUNIMainForm.btnEditCustomerClick(Sender: TObject);
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

procedure TfrmUNIMainForm.btnSairClick(Sender: TObject);
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

procedure TfrmUNIMainForm.FrameClose(Sender: TObject);
begin
  // Close and destroy the Container Tabsheet

end;

procedure TfrmUNIMainForm.itmBookingListClick(Sender: TObject);
begin
  PgcMain.ActivePage := tabBookingList;
end;

procedure TfrmUNIMainForm.itmCustomersListClick(Sender: TObject);
begin
  PgcMain.ActivePage := tabCustomersList
end;

procedure TfrmUNIMainForm.itmInvoiceListingClick(Sender: TObject);
begin
  PgcMain.ActivePage := tabBalance
end;

procedure TfrmUNIMainForm.UniFormCreate(Sender: TObject);
var
  Ts: TUniTabSheet;
  Fra: TframeCarServiceUniGUIUserMenu;
begin
  {
    Ts := TUniTabSheet.Create(Self);
    Ts.PageControl := PgcMain;
    Ts.AlignmentControl := uniAlignmentClient;
    Ts.Layout := 'fit';

    Ts.Closable := True;
    Inc(FCount);
    Ts.Caption := ' Prenotazione ' + FCount.ToString;

    Fra := TframeCarServiceUniGUIUserMenu.Create(Self);
    Fra.Align := alClient;

    Fra.Parent := Ts;
    Ts.Data := Fra;
  }
  FdmPgCarServiceMain := TdmPgCarServiceMain.Create(self);
  PgcMain.ActivePage := pgMainMenu;
end;

procedure TfrmUNIMainForm.UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
begin
  if AHeight < self.Height then
  begin
    Top := 1;
    Left := 1;
  end;
  Height := AHeight;
  Width := AWidth;
end;

procedure TfrmUNIMainForm.UniTimer1Timer(Sender: TObject);
begin
  UniTimer1.Enabled := False;
  ActivateDM;
end;

procedure TfrmUNIMainForm.tvmSettingsClick(Sender: TObject);
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

procedure TfrmUNIMainForm.NewBooking(Sender: TObject);
begin

end;

procedure TfrmUNIMainForm.spbNewBookingClick(Sender: TObject);
var
  lDlgBooking: TdlgUniGUIBookingWizard; { TdlgUniGUIBookingFrameWizard }
begin
  FCarServiceBookingDM := TdmPgCarServiceBookingStorage.Create(self);
  FCarServiceBookingDM.UserProfile := UniMainModule.UserSessionVM.CurrentRecord.UserProfile;
  FCarServiceBookingDM.OfficeID := UniMainModule.UserSessionVM.CurrentRecord.UserProfile.AnagraphID.asinteger;
  FCarServiceBookingDM.UserSession := UniMainModule.UserSessionVM.CurrentRecord;
  lDlgBooking := TdlgUniGUIBookingWizard.Create(UniApplication);
  FCarServiceBookingDM.AppendRecord;
  lDlgBooking.dmPgCarServiceBooking := FCarServiceBookingDM;

  lDlgBooking.ShowModal(
    procedure(Sender: TComponent; AResult: Integer)
    var
      Ts: TUniTabSheet;
      Fra: TframeCarServiceUniGUIBooking;
    begin
      if AResult = mrOK then
      begin

      end;
      (*
        if AResult = mrOK then
        begin
        Ts := TUniTabSheet.Create(self);
        Ts.PageControl := PgcMain;
        Ts.AlignmentControl := uniAlignmentClient;
        Ts.Layout := 'fit';

        Ts.Closable := True;
        // TS.LayoutConfig.Width := '100%';
        // TS.LayoutConfig.Height := '100%';
        // Ts.OnClose := TabSheetClose;
        // Ts.Tag := NativeInt(Nd);
        Inc(FCount);
        Ts.Caption := ' Prenotazione ' + FCount.ToString;
        // Ts.ImageIndex := Nd.ImageIndex;
        // FClassName := 'TUni' + FileNames.Values[Nd.Text];
        // FrC := TUniFrameClass(FindClass(FClassName));

        Fra := TframeCarServiceUniGUIBooking.CreateWithStorage(self, FCarServiceBookingDM);
        Fra.Align := alClient;
        // Ts.LayoutConfig.Width := '100%';
        // Ts.LayoutConfig.Height := '100%';
        Fra.Parent := Ts;
        Fra.BookingState := fcsEdit;
        Fra.LoadBooking;
        Ts.Data := Fra;
        end;
      *)
    end);

end;

initialization

RegisterAppFormClass(TfrmUNIMainForm);

end.

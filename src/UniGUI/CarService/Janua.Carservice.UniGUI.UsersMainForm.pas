unit Janua.Carservice.UniGUI.UsersMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, System.Generics.Collections, System.ImageList,
  Controls, Forms,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses,
  uniImageList, uniButton, uniBitBtn, uniSpeedButton, uniPanel, uniPageControl,
  // Januaproject
  Janua.Carservice.PgBooking, Janua.Carservice.UniGUI.frameCarBooking, uniLabel, uniImage, uniTreeView,
  uniTreeMenu, UniFSConfirm, Vcl.Menus, uniMainMenu, UniFSButton, Janua.Carservice.dmPgService, uniBasicGrid,
  uniDBGrid, Vcl.ExtCtrls, Data.DB, DBAccess, Uni;

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
    spbNewBooking: TUniFSButton;
    imgl32: TUniNativeImageList;
    tabBookingList: TUniTabSheet;
    tabBalance: TUniTabSheet;
    tabCustomersList: TUniTabSheet;
    UniPanel1: TUniPanel;
    grdBookingList: TUniDBGrid;
    Timer1: TTimer;
    dsBookingList: TDataSource;
    UniPanel2: TUniPanel;
    dsCurrentAccount: TUniDataSource;
    UniDBGrid1: TUniDBGrid;
    procedure UniFormCreate(Sender: TObject);
    procedure spbNewBookingClick(Sender: TObject);
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure tvmSettingsClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure itmBookingListClick(Sender: TObject);
    procedure itmInvoiceListingClick(Sender: TObject);
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
  Janua.Carservice.UniGUI.frameUserMenu;

function frmUNIMainForm: TfrmUNIMainForm;
begin
  Result := TfrmUNIMainForm(UniMainModule.GetFormInstance(TfrmUNIMainForm));
end;

procedure TfrmUNIMainForm.ActivateDM;
begin
  FdmPgCarServiceMain := TdmPgCarServiceMain.Create(self);
  // FdmPgCarServiceMain.UserProfile := UniMainModule.UserSessionVM.CurrentRecord.UserProfile;
  FdmPgCarServiceMain.OfficeID := UniMainModule.UserSessionVM.CurrentRecord.UserProfile.AnagraphID.asinteger;
  FdmPgCarServiceMain.UserSession := UniMainModule.UserSessionVM.CurrentRecord;
  FdmPgCarServiceMain.qryBookingList.Open;
  if FdmPgCarServiceMain.qryBookingList.RecordCount > 0 then
    dsBookingList.Dataset := FdmPgCarServiceMain.qryBookingList;
  FdmPgCarServiceMain.qryCurrentAccount.Open;
  if FdmPgCarServiceMain.qryCurrentAccount.RecordCount > 0 then
    dsCurrentAccount.Dataset := FdmPgCarServiceMain.qryCurrentAccount;
end;

procedure TfrmUNIMainForm.FrameClose(Sender: TObject);
begin
  // Close and destroy the Container Tabsheet

end;

procedure TfrmUNIMainForm.itmBookingListClick(Sender: TObject);
begin
  self.PgcMain.ActivePage := tabBookingList;
end;

procedure TfrmUNIMainForm.itmInvoiceListingClick(Sender: TObject);
begin
  self.PgcMain.ActivePage := tabBalance
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

  ActivateDM;

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
  lDlgBooking: TdlgUniGUIBookingWizard;
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

procedure TfrmUNIMainForm.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

initialization

RegisterAppFormClass(TfrmUNIMainForm);

end.

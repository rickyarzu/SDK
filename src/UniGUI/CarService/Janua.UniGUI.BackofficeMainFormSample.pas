unit Janua.UniGUI.BackofficeMainFormSample;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniBitBtn, uniColorButton, uniGUIBaseClasses,
  uniPanel, uniLabel, uniImageList, uniImage, uniTimer, DBAccess, Uni, Data.DB, Vcl.Menus, uniMainMenu,
  UniFSConfirm, uniBasicGrid, uniDBGrid, UniFSButton, Vcl.Imaging.pngimage, uniPageControl, uniTreeView,
  uniTreeMenu;

type
  TfrmUniGUIMainBackofficeSample = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    ulbAnagraph: TUniLabel;
    ulbBookings: TUniLabel;
    ulbSettings: TUniLabel;
    ulbDrivers: TUniLabel;
    imgCustomers1: TUniImage;
    imgBookings: TUniImage;
    imgDrivers: TUniImage;
    imgSettings: TUniImage;
    imgInvoices: TUniImage;
    ulbInvoices: TUniLabel;
    unmglst1: TUniImageList;
    UCPMain: TUniContainerPanel;
    UpnlButtons: TUniPanel;
    unpnlA: TUniPanel;
    unpnlpnl5: TUniPanel;
    tvmSettings: TUniTreeMenu;
    UPnlCenter: TUniPanel;
    PgcMain: TUniPageControl;
    pgMainMenu: TUniTabSheet;
    cntMain: TUniContainerPanel;
    imgLogo: TUniImage;
    cntButtons: TUniContainerPanel;
    cntDrivers: TUniContainerPanel;
    btnDriversList: TUniFSButton;
    btnInvoices: TUniFSButton;
    cntBookingList: TUniContainerPanel;
    btnBookingLists: TUniFSButton;
    btnServiceCustomers: TUniFSButton;
    tabBookingList: TUniTabSheet;
    UniPanel1: TUniPanel;
    btnEditBooking: TUniButton;
    grdBookingList: TUniDBGrid;
    tabBalance: TUniTabSheet;
    UniPanel2: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    tabCustomersList: TUniTabSheet;
    UniPanel3: TUniPanel;
    btnEditCustomer: TUniButton;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    pnlMenuPrincipal: TUniPanel;
    btnSair: TUniFSButton;
    UniFSButton2: TUniFSButton;
    untvmglstFA: TUniNativeImageList;
    untvmglstimgl20: TUniNativeImageList;
    Confirm: TUniFSConfirm;
    MenAcesso1: TUniMenuItems;
    itmNewBooking: TUniMenuItem;
    ActSistema1: TUniMenuItem;
    itmBookingList: TUniMenuItem;
    itmNewBooking2: TUniMenuItem;
    itmSettings: TUniMenuItem;
    itmCompanyInfo: TUniMenuItem;
    itmUserData: TUniMenuItem;
    itmCustomersList: TUniMenuItem;
    itmInvoiceListing: TUniMenuItem;
    imgl32: TUniNativeImageList;
    dsBookingList: TDataSource;
    dsCurrentAccount: TUniDataSource;
    img64: TUniNativeImageList;
    UniTimer1: TUniTimer;
    dsUsers: TDataSource;
    dsUsersVehicles: TDataSource;
    cntSettings: TUniContainerPanel;
    btnSettings: TUniFSButton;
    btnMessages: TUniFSButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmUniGUIMainBackofficeSample: TfrmUniGUIMainBackofficeSample;

implementation

{$R *.dfm}

uses
  uniGUIVars, Janua.UniGUI.MainModule, uniGUIApplication;

function frmUniGUIMainBackofficeSample: TfrmUniGUIMainBackofficeSample;
begin
  Result := TfrmUniGUIMainBackofficeSample(UniMainModule.GetFormInstance(TfrmUniGUIMainBackofficeSample));
end;

{initialization
  RegisterAppFormClass(TfrmUniGUIMainBackoffice);}

end.

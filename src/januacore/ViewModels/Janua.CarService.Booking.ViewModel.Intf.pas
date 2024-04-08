unit Janua.CarService.Booking.ViewModel.Intf;

interface

uses System.SysUtils, Data.DB,
  // Janua Framework
  Janua.Orm.Intf, Janua.ViewModels.Intf, Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf,
  // Orm
  JOrm.System.Intf, JOrm.CarService.Booking.Intf,
  // Framework
  Janua.Search.ViewModels.Engines.Intf, Janua.Documents.ViewModel.Intf;


type
  IJanuaCarServiceBookingDataModule = interface(IJanuaDataModuleContainer)
    ['{9C16815F-9164-4899-9531-F9A31C333F8D}']
    function GetjdsBooking: IJanuaDBDataset;
    property jdsBooking: IJanuaDBDataset read GetjdsBooking;

    function GetjdsPickup: IJanuaDBDataset;
    property jdsPickup: IJanuaDBDataset read GetjdsPickup;

    function GetjdsDelivery: IJanuaDBDataset;
    property jdsDelivery: IJanuaDBDataset read GetjdsDelivery;
  end;

  IJanuaCarServiceBookingBaseModel = interface(IJanuaModel)
    ['{755B1AD2-E103-4ABA-900B-F61C99C6A3FD}']
    // Procedures
    procedure AppendRecord;
    procedure PostRecord;
    procedure SearchTimetable;
    // Orm Booking
    function GetBookingRecord: IBookingHeadView;
    function GetUserProfile: IUserProfile;
    function GetUsersession: IUserSession;

    procedure SetUserProfile(const Value: IUserProfile);
    procedure SetUsersession(const Value: IUserSession);
    procedure SetBookingRecord(const Value: IBookingHeadView);

    property UserProfile: IUserProfile read GetUserProfile write SetUserProfile;
    property UserSession: IUserSession read GetUsersession write SetUsersession;
    property BookingRecord: IBookingHeadView read GetBookingRecord write SetBookingRecord;
    // Getters Setters

    function GetOfficeID: Integer;
    function GetBranchID: Integer;
    function GetCustomerID: Integer;
    function GetGUID: TGUID;
    function GetFromBranch: Boolean;
    function GetDeliveryDate: TDate;
    function GetPickupDate: TDate;

    procedure SetGUID(const Value: TGUID);
    procedure SetBranchID(const Value: Integer);
    procedure SetOfficeID(const Value: Integer);
    procedure SetCustomerID(const Value: Integer);
    procedure SetFromBranch(const Value: Boolean);
    procedure SetDeliveryDate(const Value: TDate);
    procedure SetPickupDate(const Value: TDate);
    // properties
    property DeliveryDate: TDate read GetDeliveryDate write SetDeliveryDate;
    property PickupDate: TDate read GetPickupDate write SetPickupDate;
    property FromBranch: Boolean read GetFromBranch write SetFromBranch;
    property OfficeID: Integer read GetOfficeID write SetOfficeID;
    property BranchID: Integer read GetBranchID write SetBranchID;
    property CustomerID: Integer read GetCustomerID write SetCustomerID;
    property GUID: TGUID read GetGUID write SetGUID;
  end;

  IJanuaCarServiceBookingDBModel = interface(IJanuaDBModel)
    ['{B8C767FE-5DBB-40C7-8632-E52B68AA95E6}']
    function GetjdsBooking: IJanuaDBDataset;
    property jdsBooking: IJanuaDBDataset read GetjdsBooking;

    function GetjdsPickup: IJanuaDBDataset;
    property jdsPickup: IJanuaDBDataset read GetjdsPickup;

    function GetjdsDelivery: IJanuaDBDataset;
    property jdsDelivery: IJanuaDBDataset read GetjdsDelivery;
  end;

  IJanuaCarServiceBookingRESTModel = interface(IJanuaDBModel)

  end;

  IJanuaCarServiceInvoicesModel = interface(IJanuaDBDocumentsModel)
    ['{D1C2ACC0-56F4-47FF-B88C-61EA60DD766E}']
    function GetjdsBooking: IJanuaDBDataset;
    property jdsBooking: IJanuaDBDataset read GetjdsBooking;
  end;

  IJanuaCarServiceInvoicesViewModel = interface(IJanuaDBDocumentsViewModel)
    ['{5BA932AC-71A0-4777-B72A-CCD95AA0D04F}']
    function GetjdsBooking: IJanuaDBDataset;
    property jdsBooking: IJanuaDBDataset read GetjdsBooking;
  end;

  IJanuaCarServiceMessagingDataModule = interface(IJanuaDataModuleContainer)
    ['{98582E6E-80DA-4365-A5F4-45A9BA158494}']
    function GetjdsBooking: IJanuaDBDataset;
    property jdsBooking: IJanuaDBDataset read GetjdsBooking;

    function GetjdsMailLog: IJanuaDBDataset;
    property jdsMailLog: IJanuaDBDataset read GetjdsMailLog;

    function GetjdsMessageLog: IJanuaDBDataset;
    property jdsMessageLog: IJanuaDBDataset read GetjdsMessageLog;
  end;

  IJanuaCarServiceMessagingModel = interface(IJanuaDBModel)
    ['{A188AE63-253F-49DB-AB10-2744BDF44C49}']
    function GetjdsBooking: IJanuaDBDataset;
    property jdsBooking: IJanuaDBDataset read GetjdsBooking;

    function GetjdsMailLog: IJanuaDBDataset;
    property jdsMailLog: IJanuaDBDataset read GetjdsMailLog;

    function GetjdsMessageLog: IJanuaDBDataset;
    property jdsMessageLog: IJanuaDBDataset read GetjdsMessageLog;
  end;


implementation

end.

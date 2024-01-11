unit Janua.Carservice.Commons;

interface

type
  TCarServiceRecordSettings = record
    MobileCustomersUrl: string;
    MobileDriverUrl: string;
    TravelPrice: Currency;
    DriverMessage: string;
    CustomerMessage: string;
    MailMessage: string;
  end;

  TCalendarSelectEvent = procedure(Sender: TObject; GUID: TGUID) of object;

  TCarServiceConst = record
  const
    Settings = 'carservice.settings' { tcsSettings };
    CompanyMail = 'carservice.companymail' { tcsCompanyMail };
    CustomerMailBuilder = 'carservice.customermail' { tcsCustomerMail };
    CustomerMailBuilderNR = 'carservice.customermailNR' { tcsCustomerMail };
    DriverMailBuilder1 = 'carservice.drivermail1' { tcsDriverMail1 };
    ServiceMailBuilder = 'carservice.servicemail' { tcsServiceMail };
    BackOfficeMailBuilder = 'carservice.backofficemail' { tcsBackOfficeMail };
    DriverMailBuilder2 = 'carservice.drivermail2' { tcsDriverMail2 };
    DriverLandingMsgBuilder = 'carservice.driverlanding' { tcsDriverLanding };
    CustomerLandingMsgBuilder = 'carservice.customerlanding' { tcsCustomerLanding };
    DriverSMSBuilder1 = 'carservice.driversms1' { tcsDriverSms1 };
    CustomerSMSBuilder = 'carservice.customersms' { tcsCustomerSms };
    CustomerNRSMSBuilder = 'carservice.customernrsms' { tcsCustomerSms };
    DriverSMSBuilder2 = 'carservice.driversms2' { tcsDriverSms2 };
    BookingLandingMsgBuilder = 'carservice.bookinglanding' { tcsBookingLanding };
    DriverContractBuilder = 'carservice.drivercontract' { tcsDriverContract };
    ServiceContractBuilder = 'carservice.servicecontract' { tcsServiceContract };
    CustomerContractBuilder = 'carservice.customercontract' { tcsCustomerContract };
    CustConfirmationMsgBuilder = 'carservice.custconfirmation';
    CustConfirmationNRMsgBuilder = 'carservice.custconfirmationNR';
    CustomerLandingMsgNRBuilder = 'carservice.customerlandingnr';
    BookingLandingNRMsgBuilder = 'carservice.bookinglandingnr';
    BookingURLNotFoundBuilder = 'carservice.notfound';
  end;

implementation

end.

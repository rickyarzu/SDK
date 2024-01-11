unit Janua.Core.System.Types;

interface

type
  TJanuaSettingLocation = (tslCustom, tcsSettings, tcsCustomerMail, tcsDriverMail1, tcsDriverMail2,
    tcsServiceMail, tcsBackOfficeMail, tcsCompanyMail, tcsCustomerLanding, tcsDriverLanding,
    tcsBookingLanding, tcsCustomerSms, tcsDriverSms1, tcsDriverSms2, tcsCustomerContract, tcsDriverContract,
    tcsServiceContract);

  { TCSSettingLocation CarServiceSettings }
const
  CSettingLocations: array [TJanuaSettingLocation] of string = ('' { tslCustom } ,
    'carservice.settings' { tcsSettings } , 'carservice.customermail' { tcsCustomerMail } ,
    'carservice.drivermail1' { tcsDriverMail1 } , 'carservice.drivermail2' { tcsDriverMail2 } ,
    'carservice.servicemail' { tcsServiceMail } , 'carservice.backofficemail' { tcsBackOfficeMail } ,
    'carservice.companymail' { tcsCompanyMail } , 'carservice.customerlanding' { tcsCustomerLanding } ,
    'carservice.driverlanding' { tcsDriverLanding } , 'carservice.bookinglanding' { tcsBookingLanding } ,
    'carservice.customersms' { tcsCustomerSms } , 'carservice.driversms1' { tcsDriverSms1 } ,
    'carservice.driversms2' { tcsDriverSms2 } , 'carservice.customercontract' { tcsCustomerContract } ,
    'carservice.drivercontract' { tcsDriverContract } , 'carservice.servicecontract' { tcsServiceContract } );

implementation

uses Janua.Application.Framework, Janua.Core.Functions;

end.

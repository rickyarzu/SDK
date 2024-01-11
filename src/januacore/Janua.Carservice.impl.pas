unit Janua.Carservice.impl;

interface

uses
  // Janua Interfaces
  Janua.Carservice.Commons, Janua.Cloud.Mail.Intf, Janua.Carservice.Intf, Janua.Cloud.Intf,
  Janua.Cloud.SMS.Intf,
  // Janua Classes and Implementations
  Janua.Cloud.SMS.impl, Janua.Cloud.impl, Janua.Cloud.Mail.impl, Janua.Cloud.Mail.conf, Janua.Core.Classes,
  Janua.Cloud.conf;

{ (tcsSettings, tcsCustomerMail, tcsDriverMail, tcsServiceMail, tcsBackOfficeMail); }

{ IJanuaCSCustomerMailBuilder = interface(IJanuaMessageBuilder) }

type
  TJanuaCSCustomerMailBuilder = class(TJanuaMailMessageBuilder, IJanuaCSCustomerMailBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCSCustomerMailNRBuilder = class(TJanuaMailMessageBuilder, IJanuaCSCustomerMailNRBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCSDriverMailBuilder1 = class(TJanuaMailMessageBuilder, IJanuaCSDriverMailBuilder1,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCSDriverMailBuilder2 = class(TJanuaMailMessageBuilder, IJanuaCSDriverMailBuilder2,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCSServiceMailBuilder = class(TJanuaMailMessageBuilder, IJanuaCSServiceMailBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCSBackOfficeMailBuilder = class(TJanuaMailMessageBuilder, IJanuaCSBackOfficeMailBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  { TLandingMessageConf }

  TJanuaCSDriverLandingMsgBuilder = class(TJanuaLandingMsgBuilder, IJanuaCSDriverLandingMsgBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCSCustomerLandingMsgBuilder = class(TJanuaLandingMsgBuilder, IJanuaCSCustomerLandingMsgBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  // IJanuaCSBookingURLNotFoundBuilder
  TJanuaCSBookingURLNotFoundBuilder = class(TJanuaLandingMsgBuilder, IJanuaCSBookingURLNotFoundBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  // IJanuaCSBookingLandingMsgBuilder
  TJanuaCSBookingLandingMsgBuilder = class(TJanuaLandingMsgBuilder, IJanuaCSBookingLandingMsgBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  // IJanuaCSBookingNRLandingMsgBuilder
  TJanuaCSBookingNRLandingMsgBuilder = class(TJanuaLandingMsgBuilder, IJanuaCSBookingNRLandingMsgBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  // Landing Message NR IJanuaCSCustomerLandingMsgNRBuilder = interface(IJanuaLandingMessageBuilder)
  TJanuaCSCustomerLandingMsgNRBuilder = class(TJanuaLandingMsgBuilder, IJanuaCSCustomerLandingMsgNRBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCSDriverContractBuilder = class(TJanuaLandingMsgBuilder, IJanuaCSDriverContractBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCSCustomerContractBuilder = class(TJanuaLandingMsgBuilder, IJanuaCSCustomerContractBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  // IJanuaCSServiceContractBuilder
  TJanuaCSServiceContractBuilder = class(TJanuaLandingMsgBuilder, IJanuaCSServiceContractBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCSCustConfirmationMsgBuilder = class(TJanuaLandingMsgBuilder, IJanuaCSCustConfirmationMsgBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCSCustConfirmationNRMsgBuilder = class(TJanuaLandingMsgBuilder, IJanuaCSCustConfirmationNRMsgBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  { TJanuaSMSBuilder = class(TJanuaCustomMessageBuilder, IJanuaSMSBuilder, IJanuaMessageBuilder) }

  TJanuaDriverSMSBuilder1 = class(TJanuaSMSBuilder, IJanuaSMSBuilder, IJanuaCSDriverSMSBuilder1,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaDriverSMSBuilder2 = class(TJanuaSMSBuilder, IJanuaSMSBuilder, IJanuaCSDriverSMSBuilder2,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCustomerSMSBuilder = class(TJanuaSMSBuilder, IJanuaSMSBuilder, IJanuaCSCustomerSMSBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

  TJanuaCSCustomerNRSMSBuilder = class(TJanuaSMSBuilder, IJanuaSMSBuilder, IJanuaCSCustomerNRSMSBuilder,
    IJanuaMessageBuilder)
  public
    constructor Create; override;
  end;

implementation

uses Janua.Core.System.types, Janua.Application.Framework;

{ TJanuaCustomerMailBuilder }

constructor TJanuaCSCustomerMailBuilder.Create;
begin
  inherited;
  FMailConf.Key := TCarServiceConst.CustomerMailBuilder;
end;

{ TJanuaCSDriverMailBuilder }

constructor TJanuaCSDriverMailBuilder1.Create;
begin
  inherited;
  FMailConf.Key := TCarServiceConst.DriverMailBuilder1;
end;

{ TJanuaCSServiceMailBuilder }

constructor TJanuaCSServiceMailBuilder.Create;
begin
  inherited;
  FMailConf.Key := TCarServiceConst.ServiceMailBuilder;
  // (CSettingLocations[TJanuaSettingLocation.tcsServiceMail]);
end;

{ TJanuaCSBackOfficeMailBuilder }

constructor TJanuaCSBackOfficeMailBuilder.Create;
begin
  inherited;
  FMailConf.Key := TCarServiceConst.BackOfficeMailBuilder;
  // (CSettingLocations[TJanuaSettingLocation.tcsBackOfficeMail]);
end;

{ TJanuaCSDriverMailBuilder2 }

constructor TJanuaCSDriverMailBuilder2.Create;
begin
  inherited;
  FMailConf.Key := TCarServiceConst.DriverMailBuilder2;
  // (CSettingLocations[TJanuaSettingLocation.tcsDriverMail2]);
end;

{ TJanuaCSDriver1LandingConf }

constructor TJanuaCSDriverLandingMsgBuilder.Create;
begin
  inherited;
  { tcsCustomerLanding }
  FMessageConf.Key := TCarServiceConst.DriverLandingMsgBuilder;
  // (CSettingLocations[TJanuaSettingLocation.tcsDriverLanding]);
end;

{ TJanuaCSCustomerLandingConf }

constructor TJanuaCSCustomerLandingMsgBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.CustomerLandingMsgBuilder;
  // CSettingLocations[TJanuaSettingLocation.tcsCustomerLanding];
end;

{ TJanuaDriver1SMSBuilder }

constructor TJanuaDriverSMSBuilder1.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.DriverSMSBuilder1;
  // CSettingLocations[TJanuaSettingLocation.tcsDriverSms1];
end;

{ TJanuaCustomerSMSBuilder }

constructor TJanuaCustomerSMSBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.CustomerSMSBuilder
  // CSettingLocations[TJanuaSettingLocation.tcsCustomerSms];
end;

{ TJanuaDriverSMSBuilder2 }

constructor TJanuaDriverSMSBuilder2.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.DriverSMSBuilder2
  // CSettingLocations[TJanuaSettingLocation.tcsDriverSms2];
end;

{ TJanuaCSBookingLandingMsgBuilder }

constructor TJanuaCSBookingLandingMsgBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.BookingLandingMsgBuilder;
  // CSettingLocations[TJanuaSettingLocation.tcsBookingLanding];
end;

{ TJanuaCSDriverContractBuilder }
// tcsCustomerContract, tcsDriverContract, tcsServiceContract

constructor TJanuaCSDriverContractBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.DriverContractBuilder;
  // CSettingLocations[TJanuaSettingLocation.tcsDriverContract];
end;

{ TJanuaCSServiceContractBuilder }

constructor TJanuaCSServiceContractBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.ServiceContractBuilder
  // CSettingLocations[TJanuaSettingLocation.tcsServiceContract];
end;

{ TJanuaCSCustomerContractBuilder }

constructor TJanuaCSCustomerContractBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.CustomerContractBuilder
  // CSettingLocations[TJanuaSettingLocation.tcsCustomerContract];
end;

{ TJanuaCSCustomerLandingMsgNRBuilder }

constructor TJanuaCSCustomerLandingMsgNRBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.CustomerLandingMsgNRBuilder
end;

{ TJanuaCSBookingNRLandingMsgBuilder }

constructor TJanuaCSBookingNRLandingMsgBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.BookingLandingNRMsgBuilder
end;

{ TJanuaCSCustomerMailNRBuilder }

constructor TJanuaCSCustomerMailNRBuilder.Create;
begin
  inherited;
  FMailConf.Key := TCarServiceConst.CustomerMailBuilderNR;
end;

{ TJanuaCSCustomerNRSMSBuilder }

constructor TJanuaCSCustomerNRSMSBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.CustomerNRSMSBuilder
end;

{ TJanuaCSCustConfirmationMsgBuilder }

constructor TJanuaCSCustConfirmationMsgBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.CustConfirmationMsgBuilder
end;

{ TJanuaCSCustConfirmationNRMsgBuilder }

constructor TJanuaCSCustConfirmationNRMsgBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.CustConfirmationNRMsgBuilder
end;

{ TJanuaCSBookingURLNotFoundBuilder }

constructor TJanuaCSBookingURLNotFoundBuilder.Create;
begin
  inherited;
  FMessageConf.Key := TCarServiceConst.BookingURLNotFoundBuilder
end;

initialization

// TJanuaCSCustomerMailBuilder = IJanuaCSCustomerMailBuilder,
TJanuaApplicationFactory.RegisterClass(IJanuaCSCustomerMailBuilder, TJanuaCSCustomerMailBuilder);
// TJanuaCSCustomerLandingMsgNRBuilder = IJanuaCSCustomerLandingMsgNRBuilder
TJanuaApplicationFactory.RegisterClass(IJanuaCSCustomerMailNRBuilder, TJanuaCSCustomerMailNRBuilder);
// TJanuaCSDriverMailBuilder1 =   IJanuaCSDriverMailBuilder1,
TJanuaApplicationFactory.RegisterClass(IJanuaCSDriverMailBuilder1, TJanuaCSDriverMailBuilder1);
// TJanuaCSDriverMailBuilder2 =  IJanuaCSDriverMailBuilder2,
TJanuaApplicationFactory.RegisterClass(IJanuaCSDriverMailBuilder2, TJanuaCSDriverMailBuilder2);
// TJanuaCSServiceMailBuilder =  IJanuaCSServiceMailBuilder,
TJanuaApplicationFactory.RegisterClass(IJanuaCSServiceMailBuilder, TJanuaCSServiceMailBuilder);
// TJanuaCSBackOfficeMailBuilder = IJanuaCSBackOfficeMailBuilder,
TJanuaApplicationFactory.RegisterClass(IJanuaCSBackOfficeMailBuilder, TJanuaCSBackOfficeMailBuilder);
// TJanuaCSDriverLandingMsgBuilder = IJanuaCSDriverLandingMsgBuilder,
TJanuaApplicationFactory.RegisterClass(IJanuaCSDriverLandingMsgBuilder, TJanuaCSDriverLandingMsgBuilder);
// TJanuaCSCustomerLandingMsgBuilder = IJanuaCSCustomerLandingMsgBuilder,
TJanuaApplicationFactory.RegisterClass(IJanuaCSCustomerLandingMsgBuilder, TJanuaCSCustomerLandingMsgBuilder);
// TJanuaDriverSMSBuilder1 = class(TJanuaSMSBuilder, IJanuaSMSBuilder, IJanuaCSDriverSMSBuilder1 ,
TJanuaApplicationFactory.RegisterClass(IJanuaCSDriverSMSBuilder1, TJanuaDriverSMSBuilder1);
// TJanuaDriverSMSBuilder1 = class(TJanuaSMSBuilder, IJanuaSMSBuilder, IJanuaCSDriverSMSBuilder1 ,
TJanuaApplicationFactory.RegisterClass(IJanuaCSDriverSMSBuilder2, TJanuaDriverSMSBuilder2);
// TJanuaCustomerSMSBuilder = class(TJanuaSMSBuilder, IJanuaSMSBuilder, IJanuaCSCustomerSMSBuilder,
TJanuaApplicationFactory.RegisterClass(IJanuaCSCustomerSMSBuilder, TJanuaCustomerSMSBuilder);
// TJanuaCSBackOfficeMailBuilder = class(TJanuaMailMessageBuilder, IJanuaCSBackOfficeMailBuilder
TJanuaApplicationFactory.RegisterClass(IJanuaCSBackOfficeMailBuilder, TJanuaCSBackOfficeMailBuilder);
// TJanuaCSBookingLandingMsgBuilder = class( IJanuaCSBookingLandingMsgBuilder
TJanuaApplicationFactory.RegisterClass(IJanuaCSBookingLandingMsgBuilder, TJanuaCSBookingLandingMsgBuilder);
// TJanuaCSDriverContractBuilder = class( IJanuaCSDriverContractBuilder
TJanuaApplicationFactory.RegisterClass(IJanuaCSDriverContractBuilder, TJanuaCSDriverContractBuilder);
// TJanuaCSCustomerContractBuilder = class( IJanuaCSCustomerContractBuilder,
TJanuaApplicationFactory.RegisterClass(IJanuaCSCustomerContractBuilder, TJanuaCSCustomerContractBuilder);
// TJanuaCSServiceContractBuilder = class( IJanuaCSServiceContractBuilder,
TJanuaApplicationFactory.RegisterClass(IJanuaCSServiceContractBuilder, TJanuaCSServiceContractBuilder);
// TJanuaCSCustomerLandingMsgNRBuilder = class( IJanuaCSCustomerLandingMsgNRBuilder
TJanuaApplicationFactory.RegisterClass(IJanuaCSCustomerLandingMsgNRBuilder,
  TJanuaCSCustomerLandingMsgNRBuilder);
// TJanuaCSBookingNRLandingMsgBuilder IJanuaCSBookingNRLandingMsgBuilder
TJanuaApplicationFactory.RegisterClass(IJanuaCSBookingNRLandingMsgBuilder,
  TJanuaCSBookingNRLandingMsgBuilder);
// TJanuaCSCustomerNRSMSBuilder  = IJanuaCSCustomerNRSMSBuilder)
TJanuaApplicationFactory.RegisterClass(IJanuaCSCustomerNRSMSBuilder, TJanuaCSCustomerNRSMSBuilder);
// IJanuaCSCustConfirmationMsgBuilder = (TJanuaCSCustConfirmationMsgBuilder)
TJanuaApplicationFactory.RegisterClass(IJanuaCSCustConfirmationMsgBuilder,
  TJanuaCSCustConfirmationMsgBuilder);
// IJanuaCSCustConfirmationNRMsgBuilder = (TJanuaCSCustConfirmationNRMsgBuilder)
TJanuaApplicationFactory.RegisterClass(IJanuaCSCustConfirmationNRMsgBuilder,
  TJanuaCSCustConfirmationNRMsgBuilder);
// IJanuaCSBookingURLNotFoundBuilder TJanuaCSBookingURLNotFoundBuilder
TJanuaApplicationFactory.RegisterClass(IJanuaCSBookingURLNotFoundBuilder,
  TJanuaCSBookingURLNotFoundBuilder);

end.

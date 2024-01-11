unit Janua.Carservice.intf;

interface

uses
  // Janua  Intf/Types
  Janua.Core.Types, Janua.Cloud.Types, Janua.Cloud.intf, Janua.Cloud.Mail.intf, Janua.Cloud.Sms.intf;

type
  { Form }
  IJanuaCSCustomerMailBuilder = interface(IJanuaMailMessageBuilder)
    ['{4FED9AD1-3387-4919-81AF-33375CD64346}']
  end;

  { Form }
  IJanuaCSCustomerMailNRBuilder = interface(IJanuaMailMessageBuilder)
    ['{466A6138-18C1-43B5-B019-4A706F7FC0F8}']
  end;

  IJanuaCSDriverMailBuilder1 = interface(IJanuaMailMessageBuilder)
    ['{6B6197F6-6A7A-4479-86B1-CF1FAB7387CF}']
  end;

  IJanuaCSDriverMailBuilder2 = interface(IJanuaMailMessageBuilder)
    ['{9A869AF6-F172-4523-80E2-B38525AB7753}']
  end;

  IJanuaCSServiceMailBuilder = interface(IJanuaMailMessageBuilder)
    ['{54379444-4422-4D40-8269-7D94CFF3A165}']
  end;

  IJanuaCSBackOfficeMailBuilder = interface(IJanuaMailMessageBuilder)
    ['{46F6E927-1775-4EBC-A7CA-B64E7ED115DD}']
  end;

  { TLandingMessageConf }

  IJanuaCSDriverLandingMsgBuilder = interface(IJanuaLandingMessageBuilder)
    ['{45475875-3632-4251-95F0-EF086EEAB966}']
  end;

  IJanuaCSCustomerLandingMsgBuilder = interface(IJanuaLandingMessageBuilder)
    ['{98E6A3C1-F7C7-4C8E-825C-85CFE7F95E8D}']
  end;

  // Landing Message NR
  IJanuaCSCustomerLandingMsgNRBuilder = interface(IJanuaLandingMessageBuilder)
    ['{321C1246-29EE-4221-8059-CC65BEE671AD}']
  end;

  IJanuaCSBookingLandingMsgBuilder = interface(IJanuaLandingMessageBuilder)
    ['{8700AFCF-B87D-4959-945D-89F8A8541773}']
  end;

  IJanuaCSBookingNRLandingMsgBuilder = interface(IJanuaLandingMessageBuilder)
    ['{63A19016-D3DE-4633-AD7B-CC6944E0F565}']
  end;

  IJanuaCSBookingURLNotFoundBuilder = interface(IJanuaLandingMessageBuilder)
    ['{A5805657-12D7-4C01-BD59-D9F37B919B80}']
  end;

  IJanuaCSDriverContractBuilder = interface(IJanuaLandingMessageBuilder)
    ['{450C3A53-9980-4277-8DFD-8B0F11B10E92}']
  end;

  IJanuaCSServiceContractBuilder = interface(IJanuaLandingMessageBuilder)
    ['{415BCC1B-62CE-42A4-A84D-2D371205BB3B}']
  end;

  IJanuaCSCustomerContractBuilder = interface(IJanuaLandingMessageBuilder)
    ['{A309C447-42E5-471F-B015-A95EA4E0FAA6}']
  end;

  IJanuaCSCustConfirmationMsgBuilder = interface(IJanuaLandingMessageBuilder)
    ['{23C153AA-DC42-442D-B5B2-F7491842DC04}']
  end;

  IJanuaCSCustConfirmationNRMsgBuilder = interface(IJanuaLandingMessageBuilder)
    ['{2838928C-C28C-4AE4-A796-FA7EF32D7F7C}']
  end;

  IJanuaCSCustomerSMSBuilder = interface(IJanuaSMSBuilder)
    ['{1DDA4765-4E31-4A0F-A2F9-47782BDF7A31}']
  end;

  // Message Customer No Return
  IJanuaCSCustomerNRSMSBuilder = interface(IJanuaSMSBuilder)
    ['{DA00CF92-D01E-4343-8811-92B1E98CCD9D}']
  end;

  IJanuaCSDriverSMSBuilder1 = interface(IJanuaSMSBuilder)
    ['{BADBD9BC-EA4C-4DA0-9ABF-6B7402D87763}']
  end;

  IJanuaCSDriverSMSBuilder2 = interface(IJanuaSMSBuilder)
    ['{E296B982-9F57-4355-8463-83AC0FE5809F}']
  end;

implementation



initialization

// IJanuaCSCustomerMailBuilder
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSCustomerMailBuilder));
// IJanuaCSDriverMailBuilder1
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSDriverMailBuilder1));
// IJanuaCSDriverMailBuilder2
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSDriverMailBuilder2));
// IJanuaCSServiceMailBuilder
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSServiceMailBuilder));
// IJanuaCSBackOfficeMailBuilder
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSBackOfficeMailBuilder));
// IJanuaCSDriverLandingMsgBuilder
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSDriverLandingMsgBuilder));
// IJanuaCSDriverLandingMsgBuilder
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSCustomerLandingMsgBuilder));

// IJanuaCSCustomerSMSBuilder
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSCustomerSMSBuilder));
// IJanuaCSDriverSMSBuilder1
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSDriverSMSBuilder1));
// IJanuaCSDriverSMSBuilder1
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSDriverSMSBuilder2));
// IJanuaCSCustomerNRSMSBuilder
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSCustomerNRSMSBuilder));

// IJanuaCSBookingLandingMsgBuilder =  ['{46F6E927-1775-4EBC-A7CA-B64E7ED115DD}']
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSBookingLandingMsgBuilder));
// IJanuaCSBookingNRLandingMsgBuilder
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSBookingNRLandingMsgBuilder));
// IJanuaCSCustomerMailNRBuilder
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSCustomerMailNRBuilder));

// IJanuaCSCustConfirmationMsgBuilder = interface(IJanuaLandingMessageBuilder)
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSCustConfirmationMsgBuilder));
// IJanuaCSCustConfirmationNRMsgBuilder = interface(IJanuaLandingMessageBuilder)
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSCustConfirmationNRMsgBuilder));
// IJanuaCSBookingURLNotFoundBuilder
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaCSBookingURLNotFoundBuilder));

end.

unit JOrm.Anagraph.Anagraphs.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Entities, Janua.Core.Types,
  JOrm.Anagraph.Anagraphs.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomAnagraph = class(TJanuaRecord, ICustomAnagraph)
  private
    FDbSchemaId: IJanuaField;
    FAnagraphId: IJanuaField;
    FAnTitle: IJanuaField;
    FAnName: IJanuaField;
    FAnSecondName: IJanuaField;
    FAnLastName: IJanuaField;
    FAnNotes: IJanuaField;
    FAnAddress: IJanuaField;
    FAnTown: IJanuaField;
    FAnPostalCode: IJanuaField;
    FAnIsoCountryCode: IJanuaField;
    FAnStateProvince: IJanuaField;
    FAnPhone: IJanuaField;
    FAnPhone2: IJanuaField;
    FAnFax: IJanuaField;
    FAnCellular: IJanuaField;
    FAnCode: IJanuaField;
    FAnVatNumeric: IJanuaField;
    FAnEmail: IJanuaField;
    FAnWeb: IJanuaField;
    FAnContactId: IJanuaField;
    FAnBankAccount: IJanuaField;
    FAnPaymentDes: IJanuaField;
    FAnDiscount: IJanuaField;
    FAnDistance: IJanuaField;
    FAnDistanceMesunit: IJanuaField;
    FAnSex: IJanuaField;
    FAnCodComune: IJanuaField;
    FAnCodProvincia: IJanuaField;
    FAnCreditLine: IJanuaField;
    FAnCurrencyId: IJanuaField;
    FAnCatId: IJanuaField;
    FAnNotes2: IJanuaField;
    FAnNotes3: IJanuaField;
    FAnEdi: IJanuaField;
    FAnPrivacy: IJanuaField;
    FAnOfficeId: IJanuaField;
    FAnCodProvRif: IJanuaField;
    FAnDataFido: IJanuaField;
    FAnUserInsert: IJanuaField;
    FAnUserUpdate: IJanuaField;
    FAnAreaId: IJanuaField;
    FAnAgentId: IJanuaField;
    FAnAreaCode: IJanuaField;
    FAnZoneId: IJanuaField;
    FAnInsId: IJanuaField;
    FAnUpdId: IJanuaField;
    FAnDocuments: IJanuaField;
    FAnLastDate: IJanuaField;
    FAnBirthdate: IJanuaField;
    FAnOfficeTypeId: IJanuaField;
    FAnSearchname: IJanuaField;
    FAnExtraUeFlag: IJanuaField;
    FAnExternalCode: IJanuaField;
    FAnVatId: IJanuaField;
    FAnPersonalFiscalCode: IJanuaField;
    FAnPrivacyPrint: IJanuaField;
    FAnSms: IJanuaField;
    FAnEncryptedFiscalCode: IJanuaField;
    FAnVatPurcentage: IJanuaField;
    FAnStatus: IJanuaField;
    FAnOwnsite: IJanuaField;
    FAnInsuranceId: IJanuaField;
    FAnAnagraphsAnagraphId: IJanuaField;
    FAnMainLanguageCode: IJanuaField;
    FAnMainCultureCode: IJanuaField;
    FAnFiscalCode: IJanuaField;
    FAnMainGroupId: IJanuaField;
    FAnImageId: IJanuaField;
    FLatitude: IJanuaField;
    FLongitude: IJanuaField;
    FTest: IJanuaField;
    FSearchIndex: IJanuaField;
    FAnBirthplace: IJanuaField;
    FAnBirthplaceCode: IJanuaField;
    FAnagraph64: IJanuaField;
    FMainCategoryId: IJanuaField;
    FOsmId: IJanuaField;
    FAnDescription: IJanuaField;
    FAnAddressNumber: IJanuaField;
    FInsertDate: IJanuaField;
    FUpdateDate: IJanuaField;
    FUserInsert: IJanuaField;
    FJguid: IJanuaField;
    FCustomField1: IJanuaField;
    FCustomField2: IJanuaField;
    FCustomField3: IJanuaField;
    FCustomFloat1: IJanuaField;
    FCustomFloat2: IJanuaField;
    FCustomInt1: IJanuaField;
    FCustomInt2: IJanuaField;
    FSupplierId: IJanuaField;
    FVesselId: IJanuaField;
    FAnCountryId: IJanuaField;
    FAnIsoCountryCode2: IJanuaField;
    FAnFullAddress: IJanuaField;
  protected
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    function GetAnTitle: IJanuaField;
    procedure SetAnTitle(const Value: IJanuaField);
    function GetAnName: IJanuaField;
    procedure SetAnName(const Value: IJanuaField);
    function GetAnSecondName: IJanuaField;
    procedure SetAnSecondName(const Value: IJanuaField);
    function GetAnLastName: IJanuaField;
    procedure SetAnLastName(const Value: IJanuaField);
    function GetAnNotes: IJanuaField;
    procedure SetAnNotes(const Value: IJanuaField);
    function GetAnAddress: IJanuaField;
    procedure SetAnAddress(const Value: IJanuaField);
    function GetAnTown: IJanuaField;
    procedure SetAnTown(const Value: IJanuaField);
    function GetAnPostalCode: IJanuaField;
    procedure SetAnPostalCode(const Value: IJanuaField);
    function GetAnIsoCountryCode: IJanuaField;
    procedure SetAnIsoCountryCode(const Value: IJanuaField);
    function GetAnStateProvince: IJanuaField;
    procedure SetAnStateProvince(const Value: IJanuaField);
    function GetAnPhone: IJanuaField;
    procedure SetAnPhone(const Value: IJanuaField);
    function GetAnPhone2: IJanuaField;
    procedure SetAnPhone2(const Value: IJanuaField);
    function GetAnFax: IJanuaField;
    procedure SetAnFax(const Value: IJanuaField);
    function GetAnCellular: IJanuaField;
    procedure SetAnCellular(const Value: IJanuaField);
    function GetAnCode: IJanuaField;
    procedure SetAnCode(const Value: IJanuaField);
    function GetAnVatNumeric: IJanuaField;
    procedure SetAnVatNumeric(const Value: IJanuaField);
    function GetAnEmail: IJanuaField;
    procedure SetAnEmail(const Value: IJanuaField);
    function GetAnWeb: IJanuaField;
    procedure SetAnWeb(const Value: IJanuaField);
    function GetAnContactId: IJanuaField;
    procedure SetAnContactId(const Value: IJanuaField);
    function GetAnBankAccount: IJanuaField;
    procedure SetAnBankAccount(const Value: IJanuaField);
    function GetAnPaymentDes: IJanuaField;
    procedure SetAnPaymentDes(const Value: IJanuaField);
    function GetAnDiscount: IJanuaField;
    procedure SetAnDiscount(const Value: IJanuaField);
    function GetAnDistance: IJanuaField;
    procedure SetAnDistance(const Value: IJanuaField);
    function GetAnDistanceMesunit: IJanuaField;
    procedure SetAnDistanceMesunit(const Value: IJanuaField);
    function GetAnSex: IJanuaField;
    procedure SetAnSex(const Value: IJanuaField);
    function GetAnCodComune: IJanuaField;
    procedure SetAnCodComune(const Value: IJanuaField);
    function GetAnCodProvincia: IJanuaField;
    procedure SetAnCodProvincia(const Value: IJanuaField);
    function GetAnCreditLine: IJanuaField;
    procedure SetAnCreditLine(const Value: IJanuaField);
    function GetAnCurrencyId: IJanuaField;
    procedure SetAnCurrencyId(const Value: IJanuaField);
    function GetAnCatId: IJanuaField;
    procedure SetAnCatId(const Value: IJanuaField);
    function GetAnNotes2: IJanuaField;
    procedure SetAnNotes2(const Value: IJanuaField);
    function GetAnNotes3: IJanuaField;
    procedure SetAnNotes3(const Value: IJanuaField);
    function GetAnEdi: IJanuaField;
    procedure SetAnEdi(const Value: IJanuaField);
    function GetAnPrivacy: IJanuaField;
    procedure SetAnPrivacy(const Value: IJanuaField);
    function GetAnOfficeId: IJanuaField;
    procedure SetAnOfficeId(const Value: IJanuaField);
    function GetAnCodProvRif: IJanuaField;
    procedure SetAnCodProvRif(const Value: IJanuaField);
    function GetAnDataFido: IJanuaField;
    procedure SetAnDataFido(const Value: IJanuaField);
    function GetAnUserInsert: IJanuaField;
    procedure SetAnUserInsert(const Value: IJanuaField);
    function GetAnUserUpdate: IJanuaField;
    procedure SetAnUserUpdate(const Value: IJanuaField);
    function GetAnAreaId: IJanuaField;
    procedure SetAnAreaId(const Value: IJanuaField);
    function GetAnAgentId: IJanuaField;
    procedure SetAnAgentId(const Value: IJanuaField);
    function GetAnAreaCode: IJanuaField;
    procedure SetAnAreaCode(const Value: IJanuaField);
    function GetAnZoneId: IJanuaField;
    procedure SetAnZoneId(const Value: IJanuaField);
    function GetAnInsId: IJanuaField;
    procedure SetAnInsId(const Value: IJanuaField);
    function GetAnUpdId: IJanuaField;
    procedure SetAnUpdId(const Value: IJanuaField);
    function GetAnDocuments: IJanuaField;
    procedure SetAnDocuments(const Value: IJanuaField);
    function GetAnLastDate: IJanuaField;
    procedure SetAnLastDate(const Value: IJanuaField);
    function GetAnBirthdate: IJanuaField;
    procedure SetAnBirthdate(const Value: IJanuaField);
    function GetAnOfficeTypeId: IJanuaField;
    procedure SetAnOfficeTypeId(const Value: IJanuaField);
    function GetAnSearchname: IJanuaField;
    procedure SetAnSearchname(const Value: IJanuaField);
    function GetAnExtraUeFlag: IJanuaField;
    procedure SetAnExtraUeFlag(const Value: IJanuaField);
    function GetAnExternalCode: IJanuaField;
    procedure SetAnExternalCode(const Value: IJanuaField);
    function GetAnVatId: IJanuaField;
    procedure SetAnVatId(const Value: IJanuaField);
    function GetAnPersonalFiscalCode: IJanuaField;
    procedure SetAnPersonalFiscalCode(const Value: IJanuaField);
    function GetAnPrivacyPrint: IJanuaField;
    procedure SetAnPrivacyPrint(const Value: IJanuaField);
    function GetAnSms: IJanuaField;
    procedure SetAnSms(const Value: IJanuaField);
    function GetAnEncryptedFiscalCode: IJanuaField;
    procedure SetAnEncryptedFiscalCode(const Value: IJanuaField);
    function GetAnVatPurcentage: IJanuaField;
    procedure SetAnVatPurcentage(const Value: IJanuaField);
    function GetAnStatus: IJanuaField;
    procedure SetAnStatus(const Value: IJanuaField);
    function GetAnOwnsite: IJanuaField;
    procedure SetAnOwnsite(const Value: IJanuaField);
    function GetAnInsuranceId: IJanuaField;
    procedure SetAnInsuranceId(const Value: IJanuaField);
    function GetAnAnagraphsAnagraphId: IJanuaField;
    procedure SetAnAnagraphsAnagraphId(const Value: IJanuaField);
    function GetAnMainLanguageCode: IJanuaField;
    procedure SetAnMainLanguageCode(const Value: IJanuaField);
    function GetAnMainCultureCode: IJanuaField;
    procedure SetAnMainCultureCode(const Value: IJanuaField);
    function GetAnFiscalCode: IJanuaField;
    procedure SetAnFiscalCode(const Value: IJanuaField);
    function GetAnMainGroupId: IJanuaField;
    procedure SetAnMainGroupId(const Value: IJanuaField);
    function GetAnImageId: IJanuaField;
    procedure SetAnImageId(const Value: IJanuaField);
    function GetLatitude: IJanuaField;
    procedure SetLatitude(const Value: IJanuaField);
    function GetLongitude: IJanuaField;
    procedure SetLongitude(const Value: IJanuaField);
    function GetTest: IJanuaField;
    procedure SetTest(const Value: IJanuaField);
    function GetSearchIndex: IJanuaField;
    procedure SetSearchIndex(const Value: IJanuaField);
    function GetAnBirthplace: IJanuaField;
    procedure SetAnBirthplace(const Value: IJanuaField);
    function GetAnBirthplaceCode: IJanuaField;
    procedure SetAnBirthplaceCode(const Value: IJanuaField);
    function GetAnagraph64: IJanuaField;
    procedure SetAnagraph64(const Value: IJanuaField);
    function GetMainCategoryId: IJanuaField;
    procedure SetMainCategoryId(const Value: IJanuaField);
    function GetOsmId: IJanuaField;
    procedure SetOsmId(const Value: IJanuaField);
    function GetAnDescription: IJanuaField;
    procedure SetAnDescription(const Value: IJanuaField);
    function GetAnAddressNumber: IJanuaField;
    procedure SetAnAddressNumber(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetCustomField1: IJanuaField;
    procedure SetCustomField1(const Value: IJanuaField);
    function GetCustomField2: IJanuaField;
    procedure SetCustomField2(const Value: IJanuaField);
    function GetCustomField3: IJanuaField;
    procedure SetCustomField3(const Value: IJanuaField);
    function GetCustomFloat1: IJanuaField;
    procedure SetCustomFloat1(const Value: IJanuaField);
    function GetCustomFloat2: IJanuaField;
    procedure SetCustomFloat2(const Value: IJanuaField);
    function GetCustomInt1: IJanuaField;
    procedure SetCustomInt1(const Value: IJanuaField);
    function GetCustomInt2: IJanuaField;
    procedure SetCustomInt2(const Value: IJanuaField);
    function GetSupplierId: IJanuaField;
    procedure SetSupplierId(const Value: IJanuaField);
    function GetVesselId: IJanuaField;
    procedure SetVesselId(const Value: IJanuaField);
    function GetAnCountryId: IJanuaField;
    procedure SetAnCountryId(const Value: IJanuaField);
    function GetAnIsoCountryCode2: IJanuaField;
    procedure SetAnIsoCountryCode2(const Value: IJanuaField);
    function GetAnFullAddress: IJanuaField;
    procedure SetAnFullAddress(const Value: IJanuaField);
  public
    constructor Create; override;
    procedure SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    property AnTitle: IJanuaField read GetAnTitle write SetAnTitle;
    property AnName: IJanuaField read GetAnName write SetAnName;
    property AnSecondName: IJanuaField read GetAnSecondName write SetAnSecondName;
    property AnLastName: IJanuaField read GetAnLastName write SetAnLastName;
    property AnNotes: IJanuaField read GetAnNotes write SetAnNotes;
    property AnAddress: IJanuaField read GetAnAddress write SetAnAddress;
    property AnTown: IJanuaField read GetAnTown write SetAnTown;
    property AnPostalCode: IJanuaField read GetAnPostalCode write SetAnPostalCode;
    property AnIsoCountryCode: IJanuaField read GetAnIsoCountryCode write SetAnIsoCountryCode;
    property AnStateProvince: IJanuaField read GetAnStateProvince write SetAnStateProvince;
    property AnPhone: IJanuaField read GetAnPhone write SetAnPhone;
    property AnPhone2: IJanuaField read GetAnPhone2 write SetAnPhone2;
    property AnFax: IJanuaField read GetAnFax write SetAnFax;
    property AnCellular: IJanuaField read GetAnCellular write SetAnCellular;
    property AnCode: IJanuaField read GetAnCode write SetAnCode;
    property AnVatNumeric: IJanuaField read GetAnVatNumeric write SetAnVatNumeric;
    property AnEmail: IJanuaField read GetAnEmail write SetAnEmail;
    property AnWeb: IJanuaField read GetAnWeb write SetAnWeb;
    property AnContactId: IJanuaField read GetAnContactId write SetAnContactId;
    property AnBankAccount: IJanuaField read GetAnBankAccount write SetAnBankAccount;
    property AnPaymentDes: IJanuaField read GetAnPaymentDes write SetAnPaymentDes;
    property AnDiscount: IJanuaField read GetAnDiscount write SetAnDiscount;
    property AnDistance: IJanuaField read GetAnDistance write SetAnDistance;
    property AnDistanceMesunit: IJanuaField read GetAnDistanceMesunit write SetAnDistanceMesunit;
    property AnSex: IJanuaField read GetAnSex write SetAnSex;
    property AnCodComune: IJanuaField read GetAnCodComune write SetAnCodComune;
    property AnCodProvincia: IJanuaField read GetAnCodProvincia write SetAnCodProvincia;
    property AnCreditLine: IJanuaField read GetAnCreditLine write SetAnCreditLine;
    property AnCurrencyId: IJanuaField read GetAnCurrencyId write SetAnCurrencyId;
    property AnCatId: IJanuaField read GetAnCatId write SetAnCatId;
    property AnNotes2: IJanuaField read GetAnNotes2 write SetAnNotes2;
    property AnNotes3: IJanuaField read GetAnNotes3 write SetAnNotes3;
    property AnEdi: IJanuaField read GetAnEdi write SetAnEdi;
    property AnPrivacy: IJanuaField read GetAnPrivacy write SetAnPrivacy;
    property AnOfficeId: IJanuaField read GetAnOfficeId write SetAnOfficeId;
    property AnCodProvRif: IJanuaField read GetAnCodProvRif write SetAnCodProvRif;
    property AnDataFido: IJanuaField read GetAnDataFido write SetAnDataFido;
    property AnUserInsert: IJanuaField read GetAnUserInsert write SetAnUserInsert;
    property AnUserUpdate: IJanuaField read GetAnUserUpdate write SetAnUserUpdate;
    property AnAreaId: IJanuaField read GetAnAreaId write SetAnAreaId;
    property AnAgentId: IJanuaField read GetAnAgentId write SetAnAgentId;
    property AnAreaCode: IJanuaField read GetAnAreaCode write SetAnAreaCode;
    property AnZoneId: IJanuaField read GetAnZoneId write SetAnZoneId;
    property AnInsId: IJanuaField read GetAnInsId write SetAnInsId;
    property AnUpdId: IJanuaField read GetAnUpdId write SetAnUpdId;
    property AnDocuments: IJanuaField read GetAnDocuments write SetAnDocuments;
    property AnLastDate: IJanuaField read GetAnLastDate write SetAnLastDate;
    property AnBirthdate: IJanuaField read GetAnBirthdate write SetAnBirthdate;
    property AnOfficeTypeId: IJanuaField read GetAnOfficeTypeId write SetAnOfficeTypeId;
    property AnSearchname: IJanuaField read GetAnSearchname write SetAnSearchname;
    property AnExtraUeFlag: IJanuaField read GetAnExtraUeFlag write SetAnExtraUeFlag;
    property AnExternalCode: IJanuaField read GetAnExternalCode write SetAnExternalCode;
    property AnVatId: IJanuaField read GetAnVatId write SetAnVatId;
    property AnPersonalFiscalCode: IJanuaField read GetAnPersonalFiscalCode write SetAnPersonalFiscalCode;
    property AnPrivacyPrint: IJanuaField read GetAnPrivacyPrint write SetAnPrivacyPrint;
    property AnSms: IJanuaField read GetAnSms write SetAnSms;
    property AnEncryptedFiscalCode: IJanuaField read GetAnEncryptedFiscalCode write SetAnEncryptedFiscalCode;
    property AnVatPurcentage: IJanuaField read GetAnVatPurcentage write SetAnVatPurcentage;
    property AnStatus: IJanuaField read GetAnStatus write SetAnStatus;
    property AnOwnsite: IJanuaField read GetAnOwnsite write SetAnOwnsite;
    property AnInsuranceId: IJanuaField read GetAnInsuranceId write SetAnInsuranceId;
    property AnAnagraphsAnagraphId: IJanuaField read GetAnAnagraphsAnagraphId write SetAnAnagraphsAnagraphId;
    property AnMainLanguageCode: IJanuaField read GetAnMainLanguageCode write SetAnMainLanguageCode;
    property AnMainCultureCode: IJanuaField read GetAnMainCultureCode write SetAnMainCultureCode;
    property AnFiscalCode: IJanuaField read GetAnFiscalCode write SetAnFiscalCode;
    property AnMainGroupId: IJanuaField read GetAnMainGroupId write SetAnMainGroupId;
    property AnImageId: IJanuaField read GetAnImageId write SetAnImageId;
    property Latitude: IJanuaField read GetLatitude write SetLatitude;
    property Longitude: IJanuaField read GetLongitude write SetLongitude;
    property Test: IJanuaField read GetTest write SetTest;
    property SearchIndex: IJanuaField read GetSearchIndex write SetSearchIndex;
    property AnBirthplace: IJanuaField read GetAnBirthplace write SetAnBirthplace;
    property AnBirthplaceCode: IJanuaField read GetAnBirthplaceCode write SetAnBirthplaceCode;
    property Anagraph64: IJanuaField read GetAnagraph64 write SetAnagraph64;
    property MainCategoryId: IJanuaField read GetMainCategoryId write SetMainCategoryId;
    property OsmId: IJanuaField read GetOsmId write SetOsmId;
    property AnDescription: IJanuaField read GetAnDescription write SetAnDescription;
    property AnAddressNumber: IJanuaField read GetAnAddressNumber write SetAnAddressNumber;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property CustomField1: IJanuaField read GetCustomField1 write SetCustomField1;
    property CustomField2: IJanuaField read GetCustomField2 write SetCustomField2;
    property CustomField3: IJanuaField read GetCustomField3 write SetCustomField3;
    property CustomFloat1: IJanuaField read GetCustomFloat1 write SetCustomFloat1;
    property CustomFloat2: IJanuaField read GetCustomFloat2 write SetCustomFloat2;
    property CustomInt1: IJanuaField read GetCustomInt1 write SetCustomInt1;
    property CustomInt2: IJanuaField read GetCustomInt2 write SetCustomInt2;
    property SupplierId: IJanuaField read GetSupplierId write SetSupplierId;
    property VesselId: IJanuaField read GetVesselId write SetVesselId;
    property AnCountryId: IJanuaField read GetAnCountryId write SetAnCountryId;
    property AnIsoCountryCode2: IJanuaField read GetAnIsoCountryCode2 write SetAnIsoCountryCode2;
    property AnFullAddress: IJanuaField read GetAnFullAddress write SetAnFullAddress;
  end;

  TCustomAnagraphs = class(TJanuaRecordSet, IJanuaRecordSet, ICustomAnagraphs)
  strict protected
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    function GetAnTitle: IJanuaField;
    procedure SetAnTitle(const Value: IJanuaField);
    function GetAnName: IJanuaField;
    procedure SetAnName(const Value: IJanuaField);
    function GetAnSecondName: IJanuaField;
    procedure SetAnSecondName(const Value: IJanuaField);
    function GetAnLastName: IJanuaField;
    procedure SetAnLastName(const Value: IJanuaField);
    function GetAnNotes: IJanuaField;
    procedure SetAnNotes(const Value: IJanuaField);
    function GetAnAddress: IJanuaField;
    procedure SetAnAddress(const Value: IJanuaField);
    function GetAnTown: IJanuaField;
    procedure SetAnTown(const Value: IJanuaField);
    function GetAnPostalCode: IJanuaField;
    procedure SetAnPostalCode(const Value: IJanuaField);
    function GetAnIsoCountryCode: IJanuaField;
    procedure SetAnIsoCountryCode(const Value: IJanuaField);
    function GetAnStateProvince: IJanuaField;
    procedure SetAnStateProvince(const Value: IJanuaField);
    function GetAnPhone: IJanuaField;
    procedure SetAnPhone(const Value: IJanuaField);
    function GetAnPhone2: IJanuaField;
    procedure SetAnPhone2(const Value: IJanuaField);
    function GetAnFax: IJanuaField;
    procedure SetAnFax(const Value: IJanuaField);
    function GetAnCellular: IJanuaField;
    procedure SetAnCellular(const Value: IJanuaField);
    function GetAnCode: IJanuaField;
    procedure SetAnCode(const Value: IJanuaField);
    function GetAnVatNumeric: IJanuaField;
    procedure SetAnVatNumeric(const Value: IJanuaField);
    function GetAnEmail: IJanuaField;
    procedure SetAnEmail(const Value: IJanuaField);
    function GetAnWeb: IJanuaField;
    procedure SetAnWeb(const Value: IJanuaField);
    function GetAnContactId: IJanuaField;
    procedure SetAnContactId(const Value: IJanuaField);
    function GetAnBankAccount: IJanuaField;
    procedure SetAnBankAccount(const Value: IJanuaField);
    function GetAnPaymentDes: IJanuaField;
    procedure SetAnPaymentDes(const Value: IJanuaField);
    function GetAnDiscount: IJanuaField;
    procedure SetAnDiscount(const Value: IJanuaField);
    function GetAnDistance: IJanuaField;
    procedure SetAnDistance(const Value: IJanuaField);
    function GetAnDistanceMesunit: IJanuaField;
    procedure SetAnDistanceMesunit(const Value: IJanuaField);
    function GetAnSex: IJanuaField;
    procedure SetAnSex(const Value: IJanuaField);
    function GetAnCodComune: IJanuaField;
    procedure SetAnCodComune(const Value: IJanuaField);
    function GetAnCodProvincia: IJanuaField;
    procedure SetAnCodProvincia(const Value: IJanuaField);
    function GetAnCreditLine: IJanuaField;
    procedure SetAnCreditLine(const Value: IJanuaField);
    function GetAnCurrencyId: IJanuaField;
    procedure SetAnCurrencyId(const Value: IJanuaField);
    function GetAnCatId: IJanuaField;
    procedure SetAnCatId(const Value: IJanuaField);
    function GetAnNotes2: IJanuaField;
    procedure SetAnNotes2(const Value: IJanuaField);
    function GetAnNotes3: IJanuaField;
    procedure SetAnNotes3(const Value: IJanuaField);
    function GetAnEdi: IJanuaField;
    procedure SetAnEdi(const Value: IJanuaField);
    function GetAnPrivacy: IJanuaField;
    procedure SetAnPrivacy(const Value: IJanuaField);
    function GetAnOfficeId: IJanuaField;
    procedure SetAnOfficeId(const Value: IJanuaField);
    function GetAnCodProvRif: IJanuaField;
    procedure SetAnCodProvRif(const Value: IJanuaField);
    function GetAnDataFido: IJanuaField;
    procedure SetAnDataFido(const Value: IJanuaField);
    function GetAnUserInsert: IJanuaField;
    procedure SetAnUserInsert(const Value: IJanuaField);
    function GetAnUserUpdate: IJanuaField;
    procedure SetAnUserUpdate(const Value: IJanuaField);
    function GetAnAreaId: IJanuaField;
    procedure SetAnAreaId(const Value: IJanuaField);
    function GetAnAgentId: IJanuaField;
    procedure SetAnAgentId(const Value: IJanuaField);
    function GetAnAreaCode: IJanuaField;
    procedure SetAnAreaCode(const Value: IJanuaField);
    function GetAnZoneId: IJanuaField;
    procedure SetAnZoneId(const Value: IJanuaField);
    function GetAnInsId: IJanuaField;
    procedure SetAnInsId(const Value: IJanuaField);
    function GetAnUpdId: IJanuaField;
    procedure SetAnUpdId(const Value: IJanuaField);
    function GetAnDocuments: IJanuaField;
    procedure SetAnDocuments(const Value: IJanuaField);
    function GetAnLastDate: IJanuaField;
    procedure SetAnLastDate(const Value: IJanuaField);
    function GetAnBirthdate: IJanuaField;
    procedure SetAnBirthdate(const Value: IJanuaField);
    function GetAnOfficeTypeId: IJanuaField;
    procedure SetAnOfficeTypeId(const Value: IJanuaField);
    function GetAnSearchname: IJanuaField;
    procedure SetAnSearchname(const Value: IJanuaField);
    function GetAnExtraUeFlag: IJanuaField;
    procedure SetAnExtraUeFlag(const Value: IJanuaField);
    function GetAnExternalCode: IJanuaField;
    procedure SetAnExternalCode(const Value: IJanuaField);
    function GetAnVatId: IJanuaField;
    procedure SetAnVatId(const Value: IJanuaField);
    function GetAnPersonalFiscalCode: IJanuaField;
    procedure SetAnPersonalFiscalCode(const Value: IJanuaField);
    function GetAnPrivacyPrint: IJanuaField;
    procedure SetAnPrivacyPrint(const Value: IJanuaField);
    function GetAnSms: IJanuaField;
    procedure SetAnSms(const Value: IJanuaField);
    function GetAnEncryptedFiscalCode: IJanuaField;
    procedure SetAnEncryptedFiscalCode(const Value: IJanuaField);
    function GetAnVatPurcentage: IJanuaField;
    procedure SetAnVatPurcentage(const Value: IJanuaField);
    function GetAnStatus: IJanuaField;
    procedure SetAnStatus(const Value: IJanuaField);
    function GetAnOwnsite: IJanuaField;
    procedure SetAnOwnsite(const Value: IJanuaField);
    function GetAnInsuranceId: IJanuaField;
    procedure SetAnInsuranceId(const Value: IJanuaField);
    function GetAnAnagraphsAnagraphId: IJanuaField;
    procedure SetAnAnagraphsAnagraphId(const Value: IJanuaField);
    function GetAnMainLanguageCode: IJanuaField;
    procedure SetAnMainLanguageCode(const Value: IJanuaField);
    function GetAnMainCultureCode: IJanuaField;
    procedure SetAnMainCultureCode(const Value: IJanuaField);
    function GetAnFiscalCode: IJanuaField;
    procedure SetAnFiscalCode(const Value: IJanuaField);
    function GetAnMainGroupId: IJanuaField;
    procedure SetAnMainGroupId(const Value: IJanuaField);
    function GetAnImageId: IJanuaField;
    procedure SetAnImageId(const Value: IJanuaField);
    function GetLatitude: IJanuaField;
    procedure SetLatitude(const Value: IJanuaField);
    function GetLongitude: IJanuaField;
    procedure SetLongitude(const Value: IJanuaField);
    function GetTest: IJanuaField;
    procedure SetTest(const Value: IJanuaField);
    function GetSearchIndex: IJanuaField;
    procedure SetSearchIndex(const Value: IJanuaField);
    function GetAnBirthplace: IJanuaField;
    procedure SetAnBirthplace(const Value: IJanuaField);
    function GetAnBirthplaceCode: IJanuaField;
    procedure SetAnBirthplaceCode(const Value: IJanuaField);
    function GetAnagraph64: IJanuaField;
    procedure SetAnagraph64(const Value: IJanuaField);
    function GetMainCategoryId: IJanuaField;
    procedure SetMainCategoryId(const Value: IJanuaField);
    function GetOsmId: IJanuaField;
    procedure SetOsmId(const Value: IJanuaField);
    function GetAnDescription: IJanuaField;
    procedure SetAnDescription(const Value: IJanuaField);
    function GetAnAddressNumber: IJanuaField;
    procedure SetAnAddressNumber(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetCustomField1: IJanuaField;
    procedure SetCustomField1(const Value: IJanuaField);
    function GetCustomField2: IJanuaField;
    procedure SetCustomField2(const Value: IJanuaField);
    function GetCustomField3: IJanuaField;
    procedure SetCustomField3(const Value: IJanuaField);
    function GetCustomFloat1: IJanuaField;
    procedure SetCustomFloat1(const Value: IJanuaField);
    function GetCustomFloat2: IJanuaField;
    procedure SetCustomFloat2(const Value: IJanuaField);
    function GetCustomInt1: IJanuaField;
    procedure SetCustomInt1(const Value: IJanuaField);
    function GetCustomInt2: IJanuaField;
    procedure SetCustomInt2(const Value: IJanuaField);
    function GetSupplierId: IJanuaField;
    procedure SetSupplierId(const Value: IJanuaField);
    function GetVesselId: IJanuaField;
    procedure SetVesselId(const Value: IJanuaField);
    function GetAnCountryId: IJanuaField;
    procedure SetAnCountryId(const Value: IJanuaField);
    function GetAnIsoCountryCode2: IJanuaField;
    procedure SetAnIsoCountryCode2(const Value: IJanuaField);
    function GetCustomAnagraph: ICustomAnagraph;
    procedure SetCustomAnagraph(const Value: ICustomAnagraph);
    function GetAnFullAddress: IJanuaField;
    procedure SetAnFullAddress(const Value: IJanuaField);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    property AnTitle: IJanuaField read GetAnTitle write SetAnTitle;
    property AnName: IJanuaField read GetAnName write SetAnName;
    property AnSecondName: IJanuaField read GetAnSecondName write SetAnSecondName;
    property AnLastName: IJanuaField read GetAnLastName write SetAnLastName;
    property AnNotes: IJanuaField read GetAnNotes write SetAnNotes;
    property AnAddress: IJanuaField read GetAnAddress write SetAnAddress;
    property AnTown: IJanuaField read GetAnTown write SetAnTown;
    property AnPostalCode: IJanuaField read GetAnPostalCode write SetAnPostalCode;
    property AnIsoCountryCode: IJanuaField read GetAnIsoCountryCode write SetAnIsoCountryCode;
    property AnStateProvince: IJanuaField read GetAnStateProvince write SetAnStateProvince;
    property AnPhone: IJanuaField read GetAnPhone write SetAnPhone;
    property AnPhone2: IJanuaField read GetAnPhone2 write SetAnPhone2;
    property AnFax: IJanuaField read GetAnFax write SetAnFax;
    property AnCellular: IJanuaField read GetAnCellular write SetAnCellular;
    property AnCode: IJanuaField read GetAnCode write SetAnCode;
    property AnVatNumeric: IJanuaField read GetAnVatNumeric write SetAnVatNumeric;
    property AnEmail: IJanuaField read GetAnEmail write SetAnEmail;
    property AnWeb: IJanuaField read GetAnWeb write SetAnWeb;
    property AnContactId: IJanuaField read GetAnContactId write SetAnContactId;
    property AnBankAccount: IJanuaField read GetAnBankAccount write SetAnBankAccount;
    property AnPaymentDes: IJanuaField read GetAnPaymentDes write SetAnPaymentDes;
    property AnDiscount: IJanuaField read GetAnDiscount write SetAnDiscount;
    property AnDistance: IJanuaField read GetAnDistance write SetAnDistance;
    property AnDistanceMesunit: IJanuaField read GetAnDistanceMesunit write SetAnDistanceMesunit;
    property AnSex: IJanuaField read GetAnSex write SetAnSex;
    property AnCodComune: IJanuaField read GetAnCodComune write SetAnCodComune;
    property AnCodProvincia: IJanuaField read GetAnCodProvincia write SetAnCodProvincia;
    property AnCreditLine: IJanuaField read GetAnCreditLine write SetAnCreditLine;
    property AnCurrencyId: IJanuaField read GetAnCurrencyId write SetAnCurrencyId;
    property AnCatId: IJanuaField read GetAnCatId write SetAnCatId;
    property AnNotes2: IJanuaField read GetAnNotes2 write SetAnNotes2;
    property AnNotes3: IJanuaField read GetAnNotes3 write SetAnNotes3;
    property AnEdi: IJanuaField read GetAnEdi write SetAnEdi;
    property AnPrivacy: IJanuaField read GetAnPrivacy write SetAnPrivacy;
    property AnOfficeId: IJanuaField read GetAnOfficeId write SetAnOfficeId;
    property AnCodProvRif: IJanuaField read GetAnCodProvRif write SetAnCodProvRif;
    property AnDataFido: IJanuaField read GetAnDataFido write SetAnDataFido;
    property AnUserInsert: IJanuaField read GetAnUserInsert write SetAnUserInsert;
    property AnUserUpdate: IJanuaField read GetAnUserUpdate write SetAnUserUpdate;
    property AnAreaId: IJanuaField read GetAnAreaId write SetAnAreaId;
    property AnAgentId: IJanuaField read GetAnAgentId write SetAnAgentId;
    property AnAreaCode: IJanuaField read GetAnAreaCode write SetAnAreaCode;
    property AnZoneId: IJanuaField read GetAnZoneId write SetAnZoneId;
    property AnInsId: IJanuaField read GetAnInsId write SetAnInsId;
    property AnUpdId: IJanuaField read GetAnUpdId write SetAnUpdId;
    property AnDocuments: IJanuaField read GetAnDocuments write SetAnDocuments;
    property AnLastDate: IJanuaField read GetAnLastDate write SetAnLastDate;
    property AnBirthdate: IJanuaField read GetAnBirthdate write SetAnBirthdate;
    property AnOfficeTypeId: IJanuaField read GetAnOfficeTypeId write SetAnOfficeTypeId;
    property AnSearchname: IJanuaField read GetAnSearchname write SetAnSearchname;
    property AnExtraUeFlag: IJanuaField read GetAnExtraUeFlag write SetAnExtraUeFlag;
    property AnExternalCode: IJanuaField read GetAnExternalCode write SetAnExternalCode;
    property AnVatId: IJanuaField read GetAnVatId write SetAnVatId;
    property AnPersonalFiscalCode: IJanuaField read GetAnPersonalFiscalCode write SetAnPersonalFiscalCode;
    property AnPrivacyPrint: IJanuaField read GetAnPrivacyPrint write SetAnPrivacyPrint;
    property AnSms: IJanuaField read GetAnSms write SetAnSms;
    property AnEncryptedFiscalCode: IJanuaField read GetAnEncryptedFiscalCode write SetAnEncryptedFiscalCode;
    property AnVatPurcentage: IJanuaField read GetAnVatPurcentage write SetAnVatPurcentage;
    property AnStatus: IJanuaField read GetAnStatus write SetAnStatus;
    property AnOwnsite: IJanuaField read GetAnOwnsite write SetAnOwnsite;
    property AnInsuranceId: IJanuaField read GetAnInsuranceId write SetAnInsuranceId;
    property AnAnagraphsAnagraphId: IJanuaField read GetAnAnagraphsAnagraphId write SetAnAnagraphsAnagraphId;
    property AnMainLanguageCode: IJanuaField read GetAnMainLanguageCode write SetAnMainLanguageCode;
    property AnMainCultureCode: IJanuaField read GetAnMainCultureCode write SetAnMainCultureCode;
    property AnFiscalCode: IJanuaField read GetAnFiscalCode write SetAnFiscalCode;
    property AnMainGroupId: IJanuaField read GetAnMainGroupId write SetAnMainGroupId;
    property AnImageId: IJanuaField read GetAnImageId write SetAnImageId;
    property Latitude: IJanuaField read GetLatitude write SetLatitude;
    property Longitude: IJanuaField read GetLongitude write SetLongitude;
    property Test: IJanuaField read GetTest write SetTest;
    property SearchIndex: IJanuaField read GetSearchIndex write SetSearchIndex;
    property AnBirthplace: IJanuaField read GetAnBirthplace write SetAnBirthplace;
    property AnBirthplaceCode: IJanuaField read GetAnBirthplaceCode write SetAnBirthplaceCode;
    property Anagraph64: IJanuaField read GetAnagraph64 write SetAnagraph64;
    property MainCategoryId: IJanuaField read GetMainCategoryId write SetMainCategoryId;
    property OsmId: IJanuaField read GetOsmId write SetOsmId;
    property AnDescription: IJanuaField read GetAnDescription write SetAnDescription;
    property AnAddressNumber: IJanuaField read GetAnAddressNumber write SetAnAddressNumber;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property CustomField1: IJanuaField read GetCustomField1 write SetCustomField1;
    property CustomField2: IJanuaField read GetCustomField2 write SetCustomField2;
    property CustomField3: IJanuaField read GetCustomField3 write SetCustomField3;
    property CustomFloat1: IJanuaField read GetCustomFloat1 write SetCustomFloat1;
    property CustomFloat2: IJanuaField read GetCustomFloat2 write SetCustomFloat2;
    property CustomInt1: IJanuaField read GetCustomInt1 write SetCustomInt1;
    property CustomInt2: IJanuaField read GetCustomInt2 write SetCustomInt2;
    property SupplierId: IJanuaField read GetSupplierId write SetSupplierId;
    property VesselId: IJanuaField read GetVesselId write SetVesselId;
    property AnCountryId: IJanuaField read GetAnCountryId write SetAnCountryId;
    property AnIsoCountryCode2: IJanuaField read GetAnIsoCountryCode2 write SetAnIsoCountryCode2;
    property CustomAnagraph: ICustomAnagraph read GetCustomAnagraph write SetCustomAnagraph;
    property AnFullAddress: IJanuaField read GetAnFullAddress write SetAnFullAddress;
  end;

implementation

// ------------------------------------------ Impl TAnagraph -------------------------------

{ TCustomAnagraph }

constructor TCustomAnagraph.Create;
begin
  inherited;
  FPrefix := 'anag';
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FAnagraphId := AddCreateField(TJanuaFieldType.jptInteger, 'anagraph_id', 'anagraph_id');
  FAnTitle := AddCreateField(TJanuaFieldType.jptString, 'an_title', 'an_title');
  FAnName := AddCreateField(TJanuaFieldType.jptString, 'an_name', 'an_name');
  FAnSecondName := AddCreateField(TJanuaFieldType.jptString, 'an_second_name', 'an_second_name');
  FAnLastName := AddCreateField(TJanuaFieldType.jptString, 'an_last_name', 'an_last_name');
  FAnNotes := AddCreateField(TJanuaFieldType.jptString, 'an_notes', 'an_notes');
  FAnAddress := AddCreateField(TJanuaFieldType.jptString, 'an_address', 'an_address');
  FAnTown := AddCreateField(TJanuaFieldType.jptString, 'an_town', 'an_town');
  FAnPostalCode := AddCreateField(TJanuaFieldType.jptString, 'an_postal_code', 'an_postal_code');
  FAnIsoCountryCode := AddCreateField(TJanuaFieldType.jptString, 'an_iso_country_code',
    'an_iso_country_code');
  FAnStateProvince := AddCreateField(TJanuaFieldType.jptString, 'an_state_province', 'an_state_province');
  FAnPhone := AddCreateField(TJanuaFieldType.jptString, 'an_phone', 'an_phone');
  FAnPhone2 := AddCreateField(TJanuaFieldType.jptString, 'an_phone2', 'an_phone2');
  FAnFax := AddCreateField(TJanuaFieldType.jptString, 'an_fax', 'an_fax');
  FAnCellular := AddCreateField(TJanuaFieldType.jptString, 'an_cellular', 'an_cellular');
  FAnCode := AddCreateField(TJanuaFieldType.jptString, 'an_code', 'an_code');
  FAnVatNumeric := AddCreateField(TJanuaFieldType.jptString, 'an_vat_numeric', 'an_vat_numeric');
  FAnEmail := AddCreateField(TJanuaFieldType.jptString, 'an_email', 'an_email');
  FAnWeb := AddCreateField(TJanuaFieldType.jptString, 'an_web', 'an_web');
  FAnContactId := AddCreateField(TJanuaFieldType.jptInteger, 'an_contact_id', 'an_contact_id');
  FAnBankAccount := AddCreateField(TJanuaFieldType.jptString, 'an_bank_account', 'an_bank_account');
  FAnPaymentDes := AddCreateField(TJanuaFieldType.jptString, 'an_payment_des', 'an_payment_des');
  FAnDiscount := AddCreateField(TJanuaFieldType.jptFloat, 'an_discount', 'an_discount');
  FAnDistance := AddCreateField(TJanuaFieldType.jptInteger, 'an_distance', 'an_distance');
  FAnDistanceMesunit := AddCreateField(TJanuaFieldType.jptSmallint, 'an_distance_mesunit',
    'an_distance_mesunit');
  FAnSex := AddCreateField(TJanuaFieldType.jptString, 'an_sex', 'an_sex');
  FAnCodComune := AddCreateField(TJanuaFieldType.jptString, 'an_cod_comune', 'an_cod_comune');
  FAnCodProvincia := AddCreateField(TJanuaFieldType.jptString, 'an_cod_provincia', 'an_cod_provincia');
  FAnCreditLine := AddCreateField(TJanuaFieldType.jptFloat, 'an_credit_line', 'an_credit_line');
  FAnCurrencyId := AddCreateField(TJanuaFieldType.jptSmallint, 'an_currency_id', 'an_currency_id');
  FAnCatId := AddCreateField(TJanuaFieldType.jptSmallint, 'an_cat_id', 'an_cat_id');
  FAnNotes2 := AddCreateField(TJanuaFieldType.jptString, 'an_notes2', 'an_notes2');
  // Campo non Gestitoan_notes3 Type= ftWideMemo
  FAnEdi := AddCreateField(TJanuaFieldType.jptBoolean, 'an_edi', 'an_edi');
  FAnPrivacy := AddCreateField(TJanuaFieldType.jptBoolean, 'an_privacy', 'an_privacy');
  FAnOfficeId := AddCreateField(TJanuaFieldType.jptInteger, 'an_office_id', 'an_office_id');
  FAnCodProvRif := AddCreateField(TJanuaFieldType.jptString, 'an_cod_prov_rif', 'an_cod_prov_rif');
  FAnDataFido := AddCreateField(TJanuaFieldType.jptDate, 'an_data_fido', 'an_data_fido');
  FAnUserInsert := AddCreateField(TJanuaFieldType.jptString, 'an_user_insert', 'an_user_insert');
  FAnUserUpdate := AddCreateField(TJanuaFieldType.jptString, 'an_user_update', 'an_user_update');
  FAnAreaId := AddCreateField(TJanuaFieldType.jptSmallint, 'an_area_id', 'an_area_id');
  FAnAgentId := AddCreateField(TJanuaFieldType.jptInteger, 'an_agent_id', 'an_agent_id');
  FAnAreaCode := AddCreateField(TJanuaFieldType.jptString, 'an_area_code', 'an_area_code');
  FAnZoneId := AddCreateField(TJanuaFieldType.jptString, 'an_zone_id', 'an_zone_id');
  FAnInsId := AddCreateField(TJanuaFieldType.jptLargeint, 'an_ins_id', 'an_ins_id');
  FAnUpdId := AddCreateField(TJanuaFieldType.jptLargeint, 'an_upd_id', 'an_upd_id');
  FAnDocuments := AddCreateField(TJanuaFieldType.jptSmallint, 'an_documents', 'an_documents');
  FAnLastDate := AddCreateField(TJanuaFieldType.jptDate, 'an_last_date', 'an_last_date');
  FAnBirthdate := AddCreateField(TJanuaFieldType.jptDate, 'an_birthdate', 'an_birthdate');
  FAnOfficeTypeId := AddCreateField(TJanuaFieldType.jptSmallint, 'an_office_type_id', 'an_office_type_id');
  FAnSearchname := AddCreateField(TJanuaFieldType.jptString, 'an_searchname', 'an_searchname');
  FAnExtraUeFlag := AddCreateField(TJanuaFieldType.jptBoolean, 'an_extra_ue_flag', 'an_extra_ue_flag');
  FAnExternalCode := AddCreateField(TJanuaFieldType.jptString, 'an_external_code', 'an_external_code');
  FAnVatId := AddCreateField(TJanuaFieldType.jptSmallint, 'an_vat_id', 'an_vat_id');
  FAnPersonalFiscalCode := AddCreateField(TJanuaFieldType.jptString, 'an_personal_fiscal_code',
    'an_personal_fiscal_code');
  FAnPrivacyPrint := AddCreateField(TJanuaFieldType.jptSmallint, 'an_privacy_print', 'an_privacy_print');
  FAnSms := AddCreateField(TJanuaFieldType.jptBoolean, 'an_sms', 'an_sms');
  FAnEncryptedFiscalCode := AddCreateField(TJanuaFieldType.jptString, 'an_encrypted_fiscal_code',
    'an_encrypted_fiscal_code');
  FAnVatPurcentage := AddCreateField(TJanuaFieldType.jptSmallint, 'an_vat_purcentage', 'an_vat_purcentage');
  FAnStatus := AddCreateField(TJanuaFieldType.jptSmallint, 'an_status', 'an_status');
  FAnOwnsite := AddCreateField(TJanuaFieldType.jptBoolean, 'an_ownsite', 'an_ownsite');
  FAnInsuranceId := AddCreateField(TJanuaFieldType.jptLargeint, 'an_insurance_id', 'an_insurance_id');
  FAnAnagraphsAnagraphId := AddCreateField(TJanuaFieldType.jptInteger, 'an_anagraphs_anagraph_id',
    'an_anagraphs_anagraph_id');
  FAnMainLanguageCode := AddCreateField(TJanuaFieldType.jptString, 'an_main_language_code',
    'an_main_language_code');
  FAnMainCultureCode := AddCreateField(TJanuaFieldType.jptString, 'an_main_culture_code',
    'an_main_culture_code');
  FAnFiscalCode := AddCreateField(TJanuaFieldType.jptString, 'an_fiscal_code', 'an_fiscal_code');
  FAnMainGroupId := AddCreateField(TJanuaFieldType.jptInteger, 'an_main_group_id', 'an_main_group_id');
  FAnImageId := AddCreateField(TJanuaFieldType.jptLargeint, 'an_image_id', 'an_image_id');
  FLatitude := AddCreateField(TJanuaFieldType.jptFloat, 'latitude', 'latitude');
  FLongitude := AddCreateField(TJanuaFieldType.jptFloat, 'longitude', 'longitude');
  FTest := AddCreateField(TJanuaFieldType.jptFloat, 'test', 'test');
  FSearchIndex := AddCreateField(TJanuaFieldType.jptString, 'search_index', 'search_index');
  FAnBirthplace := AddCreateField(TJanuaFieldType.jptString, 'an_birthplace', 'an_birthplace');
  FAnBirthplaceCode := AddCreateField(TJanuaFieldType.jptString, 'an_birthplace_code', 'an_birthplace_code');
  FAnagraph64 := AddCreateField(TJanuaFieldType.jptString, 'anagraph64', 'anagraph64');
  FMainCategoryId := AddCreateField(TJanuaFieldType.jptSmallint, 'main_category_id', 'main_category_id');
  FOsmId := AddCreateField(TJanuaFieldType.jptLargeint, 'osm_id', 'osm_id');
  FAnDescription := AddCreateField(TJanuaFieldType.jptString, 'an_description', 'an_description');
  FAnAddressNumber := AddCreateField(TJanuaFieldType.jptString, 'an_address_number', 'an_address_number');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDateTime, 'insert_date', 'insert_date');
  FUpdateDate := AddCreateField(TJanuaFieldType.jptDateTime, 'update_date', 'update_date');
  FUserInsert := AddCreateField(TJanuaFieldType.jptInteger, 'user_insert', 'user_insert');
  // Campo non Gestitojguid Type= ftGuid
  FCustomField1 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_1', 'custom_field_1');
  FCustomField2 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_2', 'custom_field_2');
  FCustomField3 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_3', 'custom_field_3');
  FCustomFloat1 := AddCreateField(TJanuaFieldType.jptFloat, 'custom_float_1', 'custom_float_1');
  FCustomFloat2 := AddCreateField(TJanuaFieldType.jptFloat, 'custom_float_2', 'custom_float_2');
  FCustomInt1 := AddCreateField(TJanuaFieldType.jptInteger, 'custom_int_1', 'custom_int_1');
  FCustomInt2 := AddCreateField(TJanuaFieldType.jptInteger, 'custom_int_2', 'custom_int_2');
  FSupplierId := AddCreateField(TJanuaFieldType.jptInteger, 'supplier_id', 'supplier_id');
  FVesselId := AddCreateField(TJanuaFieldType.jptSmallint, 'vessel_id', 'vessel_id');
  FAnCountryId := AddCreateField(TJanuaFieldType.jptInteger, 'an_country_id', 'an_country_id');
  FAnIsoCountryCode2 := AddCreateField(TJanuaFieldType.jptString, 'an_iso_country_code2',
    'an_iso_country_code2');
  FAnFullAddress := AddCreateField(TJanuaFieldType.jptString, 'an_full_address', 'an_full_address');
end;

function TCustomAnagraph.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomAnagraph.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

procedure TCustomAnagraph.SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
begin

end;

function TCustomAnagraph.GetAnagraphId: IJanuaField;
begin
  Result := FAnagraphId;
end;

procedure TCustomAnagraph.SetAnagraphId(const Value: IJanuaField);
begin
  FAnagraphId := Value;
end;

function TCustomAnagraph.GetAnTitle: IJanuaField;
begin
  Result := FAnTitle;
end;

procedure TCustomAnagraph.SetAnTitle(const Value: IJanuaField);
begin
  FAnTitle := Value;
end;

function TCustomAnagraph.GetAnName: IJanuaField;
begin
  Result := FAnName;
end;

procedure TCustomAnagraph.SetAnName(const Value: IJanuaField);
begin
  FAnName := Value;
end;

function TCustomAnagraph.GetAnSecondName: IJanuaField;
begin
  Result := FAnSecondName;
end;

procedure TCustomAnagraph.SetAnSecondName(const Value: IJanuaField);
begin
  FAnSecondName := Value;
end;

function TCustomAnagraph.GetAnLastName: IJanuaField;
begin
  Result := FAnLastName;
end;

procedure TCustomAnagraph.SetAnLastName(const Value: IJanuaField);
begin
  FAnLastName := Value;
end;

function TCustomAnagraph.GetAnNotes: IJanuaField;
begin
  Result := FAnNotes;
end;

procedure TCustomAnagraph.SetAnNotes(const Value: IJanuaField);
begin
  FAnNotes := Value;
end;

function TCustomAnagraph.GetAnAddress: IJanuaField;
begin
  Result := FAnAddress;
end;

procedure TCustomAnagraph.SetAnAddress(const Value: IJanuaField);
begin
  FAnAddress := Value;
end;

function TCustomAnagraph.GetAnTown: IJanuaField;
begin
  Result := FAnTown;
end;

procedure TCustomAnagraph.SetAnTown(const Value: IJanuaField);
begin
  FAnTown := Value;
end;

function TCustomAnagraph.GetAnPostalCode: IJanuaField;
begin
  Result := FAnPostalCode;
end;

procedure TCustomAnagraph.SetAnPostalCode(const Value: IJanuaField);
begin
  FAnPostalCode := Value;
end;

function TCustomAnagraph.GetAnIsoCountryCode: IJanuaField;
begin
  Result := FAnIsoCountryCode;
end;

procedure TCustomAnagraph.SetAnIsoCountryCode(const Value: IJanuaField);
begin
  FAnIsoCountryCode := Value;
end;

function TCustomAnagraph.GetAnStateProvince: IJanuaField;
begin
  Result := FAnStateProvince;
end;

procedure TCustomAnagraph.SetAnStateProvince(const Value: IJanuaField);
begin
  FAnStateProvince := Value;
end;

function TCustomAnagraph.GetAnPhone: IJanuaField;
begin
  Result := FAnPhone;
end;

procedure TCustomAnagraph.SetAnPhone(const Value: IJanuaField);
begin
  FAnPhone := Value;
end;

function TCustomAnagraph.GetAnPhone2: IJanuaField;
begin
  Result := FAnPhone2;
end;

procedure TCustomAnagraph.SetAnPhone2(const Value: IJanuaField);
begin
  FAnPhone2 := Value;
end;

function TCustomAnagraph.GetAnFax: IJanuaField;
begin
  Result := FAnFax;
end;

procedure TCustomAnagraph.SetAnFax(const Value: IJanuaField);
begin
  FAnFax := Value;
end;

function TCustomAnagraph.GetAnCellular: IJanuaField;
begin
  Result := FAnCellular;
end;

procedure TCustomAnagraph.SetAnCellular(const Value: IJanuaField);
begin
  FAnCellular := Value;
end;

function TCustomAnagraph.GetAnCode: IJanuaField;
begin
  Result := FAnCode;
end;

procedure TCustomAnagraph.SetAnCode(const Value: IJanuaField);
begin
  FAnCode := Value;
end;

function TCustomAnagraph.GetAnVatNumeric: IJanuaField;
begin
  Result := FAnVatNumeric;
end;

procedure TCustomAnagraph.SetAnVatNumeric(const Value: IJanuaField);
begin
  FAnVatNumeric := Value;
end;

function TCustomAnagraph.GetAnEmail: IJanuaField;
begin
  Result := FAnEmail;
end;

procedure TCustomAnagraph.SetAnEmail(const Value: IJanuaField);
begin
  FAnEmail := Value;
end;

function TCustomAnagraph.GetAnWeb: IJanuaField;
begin
  Result := FAnWeb;
end;

procedure TCustomAnagraph.SetAnWeb(const Value: IJanuaField);
begin
  FAnWeb := Value;
end;

function TCustomAnagraph.GetAnContactId: IJanuaField;
begin
  Result := FAnContactId;
end;

procedure TCustomAnagraph.SetAnContactId(const Value: IJanuaField);
begin
  FAnContactId := Value;
end;

function TCustomAnagraph.GetAnBankAccount: IJanuaField;
begin
  Result := FAnBankAccount;
end;

procedure TCustomAnagraph.SetAnBankAccount(const Value: IJanuaField);
begin
  FAnBankAccount := Value;
end;

function TCustomAnagraph.GetAnPaymentDes: IJanuaField;
begin
  Result := FAnPaymentDes;
end;

procedure TCustomAnagraph.SetAnPaymentDes(const Value: IJanuaField);
begin
  FAnPaymentDes := Value;
end;

function TCustomAnagraph.GetAnDiscount: IJanuaField;
begin
  Result := FAnDiscount;
end;

procedure TCustomAnagraph.SetAnDiscount(const Value: IJanuaField);
begin
  FAnDiscount := Value;
end;

function TCustomAnagraph.GetAnDistance: IJanuaField;
begin
  Result := FAnDistance;
end;

procedure TCustomAnagraph.SetAnDistance(const Value: IJanuaField);
begin
  FAnDistance := Value;
end;

function TCustomAnagraph.GetAnDistanceMesunit: IJanuaField;
begin
  Result := FAnDistanceMesunit;
end;

procedure TCustomAnagraph.SetAnDistanceMesunit(const Value: IJanuaField);
begin
  FAnDistanceMesunit := Value;
end;

function TCustomAnagraph.GetAnSex: IJanuaField;
begin
  Result := FAnSex;
end;

procedure TCustomAnagraph.SetAnSex(const Value: IJanuaField);
begin
  FAnSex := Value;
end;

function TCustomAnagraph.GetAnCodComune: IJanuaField;
begin
  Result := FAnCodComune;
end;

procedure TCustomAnagraph.SetAnCodComune(const Value: IJanuaField);
begin
  FAnCodComune := Value;
end;

function TCustomAnagraph.GetAnCodProvincia: IJanuaField;
begin
  Result := FAnCodProvincia;
end;

procedure TCustomAnagraph.SetAnCodProvincia(const Value: IJanuaField);
begin
  FAnCodProvincia := Value;
end;

function TCustomAnagraph.GetAnCreditLine: IJanuaField;
begin
  Result := FAnCreditLine;
end;

procedure TCustomAnagraph.SetAnCreditLine(const Value: IJanuaField);
begin
  FAnCreditLine := Value;
end;

function TCustomAnagraph.GetAnCurrencyId: IJanuaField;
begin
  Result := FAnCurrencyId;
end;

procedure TCustomAnagraph.SetAnCurrencyId(const Value: IJanuaField);
begin
  FAnCurrencyId := Value;
end;

function TCustomAnagraph.GetAnCatId: IJanuaField;
begin
  Result := FAnCatId;
end;

procedure TCustomAnagraph.SetAnCatId(const Value: IJanuaField);
begin
  FAnCatId := Value;
end;

function TCustomAnagraph.GetAnNotes2: IJanuaField;
begin
  Result := FAnNotes2;
end;

procedure TCustomAnagraph.SetAnNotes2(const Value: IJanuaField);
begin
  FAnNotes2 := Value;
end;

function TCustomAnagraph.GetAnNotes3: IJanuaField;
begin
  Result := FAnNotes3;
end;

procedure TCustomAnagraph.SetAnNotes3(const Value: IJanuaField);
begin
  FAnNotes3 := Value;
end;

function TCustomAnagraph.GetAnEdi: IJanuaField;
begin
  Result := FAnEdi;
end;

procedure TCustomAnagraph.SetAnEdi(const Value: IJanuaField);
begin
  FAnEdi := Value;
end;

function TCustomAnagraph.GetAnPrivacy: IJanuaField;
begin
  Result := FAnPrivacy;
end;

procedure TCustomAnagraph.SetAnPrivacy(const Value: IJanuaField);
begin
  FAnPrivacy := Value;
end;

function TCustomAnagraph.GetAnOfficeId: IJanuaField;
begin
  Result := FAnOfficeId;
end;

procedure TCustomAnagraph.SetAnOfficeId(const Value: IJanuaField);
begin
  FAnOfficeId := Value;
end;

function TCustomAnagraph.GetAnCodProvRif: IJanuaField;
begin
  Result := FAnCodProvRif;
end;

procedure TCustomAnagraph.SetAnCodProvRif(const Value: IJanuaField);
begin
  FAnCodProvRif := Value;
end;

function TCustomAnagraph.GetAnDataFido: IJanuaField;
begin
  Result := FAnDataFido;
end;

procedure TCustomAnagraph.SetAnDataFido(const Value: IJanuaField);
begin
  FAnDataFido := Value;
end;

function TCustomAnagraph.GetAnUserInsert: IJanuaField;
begin
  Result := FAnUserInsert;
end;

procedure TCustomAnagraph.SetAnUserInsert(const Value: IJanuaField);
begin
  FAnUserInsert := Value;
end;

function TCustomAnagraph.GetAnUserUpdate: IJanuaField;
begin
  Result := FAnUserUpdate;
end;

procedure TCustomAnagraph.SetAnUserUpdate(const Value: IJanuaField);
begin
  FAnUserUpdate := Value;
end;

function TCustomAnagraph.GetAnAreaId: IJanuaField;
begin
  Result := FAnAreaId;
end;

procedure TCustomAnagraph.SetAnAreaId(const Value: IJanuaField);
begin
  FAnAreaId := Value;
end;

function TCustomAnagraph.GetAnAgentId: IJanuaField;
begin
  Result := FAnAgentId;
end;

procedure TCustomAnagraph.SetAnAgentId(const Value: IJanuaField);
begin
  FAnAgentId := Value;
end;

function TCustomAnagraph.GetAnAreaCode: IJanuaField;
begin
  Result := FAnAreaCode;
end;

procedure TCustomAnagraph.SetAnAreaCode(const Value: IJanuaField);
begin
  FAnAreaCode := Value;
end;

function TCustomAnagraph.GetAnZoneId: IJanuaField;
begin
  Result := FAnZoneId;
end;

procedure TCustomAnagraph.SetAnZoneId(const Value: IJanuaField);
begin
  FAnZoneId := Value;
end;

function TCustomAnagraph.GetAnInsId: IJanuaField;
begin
  Result := FAnInsId;
end;

procedure TCustomAnagraph.SetAnInsId(const Value: IJanuaField);
begin
  FAnInsId := Value;
end;

function TCustomAnagraph.GetAnUpdId: IJanuaField;
begin
  Result := FAnUpdId;
end;

procedure TCustomAnagraph.SetAnUpdId(const Value: IJanuaField);
begin
  FAnUpdId := Value;
end;

function TCustomAnagraph.GetAnDocuments: IJanuaField;
begin
  Result := FAnDocuments;
end;

procedure TCustomAnagraph.SetAnDocuments(const Value: IJanuaField);
begin
  FAnDocuments := Value;
end;

function TCustomAnagraph.GetAnLastDate: IJanuaField;
begin
  Result := FAnLastDate;
end;

procedure TCustomAnagraph.SetAnLastDate(const Value: IJanuaField);
begin
  FAnLastDate := Value;
end;

function TCustomAnagraph.GetAnBirthdate: IJanuaField;
begin
  Result := FAnBirthdate;
end;

procedure TCustomAnagraph.SetAnBirthdate(const Value: IJanuaField);
begin
  FAnBirthdate := Value;
end;

function TCustomAnagraph.GetAnOfficeTypeId: IJanuaField;
begin
  Result := FAnOfficeTypeId;
end;

procedure TCustomAnagraph.SetAnOfficeTypeId(const Value: IJanuaField);
begin
  FAnOfficeTypeId := Value;
end;

function TCustomAnagraph.GetAnSearchname: IJanuaField;
begin
  Result := FAnSearchname;
end;

procedure TCustomAnagraph.SetAnSearchname(const Value: IJanuaField);
begin
  FAnSearchname := Value;
end;

function TCustomAnagraph.GetAnExtraUeFlag: IJanuaField;
begin
  Result := FAnExtraUeFlag;
end;

procedure TCustomAnagraph.SetAnExtraUeFlag(const Value: IJanuaField);
begin
  FAnExtraUeFlag := Value;
end;

function TCustomAnagraph.GetAnExternalCode: IJanuaField;
begin
  Result := FAnExternalCode;
end;

procedure TCustomAnagraph.SetAnExternalCode(const Value: IJanuaField);
begin
  FAnExternalCode := Value;
end;

function TCustomAnagraph.GetAnVatId: IJanuaField;
begin
  Result := FAnVatId;
end;

procedure TCustomAnagraph.SetAnVatId(const Value: IJanuaField);
begin
  FAnVatId := Value;
end;

function TCustomAnagraph.GetAnPersonalFiscalCode: IJanuaField;
begin
  Result := FAnPersonalFiscalCode;
end;

procedure TCustomAnagraph.SetAnPersonalFiscalCode(const Value: IJanuaField);
begin
  FAnPersonalFiscalCode := Value;
end;

function TCustomAnagraph.GetAnPrivacyPrint: IJanuaField;
begin
  Result := FAnPrivacyPrint;
end;

procedure TCustomAnagraph.SetAnPrivacyPrint(const Value: IJanuaField);
begin
  FAnPrivacyPrint := Value;
end;

function TCustomAnagraph.GetAnSms: IJanuaField;
begin
  Result := FAnSms;
end;

procedure TCustomAnagraph.SetAnSms(const Value: IJanuaField);
begin
  FAnSms := Value;
end;

function TCustomAnagraph.GetAnEncryptedFiscalCode: IJanuaField;
begin
  Result := FAnEncryptedFiscalCode;
end;

procedure TCustomAnagraph.SetAnEncryptedFiscalCode(const Value: IJanuaField);
begin
  FAnEncryptedFiscalCode := Value;
end;

function TCustomAnagraph.GetAnVatPurcentage: IJanuaField;
begin
  Result := FAnVatPurcentage;
end;

procedure TCustomAnagraph.SetAnVatPurcentage(const Value: IJanuaField);
begin
  FAnVatPurcentage := Value;
end;

function TCustomAnagraph.GetAnStatus: IJanuaField;
begin
  Result := FAnStatus;
end;

procedure TCustomAnagraph.SetAnStatus(const Value: IJanuaField);
begin
  FAnStatus := Value;
end;

function TCustomAnagraph.GetAnOwnsite: IJanuaField;
begin
  Result := FAnOwnsite;
end;

procedure TCustomAnagraph.SetAnOwnsite(const Value: IJanuaField);
begin
  FAnOwnsite := Value;
end;

function TCustomAnagraph.GetAnInsuranceId: IJanuaField;
begin
  Result := FAnInsuranceId;
end;

procedure TCustomAnagraph.SetAnInsuranceId(const Value: IJanuaField);
begin
  FAnInsuranceId := Value;
end;

function TCustomAnagraph.GetAnAnagraphsAnagraphId: IJanuaField;
begin
  Result := FAnAnagraphsAnagraphId;
end;

procedure TCustomAnagraph.SetAnAnagraphsAnagraphId(const Value: IJanuaField);
begin
  FAnAnagraphsAnagraphId := Value;
end;

function TCustomAnagraph.GetAnMainLanguageCode: IJanuaField;
begin
  Result := FAnMainLanguageCode;
end;

procedure TCustomAnagraph.SetAnMainLanguageCode(const Value: IJanuaField);
begin
  FAnMainLanguageCode := Value;
end;

function TCustomAnagraph.GetAnMainCultureCode: IJanuaField;
begin
  Result := FAnMainCultureCode;
end;

procedure TCustomAnagraph.SetAnMainCultureCode(const Value: IJanuaField);
begin
  FAnMainCultureCode := Value;
end;

function TCustomAnagraph.GetAnFiscalCode: IJanuaField;
begin
  Result := FAnFiscalCode;
end;

function TCustomAnagraph.GetAnFullAddress: IJanuaField;
begin
  Result := FAnFullAddress;
end;

procedure TCustomAnagraph.SetAnFiscalCode(const Value: IJanuaField);
begin
  FAnFiscalCode := Value;
end;

procedure TCustomAnagraph.SetAnFullAddress(const Value: IJanuaField);
begin
  FAnFullAddress := Value;
end;

function TCustomAnagraph.GetAnMainGroupId: IJanuaField;
begin
  Result := FAnMainGroupId;
end;

procedure TCustomAnagraph.SetAnMainGroupId(const Value: IJanuaField);
begin
  FAnMainGroupId := Value;
end;

function TCustomAnagraph.GetAnImageId: IJanuaField;
begin
  Result := FAnImageId;
end;

procedure TCustomAnagraph.SetAnImageId(const Value: IJanuaField);
begin
  FAnImageId := Value;
end;

function TCustomAnagraph.GetLatitude: IJanuaField;
begin
  Result := FLatitude;
end;

procedure TCustomAnagraph.SetLatitude(const Value: IJanuaField);
begin
  FLatitude := Value;
end;

function TCustomAnagraph.GetLongitude: IJanuaField;
begin
  Result := FLongitude;
end;

procedure TCustomAnagraph.SetLongitude(const Value: IJanuaField);
begin
  FLongitude := Value;
end;

function TCustomAnagraph.GetTest: IJanuaField;
begin
  Result := FTest;
end;

procedure TCustomAnagraph.SetTest(const Value: IJanuaField);
begin
  FTest := Value;
end;

function TCustomAnagraph.GetSearchIndex: IJanuaField;
begin
  Result := FSearchIndex;
end;

procedure TCustomAnagraph.SetSearchIndex(const Value: IJanuaField);
begin
  FSearchIndex := Value;
end;

function TCustomAnagraph.GetAnBirthplace: IJanuaField;
begin
  Result := FAnBirthplace;
end;

procedure TCustomAnagraph.SetAnBirthplace(const Value: IJanuaField);
begin
  FAnBirthplace := Value;
end;

function TCustomAnagraph.GetAnBirthplaceCode: IJanuaField;
begin
  Result := FAnBirthplaceCode;
end;

procedure TCustomAnagraph.SetAnBirthplaceCode(const Value: IJanuaField);
begin
  FAnBirthplaceCode := Value;
end;

function TCustomAnagraph.GetAnagraph64: IJanuaField;
begin
  Result := FAnagraph64;
end;

procedure TCustomAnagraph.SetAnagraph64(const Value: IJanuaField);
begin
  FAnagraph64 := Value;
end;

function TCustomAnagraph.GetMainCategoryId: IJanuaField;
begin
  Result := FMainCategoryId;
end;

procedure TCustomAnagraph.SetMainCategoryId(const Value: IJanuaField);
begin
  FMainCategoryId := Value;
end;

function TCustomAnagraph.GetOsmId: IJanuaField;
begin
  Result := FOsmId;
end;

procedure TCustomAnagraph.SetOsmId(const Value: IJanuaField);
begin
  FOsmId := Value;
end;

function TCustomAnagraph.GetAnDescription: IJanuaField;
begin
  Result := FAnDescription;
end;

procedure TCustomAnagraph.SetAnDescription(const Value: IJanuaField);
begin
  FAnDescription := Value;
end;

function TCustomAnagraph.GetAnAddressNumber: IJanuaField;
begin
  Result := FAnAddressNumber;
end;

procedure TCustomAnagraph.SetAnAddressNumber(const Value: IJanuaField);
begin
  FAnAddressNumber := Value;
end;

function TCustomAnagraph.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomAnagraph.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomAnagraph.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TCustomAnagraph.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TCustomAnagraph.GetUserInsert: IJanuaField;
begin
  Result := FUserInsert;
end;

procedure TCustomAnagraph.SetUserInsert(const Value: IJanuaField);
begin
  FUserInsert := Value;
end;

function TCustomAnagraph.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomAnagraph.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomAnagraph.GetCustomField1: IJanuaField;
begin
  Result := FCustomField1;
end;

procedure TCustomAnagraph.SetCustomField1(const Value: IJanuaField);
begin
  FCustomField1 := Value;
end;

function TCustomAnagraph.GetCustomField2: IJanuaField;
begin
  Result := FCustomField2;
end;

procedure TCustomAnagraph.SetCustomField2(const Value: IJanuaField);
begin
  FCustomField2 := Value;
end;

function TCustomAnagraph.GetCustomField3: IJanuaField;
begin
  Result := FCustomField3;
end;

procedure TCustomAnagraph.SetCustomField3(const Value: IJanuaField);
begin
  FCustomField3 := Value;
end;

function TCustomAnagraph.GetCustomFloat1: IJanuaField;
begin
  Result := FCustomFloat1;
end;

procedure TCustomAnagraph.SetCustomFloat1(const Value: IJanuaField);
begin
  FCustomFloat1 := Value;
end;

function TCustomAnagraph.GetCustomFloat2: IJanuaField;
begin
  Result := FCustomFloat2;
end;

procedure TCustomAnagraph.SetCustomFloat2(const Value: IJanuaField);
begin
  FCustomFloat2 := Value;
end;

function TCustomAnagraph.GetCustomInt1: IJanuaField;
begin
  Result := FCustomInt1;
end;

procedure TCustomAnagraph.SetCustomInt1(const Value: IJanuaField);
begin
  FCustomInt1 := Value;
end;

function TCustomAnagraph.GetCustomInt2: IJanuaField;
begin
  Result := FCustomInt2;
end;

procedure TCustomAnagraph.SetCustomInt2(const Value: IJanuaField);
begin
  FCustomInt2 := Value;
end;

function TCustomAnagraph.GetSupplierId: IJanuaField;
begin
  Result := FSupplierId;
end;

procedure TCustomAnagraph.SetSupplierId(const Value: IJanuaField);
begin
  FSupplierId := Value;
end;

function TCustomAnagraph.GetVesselId: IJanuaField;
begin
  Result := FVesselId;
end;

procedure TCustomAnagraph.SetVesselId(const Value: IJanuaField);
begin
  FVesselId := Value;
end;

function TCustomAnagraph.GetAnCountryId: IJanuaField;
begin
  Result := FAnCountryId;
end;

procedure TCustomAnagraph.SetAnCountryId(const Value: IJanuaField);
begin
  FAnCountryId := Value;
end;

function TCustomAnagraph.GetAnIsoCountryCode2: IJanuaField;
begin
  Result := FAnIsoCountryCode2;
end;

procedure TCustomAnagraph.SetAnIsoCountryCode2(const Value: IJanuaField);
begin
  FAnIsoCountryCode2 := Value;
end;

{ TCustomAnagraphs }
constructor TCustomAnagraphs.Create;
begin
  inherited;

end;

function TCustomAnagraphs.GetDbSchemaId: IJanuaField;
begin
  Result := self.CustomAnagraph.DbSchemaId;
end;

procedure TCustomAnagraphs.SetDbSchemaId(const Value: IJanuaField);
begin
  self.CustomAnagraph.DbSchemaId := Value;
end;

function TCustomAnagraphs.GetAnagraphId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnagraphId;
end;

procedure TCustomAnagraphs.SetAnagraphId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnagraphId := Value;
end;

function TCustomAnagraphs.GetAnTitle: IJanuaField;
begin
  Result := self.CustomAnagraph.AnTitle;
end;

procedure TCustomAnagraphs.SetAnTitle(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnTitle := Value;
end;

function TCustomAnagraphs.GetAnName: IJanuaField;
begin
  Result := self.CustomAnagraph.AnName;
end;

procedure TCustomAnagraphs.SetAnName(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnName := Value;
end;

function TCustomAnagraphs.GetAnSecondName: IJanuaField;
begin
  Result := self.CustomAnagraph.AnSecondName;
end;

procedure TCustomAnagraphs.SetAnSecondName(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnSecondName := Value;
end;

function TCustomAnagraphs.GetAnLastName: IJanuaField;
begin
  Result := self.CustomAnagraph.AnLastName;
end;

procedure TCustomAnagraphs.SetAnLastName(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnLastName := Value;
end;

function TCustomAnagraphs.GetAnNotes: IJanuaField;
begin
  Result := self.CustomAnagraph.AnNotes;
end;

procedure TCustomAnagraphs.SetAnNotes(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnNotes := Value;
end;

function TCustomAnagraphs.GetAnAddress: IJanuaField;
begin
  Result := self.CustomAnagraph.AnAddress;
end;

procedure TCustomAnagraphs.SetAnAddress(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnAddress := Value;
end;

function TCustomAnagraphs.GetAnTown: IJanuaField;
begin
  Result := self.CustomAnagraph.AnTown;
end;

procedure TCustomAnagraphs.SetAnTown(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnTown := Value;
end;

function TCustomAnagraphs.GetAnPostalCode: IJanuaField;
begin
  Result := self.CustomAnagraph.AnPostalCode;
end;

procedure TCustomAnagraphs.SetAnPostalCode(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnPostalCode := Value;
end;

function TCustomAnagraphs.GetAnIsoCountryCode: IJanuaField;
begin
  Result := self.CustomAnagraph.AnIsoCountryCode;
end;

procedure TCustomAnagraphs.SetAnIsoCountryCode(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnIsoCountryCode := Value;
end;

function TCustomAnagraphs.GetAnStateProvince: IJanuaField;
begin
  Result := self.CustomAnagraph.AnStateProvince;
end;

procedure TCustomAnagraphs.SetAnStateProvince(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnStateProvince := Value;
end;

function TCustomAnagraphs.GetAnPhone: IJanuaField;
begin
  Result := self.CustomAnagraph.AnPhone;
end;

procedure TCustomAnagraphs.SetAnPhone(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnPhone := Value;
end;

function TCustomAnagraphs.GetAnPhone2: IJanuaField;
begin
  Result := self.CustomAnagraph.AnPhone2;
end;

procedure TCustomAnagraphs.SetAnPhone2(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnPhone2 := Value;
end;

function TCustomAnagraphs.GetAnFax: IJanuaField;
begin
  Result := self.CustomAnagraph.AnFax;
end;

procedure TCustomAnagraphs.SetAnFax(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnFax := Value;
end;

function TCustomAnagraphs.GetAnCellular: IJanuaField;
begin
  Result := self.CustomAnagraph.AnCellular;
end;

procedure TCustomAnagraphs.SetAnCellular(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnCellular := Value;
end;

function TCustomAnagraphs.GetAnCode: IJanuaField;
begin
  Result := self.CustomAnagraph.AnCode;
end;

procedure TCustomAnagraphs.SetAnCode(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnCode := Value;
end;

function TCustomAnagraphs.GetAnVatNumeric: IJanuaField;
begin
  Result := self.CustomAnagraph.AnVatNumeric;
end;

procedure TCustomAnagraphs.SetAnVatNumeric(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnVatNumeric := Value;
end;

function TCustomAnagraphs.GetAnEmail: IJanuaField;
begin
  Result := self.CustomAnagraph.AnEmail;
end;

procedure TCustomAnagraphs.SetAnEmail(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnEmail := Value;
end;

function TCustomAnagraphs.GetAnWeb: IJanuaField;
begin
  Result := self.CustomAnagraph.AnWeb;
end;

procedure TCustomAnagraphs.SetAnWeb(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnWeb := Value;
end;

function TCustomAnagraphs.GetAnContactId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnContactId;
end;

procedure TCustomAnagraphs.SetAnContactId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnContactId := Value;
end;

function TCustomAnagraphs.GetAnBankAccount: IJanuaField;
begin
  Result := self.CustomAnagraph.AnBankAccount;
end;

procedure TCustomAnagraphs.SetAnBankAccount(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnBankAccount := Value;
end;

function TCustomAnagraphs.GetAnPaymentDes: IJanuaField;
begin
  Result := self.CustomAnagraph.AnPaymentDes;
end;

procedure TCustomAnagraphs.SetAnPaymentDes(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnPaymentDes := Value;
end;

function TCustomAnagraphs.GetAnDiscount: IJanuaField;
begin
  Result := self.CustomAnagraph.AnDiscount;
end;

procedure TCustomAnagraphs.SetAnDiscount(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnDiscount := Value;
end;

function TCustomAnagraphs.GetAnDistance: IJanuaField;
begin
  Result := self.CustomAnagraph.AnDistance;
end;

procedure TCustomAnagraphs.SetAnDistance(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnDistance := Value;
end;

function TCustomAnagraphs.GetAnDistanceMesunit: IJanuaField;
begin
  Result := self.CustomAnagraph.AnDistanceMesunit;
end;

procedure TCustomAnagraphs.SetAnDistanceMesunit(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnDistanceMesunit := Value;
end;

function TCustomAnagraphs.GetAnSex: IJanuaField;
begin
  Result := self.CustomAnagraph.AnSex;
end;

procedure TCustomAnagraphs.SetAnSex(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnSex := Value;
end;

function TCustomAnagraphs.GetAnCodComune: IJanuaField;
begin
  Result := self.CustomAnagraph.AnCodComune;
end;

procedure TCustomAnagraphs.SetAnCodComune(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnCodComune := Value;
end;

function TCustomAnagraphs.GetAnCodProvincia: IJanuaField;
begin
  Result := self.CustomAnagraph.AnCodProvincia;
end;

procedure TCustomAnagraphs.SetAnCodProvincia(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnCodProvincia := Value;
end;

function TCustomAnagraphs.GetAnCreditLine: IJanuaField;
begin
  Result := self.CustomAnagraph.AnCreditLine;
end;

procedure TCustomAnagraphs.SetAnCreditLine(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnCreditLine := Value;
end;

function TCustomAnagraphs.GetAnCurrencyId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnCurrencyId;
end;

procedure TCustomAnagraphs.SetAnCurrencyId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnCurrencyId := Value;
end;

function TCustomAnagraphs.GetAnCatId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnCatId;
end;

procedure TCustomAnagraphs.SetAnCatId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnCatId := Value;
end;

function TCustomAnagraphs.GetAnNotes2: IJanuaField;
begin
  Result := self.CustomAnagraph.AnNotes2;
end;

procedure TCustomAnagraphs.SetAnNotes2(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnNotes2 := Value;
end;

function TCustomAnagraphs.GetAnNotes3: IJanuaField;
begin
  Result := self.CustomAnagraph.AnNotes3;
end;

procedure TCustomAnagraphs.SetAnNotes3(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnNotes3 := Value;
end;

function TCustomAnagraphs.GetAnEdi: IJanuaField;
begin
  Result := self.CustomAnagraph.AnEdi;
end;

procedure TCustomAnagraphs.SetAnEdi(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnEdi := Value;
end;

function TCustomAnagraphs.GetAnPrivacy: IJanuaField;
begin
  Result := self.CustomAnagraph.AnPrivacy;
end;

procedure TCustomAnagraphs.SetAnPrivacy(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnPrivacy := Value;
end;

function TCustomAnagraphs.GetAnOfficeId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnOfficeId;
end;

procedure TCustomAnagraphs.SetAnOfficeId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnOfficeId := Value;
end;

function TCustomAnagraphs.GetAnCodProvRif: IJanuaField;
begin
  Result := self.CustomAnagraph.AnCodProvRif;
end;

procedure TCustomAnagraphs.SetAnCodProvRif(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnCodProvRif := Value;
end;

function TCustomAnagraphs.GetAnDataFido: IJanuaField;
begin
  Result := self.CustomAnagraph.AnDataFido;
end;

procedure TCustomAnagraphs.SetAnDataFido(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnDataFido := Value;
end;

function TCustomAnagraphs.GetAnUserInsert: IJanuaField;
begin
  Result := self.CustomAnagraph.AnUserInsert;
end;

procedure TCustomAnagraphs.SetAnUserInsert(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnUserInsert := Value;
end;

function TCustomAnagraphs.GetAnUserUpdate: IJanuaField;
begin
  Result := self.CustomAnagraph.AnUserUpdate;
end;

procedure TCustomAnagraphs.SetAnUserUpdate(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnUserUpdate := Value;
end;

function TCustomAnagraphs.GetAnAreaId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnAreaId;
end;

procedure TCustomAnagraphs.SetAnAreaId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnAreaId := Value;
end;

function TCustomAnagraphs.GetAnAgentId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnAgentId;
end;

procedure TCustomAnagraphs.SetAnAgentId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnAgentId := Value;
end;

function TCustomAnagraphs.GetAnAreaCode: IJanuaField;
begin
  Result := self.CustomAnagraph.AnAreaCode;
end;

procedure TCustomAnagraphs.SetAnAreaCode(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnAreaCode := Value;
end;

function TCustomAnagraphs.GetAnZoneId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnZoneId;
end;

procedure TCustomAnagraphs.SetAnZoneId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnZoneId := Value;
end;

function TCustomAnagraphs.GetAnInsId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnInsId;
end;

procedure TCustomAnagraphs.SetAnInsId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnInsId := Value;
end;

function TCustomAnagraphs.GetAnUpdId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnUpdId;
end;

procedure TCustomAnagraphs.SetAnUpdId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnUpdId := Value;
end;

function TCustomAnagraphs.GetAnDocuments: IJanuaField;
begin
  Result := self.CustomAnagraph.AnDocuments;
end;

procedure TCustomAnagraphs.SetAnDocuments(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnDocuments := Value;
end;

function TCustomAnagraphs.GetAnLastDate: IJanuaField;
begin
  Result := self.CustomAnagraph.AnLastDate;
end;

procedure TCustomAnagraphs.SetAnLastDate(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnLastDate := Value;
end;

function TCustomAnagraphs.GetAnBirthdate: IJanuaField;
begin
  Result := self.CustomAnagraph.AnBirthdate;
end;

procedure TCustomAnagraphs.SetAnBirthdate(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnBirthdate := Value;
end;

function TCustomAnagraphs.GetAnOfficeTypeId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnOfficeTypeId;
end;

procedure TCustomAnagraphs.SetAnOfficeTypeId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnOfficeTypeId := Value;
end;

function TCustomAnagraphs.GetAnSearchname: IJanuaField;
begin
  Result := self.CustomAnagraph.AnSearchname;
end;

procedure TCustomAnagraphs.SetAnSearchname(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnSearchname := Value;
end;

function TCustomAnagraphs.GetAnExtraUeFlag: IJanuaField;
begin
  Result := self.CustomAnagraph.AnExtraUeFlag;
end;

procedure TCustomAnagraphs.SetAnExtraUeFlag(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnExtraUeFlag := Value;
end;

function TCustomAnagraphs.GetAnExternalCode: IJanuaField;
begin
  Result := self.CustomAnagraph.AnExternalCode;
end;

procedure TCustomAnagraphs.SetAnExternalCode(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnExternalCode := Value;
end;

function TCustomAnagraphs.GetAnVatId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnVatId;
end;

procedure TCustomAnagraphs.SetAnVatId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnVatId := Value;
end;

function TCustomAnagraphs.GetAnPersonalFiscalCode: IJanuaField;
begin
  Result := self.CustomAnagraph.AnPersonalFiscalCode;
end;

procedure TCustomAnagraphs.SetAnPersonalFiscalCode(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnPersonalFiscalCode := Value;
end;

function TCustomAnagraphs.GetAnPrivacyPrint: IJanuaField;
begin
  Result := self.CustomAnagraph.AnPrivacyPrint;
end;

procedure TCustomAnagraphs.SetAnPrivacyPrint(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnPrivacyPrint := Value;
end;

function TCustomAnagraphs.GetAnSms: IJanuaField;
begin
  Result := self.CustomAnagraph.AnSms;
end;

procedure TCustomAnagraphs.SetAnSms(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnSms := Value;
end;

function TCustomAnagraphs.GetAnEncryptedFiscalCode: IJanuaField;
begin
  Result := self.CustomAnagraph.AnEncryptedFiscalCode;
end;

procedure TCustomAnagraphs.SetAnEncryptedFiscalCode(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnEncryptedFiscalCode := Value;
end;

function TCustomAnagraphs.GetAnVatPurcentage: IJanuaField;
begin
  Result := self.CustomAnagraph.AnVatPurcentage;
end;

procedure TCustomAnagraphs.SetAnVatPurcentage(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnVatPurcentage := Value;
end;

function TCustomAnagraphs.GetAnStatus: IJanuaField;
begin
  Result := self.CustomAnagraph.AnStatus;
end;

procedure TCustomAnagraphs.SetAnStatus(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnStatus := Value;
end;

function TCustomAnagraphs.GetAnOwnsite: IJanuaField;
begin
  Result := self.CustomAnagraph.AnOwnsite;
end;

procedure TCustomAnagraphs.SetAnOwnsite(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnOwnsite := Value;
end;

function TCustomAnagraphs.GetAnInsuranceId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnInsuranceId;
end;

procedure TCustomAnagraphs.SetAnInsuranceId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnInsuranceId := Value;
end;

function TCustomAnagraphs.GetAnAnagraphsAnagraphId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnAnagraphsAnagraphId;
end;

procedure TCustomAnagraphs.SetAnAnagraphsAnagraphId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnAnagraphsAnagraphId := Value;
end;

function TCustomAnagraphs.GetAnMainLanguageCode: IJanuaField;
begin
  Result := self.CustomAnagraph.AnMainLanguageCode;
end;

procedure TCustomAnagraphs.SetAnMainLanguageCode(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnMainLanguageCode := Value;
end;

function TCustomAnagraphs.GetAnMainCultureCode: IJanuaField;
begin
  Result := self.CustomAnagraph.AnMainCultureCode;
end;

procedure TCustomAnagraphs.SetAnMainCultureCode(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnMainCultureCode := Value;
end;

function TCustomAnagraphs.GetAnFiscalCode: IJanuaField;
begin
  Result := self.CustomAnagraph.AnFiscalCode;
end;

function TCustomAnagraphs.GetAnFullAddress: IJanuaField;
begin
  Result := self.CustomAnagraph.AnFullAddress
end;

procedure TCustomAnagraphs.SetAnFiscalCode(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnFiscalCode := Value;
end;

procedure TCustomAnagraphs.SetAnFullAddress(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnFullAddress := Value
end;

function TCustomAnagraphs.GetAnMainGroupId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnMainGroupId;
end;

procedure TCustomAnagraphs.SetAnMainGroupId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnMainGroupId := Value;
end;

function TCustomAnagraphs.GetAnImageId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnImageId;
end;

procedure TCustomAnagraphs.SetAnImageId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnImageId := Value;
end;

function TCustomAnagraphs.GetLatitude: IJanuaField;
begin
  Result := self.CustomAnagraph.Latitude;
end;

procedure TCustomAnagraphs.SetLatitude(const Value: IJanuaField);
begin
  self.CustomAnagraph.Latitude := Value;
end;

function TCustomAnagraphs.GetLongitude: IJanuaField;
begin
  Result := self.CustomAnagraph.Longitude;
end;

procedure TCustomAnagraphs.SetLongitude(const Value: IJanuaField);
begin
  self.CustomAnagraph.Longitude := Value;
end;

function TCustomAnagraphs.GetTest: IJanuaField;
begin
  Result := self.CustomAnagraph.Test;
end;

procedure TCustomAnagraphs.SetTest(const Value: IJanuaField);
begin
  self.CustomAnagraph.Test := Value;
end;

function TCustomAnagraphs.GetSearchIndex: IJanuaField;
begin
  Result := self.CustomAnagraph.SearchIndex;
end;

procedure TCustomAnagraphs.SetSearchIndex(const Value: IJanuaField);
begin
  self.CustomAnagraph.SearchIndex := Value;
end;

function TCustomAnagraphs.GetAnBirthplace: IJanuaField;
begin
  Result := self.CustomAnagraph.AnBirthplace;
end;

procedure TCustomAnagraphs.SetAnBirthplace(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnBirthplace := Value;
end;

function TCustomAnagraphs.GetAnBirthplaceCode: IJanuaField;
begin
  Result := self.CustomAnagraph.AnBirthplaceCode;
end;

procedure TCustomAnagraphs.SetAnBirthplaceCode(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnBirthplaceCode := Value;
end;

function TCustomAnagraphs.GetAnagraph64: IJanuaField;
begin
  Result := self.CustomAnagraph.Anagraph64;
end;

procedure TCustomAnagraphs.SetAnagraph64(const Value: IJanuaField);
begin
  self.CustomAnagraph.Anagraph64 := Value;
end;

function TCustomAnagraphs.GetMainCategoryId: IJanuaField;
begin
  Result := self.CustomAnagraph.MainCategoryId;
end;

procedure TCustomAnagraphs.SetMainCategoryId(const Value: IJanuaField);
begin
  self.CustomAnagraph.MainCategoryId := Value;
end;

function TCustomAnagraphs.GetOsmId: IJanuaField;
begin
  Result := self.CustomAnagraph.OsmId;
end;

procedure TCustomAnagraphs.SetOsmId(const Value: IJanuaField);
begin
  self.CustomAnagraph.OsmId := Value;
end;

function TCustomAnagraphs.GetAnDescription: IJanuaField;
begin
  Result := self.CustomAnagraph.AnDescription;
end;

procedure TCustomAnagraphs.SetAnDescription(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnDescription := Value;
end;

function TCustomAnagraphs.GetAnAddressNumber: IJanuaField;
begin
  Result := self.CustomAnagraph.AnAddressNumber;
end;

procedure TCustomAnagraphs.SetAnAddressNumber(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnAddressNumber := Value;
end;

function TCustomAnagraphs.GetInsertDate: IJanuaField;
begin
  Result := self.CustomAnagraph.InsertDate;
end;

procedure TCustomAnagraphs.SetInsertDate(const Value: IJanuaField);
begin
  self.CustomAnagraph.InsertDate := Value;
end;

function TCustomAnagraphs.GetUpdateDate: IJanuaField;
begin
  Result := self.CustomAnagraph.UpdateDate;
end;

procedure TCustomAnagraphs.SetUpdateDate(const Value: IJanuaField);
begin
  self.CustomAnagraph.UpdateDate := Value;
end;

function TCustomAnagraphs.GetUserInsert: IJanuaField;
begin
  Result := self.CustomAnagraph.UserInsert;
end;

procedure TCustomAnagraphs.SetUserInsert(const Value: IJanuaField);
begin
  self.CustomAnagraph.UserInsert := Value;
end;

function TCustomAnagraphs.GetJguid: IJanuaField;
begin
  Result := self.CustomAnagraph.Jguid;
end;

procedure TCustomAnagraphs.SetJguid(const Value: IJanuaField);
begin
  self.CustomAnagraph.Jguid := Value;
end;

function TCustomAnagraphs.GetCustomField1: IJanuaField;
begin
  Result := self.CustomAnagraph.CustomField1;
end;

procedure TCustomAnagraphs.SetCustomField1(const Value: IJanuaField);
begin
  self.CustomAnagraph.CustomField1 := Value;
end;

function TCustomAnagraphs.GetCustomField2: IJanuaField;
begin
  Result := self.CustomAnagraph.CustomField2;
end;

procedure TCustomAnagraphs.SetCustomField2(const Value: IJanuaField);
begin
  self.CustomAnagraph.CustomField2 := Value;
end;

function TCustomAnagraphs.GetCustomField3: IJanuaField;
begin
  Result := self.CustomAnagraph.CustomField3;
end;

procedure TCustomAnagraphs.SetCustomField3(const Value: IJanuaField);
begin
  self.CustomAnagraph.CustomField3 := Value;
end;

function TCustomAnagraphs.GetCustomFloat1: IJanuaField;
begin
  Result := self.CustomAnagraph.CustomFloat1;
end;

procedure TCustomAnagraphs.SetCustomFloat1(const Value: IJanuaField);
begin
  self.CustomAnagraph.CustomFloat1 := Value;
end;

function TCustomAnagraphs.GetCustomFloat2: IJanuaField;
begin
  Result := self.CustomAnagraph.CustomFloat2;
end;

procedure TCustomAnagraphs.SetCustomFloat2(const Value: IJanuaField);
begin
  self.CustomAnagraph.CustomFloat2 := Value;
end;

function TCustomAnagraphs.GetCustomInt1: IJanuaField;
begin
  Result := self.CustomAnagraph.CustomInt1;
end;

procedure TCustomAnagraphs.SetCustomInt1(const Value: IJanuaField);
begin
  self.CustomAnagraph.CustomInt1 := Value;
end;

function TCustomAnagraphs.GetCustomInt2: IJanuaField;
begin
  Result := self.CustomAnagraph.CustomInt2;
end;

procedure TCustomAnagraphs.SetCustomInt2(const Value: IJanuaField);
begin
  self.CustomAnagraph.CustomInt2 := Value;
end;

function TCustomAnagraphs.GetSupplierId: IJanuaField;
begin
  Result := self.CustomAnagraph.SupplierId;
end;

procedure TCustomAnagraphs.SetSupplierId(const Value: IJanuaField);
begin
  self.CustomAnagraph.SupplierId := Value;
end;

function TCustomAnagraphs.GetVesselId: IJanuaField;
begin
  Result := self.CustomAnagraph.VesselId;
end;

procedure TCustomAnagraphs.SetVesselId(const Value: IJanuaField);
begin
  self.CustomAnagraph.VesselId := Value;
end;

function TCustomAnagraphs.GetAnCountryId: IJanuaField;
begin
  Result := self.CustomAnagraph.AnCountryId;
end;

procedure TCustomAnagraphs.SetAnCountryId(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnCountryId := Value;
end;

function TCustomAnagraphs.GetAnIsoCountryCode2: IJanuaField;
begin
  Result := self.CustomAnagraph.AnIsoCountryCode2;
end;

procedure TCustomAnagraphs.SetAnIsoCountryCode2(const Value: IJanuaField);
begin
  self.CustomAnagraph.AnIsoCountryCode2 := Value;
end;

function TCustomAnagraphs.GetCustomAnagraph: ICustomAnagraph;
begin
  Result := self.FRecord as ICustomAnagraph;
end;

procedure TCustomAnagraphs.SetCustomAnagraph(const Value: ICustomAnagraph);
begin
  self.FRecord := Value;
end;

end.

unit udmJanuaPgTMDocumentsStorage;

interface

uses
  System.SysUtils, System.Classes, udmJanuaPgDocumentsStorage, Data.DB, DBAccess, Uni, MemDS, UniProvider,
  PostgreSQLUniProvider, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.StorageBin;

type
  TdmJanuaPgTMDocumentsStorage = class(TdmJanuaPgDocumentsStorage)
    qryDocCosts: TUniQuery;
    LargeintField1: TLargeintField;
    LargeintField2: TLargeintField;
    LargeintField3: TLargeintField;
    WideMemoField1: TWideMemoField;
    SmallintField7: TSmallintField;
    FloatField9: TFloatField;
    LargeintField4: TLargeintField;
    LargeintField5: TLargeintField;
    SmallintField8: TSmallintField;
    SmallintField9: TSmallintField;
    SmallintField10: TSmallintField;
    FloatField10: TFloatField;
    SmallintField11: TSmallintField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    DateField2: TDateField;
    SmallintField12: TSmallintField;
    SQLTimeStampField3: TDateTimeField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    DateField3: TDateField;
    IntegerField5: TIntegerField;
    GuidField2: TGuidField;
    GuidField3: TGuidField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    WideMemoField2: TWideMemoField;
    DateField4: TDateField;
    SmallintField13: TSmallintField;
    SmallintField14: TSmallintField;
    CurrencyField3: TCurrencyField;
    FloatField20: TFloatField;
    CurrencyField4: TCurrencyField;
    IntegerField6: TIntegerField;
    qryDocIncomes: TUniQuery;
    LargeintField6: TLargeintField;
    LargeintField7: TLargeintField;
    LargeintField8: TLargeintField;
    DateField5: TDateField;
    SmallintField15: TSmallintField;
    WideMemoField3: TWideMemoField;
    FloatField21: TFloatField;
    SmallintField16: TSmallintField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    SmallintField17: TSmallintField;
    SmallintField18: TSmallintField;
    SmallintField19: TSmallintField;
    SmallintField20: TSmallintField;
    FloatField27: TFloatField;
    SmallintField21: TSmallintField;
    SQLTimeStampField4: TDateTimeField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    LargeintField9: TLargeintField;
    LargeintField10: TLargeintField;
    IntegerField7: TIntegerField;
    SmallintField22: TSmallintField;
    SmallintField23: TSmallintField;
    SmallintField24: TSmallintField;
    GuidField4: TGuidField;
    FloatField30: TFloatField;
    SmallintField25: TSmallintField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    DateField6: TDateField;
    SmallintField26: TSmallintField;
    WideStringField25: TWideStringField;
    SQLTimeStampField5: TDateTimeField;
    SQLTimeStampField6: TDateTimeField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    WideStringField26: TWideStringField;
    DateField7: TDateField;
    IntegerField10: TIntegerField;
    WideStringField27: TWideStringField;
    IntegerField11: TIntegerField;
    GuidField5: TGuidField;
    GuidField6: TGuidField;
    WideStringField28: TWideStringField;
    CurrencyField5: TCurrencyField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    CurrencyField6: TCurrencyField;
    WideStringField32: TWideStringField;
    WideMemoField4: TWideMemoField;
    DateField8: TDateField;
    SmallintField27: TSmallintField;
    SmallintField28: TSmallintField;
    BooleanField6: TBooleanField;
    CurrencyField7: TCurrencyField;
    FloatField40: TFloatField;
    CurrencyField8: TCurrencyField;
    WideStringField33: TWideStringField;
    IntegerField12: TIntegerField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    WideStringField36: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmJanuaPgTMDocumentsStorage: TdmJanuaPgTMDocumentsStorage;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.

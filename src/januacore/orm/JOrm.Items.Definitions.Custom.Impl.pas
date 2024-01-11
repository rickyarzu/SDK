unit JOrm.Items.Definitions.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Items.Definitions.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomItemDefinition = class(TJanuaRecord, ICustomItemDefinition)
  private
    FDbSchemaId: IJanuaField;
    FId: IJanuaField;
    FCode: IJanuaField;
    FModel: IJanuaField;
    FDescription: IJanuaField;
    FMainSupplierId: IJanuaField;
    FConventions: IJanuaField;
    FSupplierCode: IJanuaField;
    FInsertDate: IJanuaField;
    FUpdateDate: IJanuaField;
    FInsId: IJanuaField;
    FUpdId: IJanuaField;
    FUserInsert: IJanuaField;
    FUserUpdate: IJanuaField;
    FLocal: IJanuaField;
    FWildcard: IJanuaField;
    FRefTypeId: IJanuaField;
    FPkgUnits: IJanuaField;
    FStatus: IJanuaField;
    FReserved: IJanuaField;
    FExtraFlag: IJanuaField;
    FBranchId: IJanuaField;
    FMinHeigth: IJanuaField;
    FMaxHeigth: IJanuaField;
    FRepeats: IJanuaField;
    FPeriodic: IJanuaField;
    FGuarantee: IJanuaField;
    FPromoPoints: IJanuaField;
    FPromoPointForfait: IJanuaField;
    FPromoGroup: IJanuaField;
    FPromo: IJanuaField;
    FBrandId: IJanuaField;
    FTypeId: IJanuaField;
    FTypeRefId: IJanuaField;
    FMunitId: IJanuaField;
    FFamilyId: IJanuaField;
    FIconfile: IJanuaField;
    FBannerfile: IJanuaField;
    FImagefile: IJanuaField;
    FTitle: IJanuaField;
    FSubtitle: IJanuaField;
    FLefimage: IJanuaField;
    FRightimage: IJanuaField;
    FItemRtftext: IJanuaField;
    FItemText: IJanuaField;
    FJguid: IJanuaField;
    FMainPrice: IJanuaField;
    FSearchIndex: IJanuaField;
  private
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetModel: IJanuaField;
    procedure SetModel(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetMainSupplierId: IJanuaField;
    procedure SetMainSupplierId(const Value: IJanuaField);
    function GetConventions: IJanuaField;
    procedure SetConventions(const Value: IJanuaField);
    function GetSupplierCode: IJanuaField;
    procedure SetSupplierCode(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetInsId: IJanuaField;
    procedure SetInsId(const Value: IJanuaField);
    function GetUpdId: IJanuaField;
    procedure SetUpdId(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetWildcard: IJanuaField;
    procedure SetWildcard(const Value: IJanuaField);
    function GetRefTypeId: IJanuaField;
    procedure SetRefTypeId(const Value: IJanuaField);
    function GetPkgUnits: IJanuaField;
    procedure SetPkgUnits(const Value: IJanuaField);
    function GetStatus: IJanuaField;
    procedure SetStatus(const Value: IJanuaField);
    function GetReserved: IJanuaField;
    procedure SetReserved(const Value: IJanuaField);
    function GetExtraFlag: IJanuaField;
    procedure SetExtraFlag(const Value: IJanuaField);
    function GetBranchId: IJanuaField;
    procedure SetBranchId(const Value: IJanuaField);
    function GetMinHeigth: IJanuaField;
    procedure SetMinHeigth(const Value: IJanuaField);
    function GetMaxHeigth: IJanuaField;
    procedure SetMaxHeigth(const Value: IJanuaField);
    function GetRepeats: IJanuaField;
    procedure SetRepeats(const Value: IJanuaField);
    function GetPeriodic: IJanuaField;
    procedure SetPeriodic(const Value: IJanuaField);
    function GetGuarantee: IJanuaField;
    procedure SetGuarantee(const Value: IJanuaField);
    function GetPromoPoints: IJanuaField;
    procedure SetPromoPoints(const Value: IJanuaField);
    function GetPromoPointForfait: IJanuaField;
    procedure SetPromoPointForfait(const Value: IJanuaField);
    function GetPromoGroup: IJanuaField;
    procedure SetPromoGroup(const Value: IJanuaField);
    function GetPromo: IJanuaField;
    procedure SetPromo(const Value: IJanuaField);
    function GetBrandId: IJanuaField;
    procedure SetBrandId(const Value: IJanuaField);
    function GetTypeId: IJanuaField;
    procedure SetTypeId(const Value: IJanuaField);
    function GetTypeRefId: IJanuaField;
    procedure SetTypeRefId(const Value: IJanuaField);
    function GetMunitId: IJanuaField;
    procedure SetMunitId(const Value: IJanuaField);
    function GetFamilyId: IJanuaField;
    procedure SetFamilyId(const Value: IJanuaField);
    function GetIconfile: IJanuaField;
    procedure SetIconfile(const Value: IJanuaField);
    function GetBannerfile: IJanuaField;
    procedure SetBannerfile(const Value: IJanuaField);
    function GetImagefile: IJanuaField;
    procedure SetImagefile(const Value: IJanuaField);
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    function GetSubtitle: IJanuaField;
    procedure SetSubtitle(const Value: IJanuaField);
    function GetLefimage: IJanuaField;
    procedure SetLefimage(const Value: IJanuaField);
    function GetRightimage: IJanuaField;
    procedure SetRightimage(const Value: IJanuaField);
    function GetItemRtftext: IJanuaField;
    procedure SetItemRtftext(const Value: IJanuaField);
    function GetItemText: IJanuaField;
    procedure SetItemText(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetMainPrice: IJanuaField;
    procedure SetMainPrice(const Value: IJanuaField);
    function GetSearchIndex: IJanuaField;
    procedure SetSearchIndex(const Value: IJanuaField);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Id: IJanuaField read GetId write SetId;
    property Code: IJanuaField read GetCode write SetCode;
    property Model: IJanuaField read GetModel write SetModel;
    property Description: IJanuaField read GetDescription write SetDescription;
    property MainSupplierId: IJanuaField read GetMainSupplierId write SetMainSupplierId;
    property Conventions: IJanuaField read GetConventions write SetConventions;
    property SupplierCode: IJanuaField read GetSupplierCode write SetSupplierCode;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property InsId: IJanuaField read GetInsId write SetInsId;
    property UpdId: IJanuaField read GetUpdId write SetUpdId;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property Local: IJanuaField read GetLocal write SetLocal;
    property Wildcard: IJanuaField read GetWildcard write SetWildcard;
    property RefTypeId: IJanuaField read GetRefTypeId write SetRefTypeId;
    property PkgUnits: IJanuaField read GetPkgUnits write SetPkgUnits;
    property Status: IJanuaField read GetStatus write SetStatus;
    property Reserved: IJanuaField read GetReserved write SetReserved;
    property ExtraFlag: IJanuaField read GetExtraFlag write SetExtraFlag;
    property BranchId: IJanuaField read GetBranchId write SetBranchId;
    property MinHeigth: IJanuaField read GetMinHeigth write SetMinHeigth;
    property MaxHeigth: IJanuaField read GetMaxHeigth write SetMaxHeigth;
    property Repeats: IJanuaField read GetRepeats write SetRepeats;
    property Periodic: IJanuaField read GetPeriodic write SetPeriodic;
    property Guarantee: IJanuaField read GetGuarantee write SetGuarantee;
    property PromoPoints: IJanuaField read GetPromoPoints write SetPromoPoints;
    property PromoPointForfait: IJanuaField read GetPromoPointForfait write SetPromoPointForfait;
    property PromoGroup: IJanuaField read GetPromoGroup write SetPromoGroup;
    property Promo: IJanuaField read GetPromo write SetPromo;
    property BrandId: IJanuaField read GetBrandId write SetBrandId;
    property TypeId: IJanuaField read GetTypeId write SetTypeId;
    property TypeRefId: IJanuaField read GetTypeRefId write SetTypeRefId;
    property MunitId: IJanuaField read GetMunitId write SetMunitId;
    property FamilyId: IJanuaField read GetFamilyId write SetFamilyId;
    property Iconfile: IJanuaField read GetIconfile write SetIconfile;
    property Bannerfile: IJanuaField read GetBannerfile write SetBannerfile;
    property Imagefile: IJanuaField read GetImagefile write SetImagefile;
    property Title: IJanuaField read GetTitle write SetTitle;
    property Subtitle: IJanuaField read GetSubtitle write SetSubtitle;
    property Lefimage: IJanuaField read GetLefimage write SetLefimage;
    property Rightimage: IJanuaField read GetRightimage write SetRightimage;
    property ItemRtftext: IJanuaField read GetItemRtftext write SetItemRtftext;
    property ItemText: IJanuaField read GetItemText write SetItemText;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property MainPrice: IJanuaField read GetMainPrice write SetMainPrice;
    property SearchIndex: IJanuaField read GetSearchIndex write SetSearchIndex;

  end;

  TCustomItemDefinitions = class(TJanuaRecordSet, IJanuaRecordSet, ICustomItemDefinitions)
  private
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetModel: IJanuaField;
    procedure SetModel(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetMainSupplierId: IJanuaField;
    procedure SetMainSupplierId(const Value: IJanuaField);
    function GetConventions: IJanuaField;
    procedure SetConventions(const Value: IJanuaField);
    function GetSupplierCode: IJanuaField;
    procedure SetSupplierCode(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetInsId: IJanuaField;
    procedure SetInsId(const Value: IJanuaField);
    function GetUpdId: IJanuaField;
    procedure SetUpdId(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetWildcard: IJanuaField;
    procedure SetWildcard(const Value: IJanuaField);
    function GetRefTypeId: IJanuaField;
    procedure SetRefTypeId(const Value: IJanuaField);
    function GetPkgUnits: IJanuaField;
    procedure SetPkgUnits(const Value: IJanuaField);
    function GetStatus: IJanuaField;
    procedure SetStatus(const Value: IJanuaField);
    function GetReserved: IJanuaField;
    procedure SetReserved(const Value: IJanuaField);
    function GetExtraFlag: IJanuaField;
    procedure SetExtraFlag(const Value: IJanuaField);
    function GetBranchId: IJanuaField;
    procedure SetBranchId(const Value: IJanuaField);
    function GetMinHeigth: IJanuaField;
    procedure SetMinHeigth(const Value: IJanuaField);
    function GetMaxHeigth: IJanuaField;
    procedure SetMaxHeigth(const Value: IJanuaField);
    function GetRepeats: IJanuaField;
    procedure SetRepeats(const Value: IJanuaField);
    function GetPeriodic: IJanuaField;
    procedure SetPeriodic(const Value: IJanuaField);
    function GetGuarantee: IJanuaField;
    procedure SetGuarantee(const Value: IJanuaField);
    function GetPromoPoints: IJanuaField;
    procedure SetPromoPoints(const Value: IJanuaField);
    function GetPromoPointForfait: IJanuaField;
    procedure SetPromoPointForfait(const Value: IJanuaField);
    function GetPromoGroup: IJanuaField;
    procedure SetPromoGroup(const Value: IJanuaField);
    function GetPromo: IJanuaField;
    procedure SetPromo(const Value: IJanuaField);
    function GetBrandId: IJanuaField;
    procedure SetBrandId(const Value: IJanuaField);
    function GetTypeId: IJanuaField;
    procedure SetTypeId(const Value: IJanuaField);
    function GetTypeRefId: IJanuaField;
    procedure SetTypeRefId(const Value: IJanuaField);
    function GetMunitId: IJanuaField;
    procedure SetMunitId(const Value: IJanuaField);
    function GetFamilyId: IJanuaField;
    procedure SetFamilyId(const Value: IJanuaField);
    function GetIconfile: IJanuaField;
    procedure SetIconfile(const Value: IJanuaField);
    function GetBannerfile: IJanuaField;
    procedure SetBannerfile(const Value: IJanuaField);
    function GetImagefile: IJanuaField;
    procedure SetImagefile(const Value: IJanuaField);
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    function GetSubtitle: IJanuaField;
    procedure SetSubtitle(const Value: IJanuaField);
    function GetLefimage: IJanuaField;
    procedure SetLefimage(const Value: IJanuaField);
    function GetRightimage: IJanuaField;
    procedure SetRightimage(const Value: IJanuaField);
    function GetItemRtftext: IJanuaField;
    procedure SetItemRtftext(const Value: IJanuaField);
    function GetItemText: IJanuaField;
    procedure SetItemText(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetMainPrice: IJanuaField;
    procedure SetMainPrice(const Value: IJanuaField);
    function GetSearchIndex: IJanuaField;
    procedure SetSearchIndex(const Value: IJanuaField);
    function GetItemDefinition: ICustomItemDefinition;
    procedure SetItemDefinition(const Value: ICustomItemDefinition);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Id: IJanuaField read GetId write SetId;
    property Code: IJanuaField read GetCode write SetCode;
    property Model: IJanuaField read GetModel write SetModel;
    property Description: IJanuaField read GetDescription write SetDescription;
    property MainSupplierId: IJanuaField read GetMainSupplierId write SetMainSupplierId;
    property Conventions: IJanuaField read GetConventions write SetConventions;
    property SupplierCode: IJanuaField read GetSupplierCode write SetSupplierCode;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property InsId: IJanuaField read GetInsId write SetInsId;
    property UpdId: IJanuaField read GetUpdId write SetUpdId;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property Local: IJanuaField read GetLocal write SetLocal;
    property Wildcard: IJanuaField read GetWildcard write SetWildcard;
    property RefTypeId: IJanuaField read GetRefTypeId write SetRefTypeId;
    property PkgUnits: IJanuaField read GetPkgUnits write SetPkgUnits;
    property Status: IJanuaField read GetStatus write SetStatus;
    property Reserved: IJanuaField read GetReserved write SetReserved;
    property ExtraFlag: IJanuaField read GetExtraFlag write SetExtraFlag;
    property BranchId: IJanuaField read GetBranchId write SetBranchId;
    property MinHeigth: IJanuaField read GetMinHeigth write SetMinHeigth;
    property MaxHeigth: IJanuaField read GetMaxHeigth write SetMaxHeigth;
    property Repeats: IJanuaField read GetRepeats write SetRepeats;
    property Periodic: IJanuaField read GetPeriodic write SetPeriodic;
    property Guarantee: IJanuaField read GetGuarantee write SetGuarantee;
    property PromoPoints: IJanuaField read GetPromoPoints write SetPromoPoints;
    property PromoPointForfait: IJanuaField read GetPromoPointForfait write SetPromoPointForfait;
    property PromoGroup: IJanuaField read GetPromoGroup write SetPromoGroup;
    property Promo: IJanuaField read GetPromo write SetPromo;
    property BrandId: IJanuaField read GetBrandId write SetBrandId;
    property TypeId: IJanuaField read GetTypeId write SetTypeId;
    property TypeRefId: IJanuaField read GetTypeRefId write SetTypeRefId;
    property MunitId: IJanuaField read GetMunitId write SetMunitId;
    property FamilyId: IJanuaField read GetFamilyId write SetFamilyId;
    property Iconfile: IJanuaField read GetIconfile write SetIconfile;
    property Bannerfile: IJanuaField read GetBannerfile write SetBannerfile;
    property Imagefile: IJanuaField read GetImagefile write SetImagefile;
    property Title: IJanuaField read GetTitle write SetTitle;
    property Subtitle: IJanuaField read GetSubtitle write SetSubtitle;
    property Lefimage: IJanuaField read GetLefimage write SetLefimage;
    property Rightimage: IJanuaField read GetRightimage write SetRightimage;
    property ItemRtftext: IJanuaField read GetItemRtftext write SetItemRtftext;
    property ItemText: IJanuaField read GetItemText write SetItemText;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property MainPrice: IJanuaField read GetMainPrice write SetMainPrice;
    property SearchIndex: IJanuaField read GetSearchIndex write SetSearchIndex;
    property ItemDefinition: ICustomItemDefinition read GetItemDefinition write SetItemDefinition;
  end;

implementation

// ------------------------------------------ Impl TItemDefinition -------------------------------

{ TCustomItemDefinition }

constructor TCustomItemDefinition.Create;
begin
  inherited;
  FPrefix := 'idfn';
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FId := AddCreateField(TJanuaFieldType.jptSmallint, 'id', 'id');
  FCode := AddCreateField(TJanuaFieldType.jptString, 'code', 'code');
  FModel := AddCreateField(TJanuaFieldType.jptString, 'model', 'model');
  FDescription := AddCreateField(TJanuaFieldType.jptString, 'description', 'description');
  FMainSupplierId := AddCreateField(TJanuaFieldType.jptSmallint, 'main_supplier_id', 'main_supplier_id');
  FConventions := AddCreateField(TJanuaFieldType.jptBoolean, 'conventions', 'conventions');
  FSupplierCode := AddCreateField(TJanuaFieldType.jptString, 'supplier_code', 'supplier_code');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDateTime, 'insert_date', 'insert_date');
  FUpdateDate := AddCreateField(TJanuaFieldType.jptDateTime, 'update_date', 'update_date');
  FInsId := AddCreateField(TJanuaFieldType.jptSmallint, 'ins_id', 'ins_id');
  FUpdId := AddCreateField(TJanuaFieldType.jptSmallint, 'upd_id', 'upd_id');
  FUserInsert := AddCreateField(TJanuaFieldType.jptString, 'user_insert', 'user_insert');
  FUserUpdate := AddCreateField(TJanuaFieldType.jptString, 'user_update', 'user_update');
  FLocal := AddCreateField(TJanuaFieldType.jptBoolean, 'local', 'local');
  FWildcard := AddCreateField(TJanuaFieldType.jptBoolean, 'wildcard', 'wildcard');
  FRefTypeId := AddCreateField(TJanuaFieldType.jptSmallint, 'ref_type_id', 'ref_type_id');
  FPkgUnits := AddCreateField(TJanuaFieldType.jptSmallint, 'pkg_units', 'pkg_units');
  FStatus := AddCreateField(TJanuaFieldType.jptSmallint, 'status', 'status');
  FReserved := AddCreateField(TJanuaFieldType.jptSmallint, 'reserved', 'reserved');
  FExtraFlag := AddCreateField(TJanuaFieldType.jptBoolean, 'extra_flag', 'extra_flag');
  FBranchId := AddCreateField(TJanuaFieldType.jptInteger, 'branch_id', 'branch_id');
  FMinHeigth := AddCreateField(TJanuaFieldType.jptSmallint, 'min_heigth', 'min_heigth');
  FMaxHeigth := AddCreateField(TJanuaFieldType.jptSmallint, 'max_heigth', 'max_heigth');
  FRepeats := AddCreateField(TJanuaFieldType.jptSmallint, 'repeats', 'repeats');
  FPeriodic := AddCreateField(TJanuaFieldType.jptSmallint, 'periodic', 'periodic');
  FGuarantee := AddCreateField(TJanuaFieldType.jptSmallint, 'guarantee', 'guarantee');
  FPromoPoints := AddCreateField(TJanuaFieldType.jptSmallint, 'promo_points', 'promo_points');
  FPromoPointForfait := AddCreateField(TJanuaFieldType.jptSmallint, 'promo_point_forfait', 'promo_point_forfait');
  FPromoGroup := AddCreateField(TJanuaFieldType.jptSmallint, 'promo_group', 'promo_group');
  FPromo := AddCreateField(TJanuaFieldType.jptSmallint, 'promo', 'promo');
  FBrandId := AddCreateField(TJanuaFieldType.jptSmallint, 'brand_id', 'brand_id');
  FTypeId := AddCreateField(TJanuaFieldType.jptSmallint, 'type_id', 'type_id');
  FTypeRefId := AddCreateField(TJanuaFieldType.jptSmallint, 'type_ref_id', 'type_ref_id');
  FMunitId := AddCreateField(TJanuaFieldType.jptSmallint, 'munit_id', 'munit_id');
  FFamilyId := AddCreateField(TJanuaFieldType.jptSmallint, 'family_id', 'family_id');
  FIconfile := AddCreateField(TJanuaFieldType.jptString, 'iconfile', 'iconfile');
  FBannerfile := AddCreateField(TJanuaFieldType.jptString, 'bannerfile', 'bannerfile');
  FImagefile := AddCreateField(TJanuaFieldType.jptString, 'imagefile', 'imagefile');
  FTitle := AddCreateField(TJanuaFieldType.jptString, 'title', 'title');
  FSubtitle := AddCreateField(TJanuaFieldType.jptString, 'subtitle', 'subtitle');
  FLefimage := AddCreateField(TJanuaFieldType.jptString, 'lefimage', 'lefimage');
  FRightimage := AddCreateField(TJanuaFieldType.jptString, 'rightimage', 'rightimage');
  // Campo non Gestitoitem_rtftext Type= ftWideMemo
  FItemText := AddCreateField(TJanuaFieldType.jptString, 'item_text', 'item_text');
  // Campo non Gestitojguid Type= ftGuid
  FMainPrice := AddCreateField(TJanuaFieldType.jptCurrency, 'main_price', 'main_price');
  FSearchIndex := AddCreateField(TJanuaFieldType.jptString, 'search_index', 'search_index');
end;

function TCustomItemDefinition.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomItemDefinition.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomItemDefinition.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomItemDefinition.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomItemDefinition.GetCode: IJanuaField;
begin
  Result := FCode;
end;

procedure TCustomItemDefinition.SetCode(const Value: IJanuaField);
begin
  FCode := Value;
end;

function TCustomItemDefinition.GetModel: IJanuaField;
begin
  Result := FModel;
end;

procedure TCustomItemDefinition.SetModel(const Value: IJanuaField);
begin
  FModel := Value;
end;

function TCustomItemDefinition.GetDescription: IJanuaField;
begin
  Result := FDescription;
end;

procedure TCustomItemDefinition.SetDescription(const Value: IJanuaField);
begin
  FDescription := Value;
end;

function TCustomItemDefinition.GetMainSupplierId: IJanuaField;
begin
  Result := FMainSupplierId;
end;

procedure TCustomItemDefinition.SetMainSupplierId(const Value: IJanuaField);
begin
  FMainSupplierId := Value;
end;

function TCustomItemDefinition.GetConventions: IJanuaField;
begin
  Result := FConventions;
end;

procedure TCustomItemDefinition.SetConventions(const Value: IJanuaField);
begin
  FConventions := Value;
end;

function TCustomItemDefinition.GetSupplierCode: IJanuaField;
begin
  Result := FSupplierCode;
end;

procedure TCustomItemDefinition.SetSupplierCode(const Value: IJanuaField);
begin
  FSupplierCode := Value;
end;

function TCustomItemDefinition.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomItemDefinition.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomItemDefinition.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TCustomItemDefinition.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TCustomItemDefinition.GetInsId: IJanuaField;
begin
  Result := FInsId;
end;

procedure TCustomItemDefinition.SetInsId(const Value: IJanuaField);
begin
  FInsId := Value;
end;

function TCustomItemDefinition.GetUpdId: IJanuaField;
begin
  Result := FUpdId;
end;

procedure TCustomItemDefinition.SetUpdId(const Value: IJanuaField);
begin
  FUpdId := Value;
end;

function TCustomItemDefinition.GetUserInsert: IJanuaField;
begin
  Result := FUserInsert;
end;

procedure TCustomItemDefinition.SetUserInsert(const Value: IJanuaField);
begin
  FUserInsert := Value;
end;

function TCustomItemDefinition.GetUserUpdate: IJanuaField;
begin
  Result := FUserUpdate;
end;

procedure TCustomItemDefinition.SetUserUpdate(const Value: IJanuaField);
begin
  FUserUpdate := Value;
end;

function TCustomItemDefinition.GetLocal: IJanuaField;
begin
  Result := FLocal;
end;

procedure TCustomItemDefinition.SetLocal(const Value: IJanuaField);
begin
  FLocal := Value;
end;

function TCustomItemDefinition.GetWildcard: IJanuaField;
begin
  Result := FWildcard;
end;

procedure TCustomItemDefinition.SetWildcard(const Value: IJanuaField);
begin
  FWildcard := Value;
end;

function TCustomItemDefinition.GetRefTypeId: IJanuaField;
begin
  Result := FRefTypeId;
end;

procedure TCustomItemDefinition.SetRefTypeId(const Value: IJanuaField);
begin
  FRefTypeId := Value;
end;

function TCustomItemDefinition.GetPkgUnits: IJanuaField;
begin
  Result := FPkgUnits;
end;

procedure TCustomItemDefinition.SetPkgUnits(const Value: IJanuaField);
begin
  FPkgUnits := Value;
end;

function TCustomItemDefinition.GetStatus: IJanuaField;
begin
  Result := FStatus;
end;

procedure TCustomItemDefinition.SetStatus(const Value: IJanuaField);
begin
  FStatus := Value;
end;

function TCustomItemDefinition.GetReserved: IJanuaField;
begin
  Result := FReserved;
end;

procedure TCustomItemDefinition.SetReserved(const Value: IJanuaField);
begin
  FReserved := Value;
end;

function TCustomItemDefinition.GetExtraFlag: IJanuaField;
begin
  Result := FExtraFlag;
end;

procedure TCustomItemDefinition.SetExtraFlag(const Value: IJanuaField);
begin
  FExtraFlag := Value;
end;

function TCustomItemDefinition.GetBranchId: IJanuaField;
begin
  Result := FBranchId;
end;

procedure TCustomItemDefinition.SetBranchId(const Value: IJanuaField);
begin
  FBranchId := Value;
end;

function TCustomItemDefinition.GetMinHeigth: IJanuaField;
begin
  Result := FMinHeigth;
end;

procedure TCustomItemDefinition.SetMinHeigth(const Value: IJanuaField);
begin
  FMinHeigth := Value;
end;

function TCustomItemDefinition.GetMaxHeigth: IJanuaField;
begin
  Result := FMaxHeigth;
end;

procedure TCustomItemDefinition.SetMaxHeigth(const Value: IJanuaField);
begin
  FMaxHeigth := Value;
end;

function TCustomItemDefinition.GetRepeats: IJanuaField;
begin
  Result := FRepeats;
end;

procedure TCustomItemDefinition.SetRepeats(const Value: IJanuaField);
begin
  FRepeats := Value;
end;

function TCustomItemDefinition.GetPeriodic: IJanuaField;
begin
  Result := FPeriodic;
end;

procedure TCustomItemDefinition.SetPeriodic(const Value: IJanuaField);
begin
  FPeriodic := Value;
end;

function TCustomItemDefinition.GetGuarantee: IJanuaField;
begin
  Result := FGuarantee;
end;

procedure TCustomItemDefinition.SetGuarantee(const Value: IJanuaField);
begin
  FGuarantee := Value;
end;

function TCustomItemDefinition.GetPromoPoints: IJanuaField;
begin
  Result := FPromoPoints;
end;

procedure TCustomItemDefinition.SetPromoPoints(const Value: IJanuaField);
begin
  FPromoPoints := Value;
end;

function TCustomItemDefinition.GetPromoPointForfait: IJanuaField;
begin
  Result := FPromoPointForfait;
end;

procedure TCustomItemDefinition.SetPromoPointForfait(const Value: IJanuaField);
begin
  FPromoPointForfait := Value;
end;

function TCustomItemDefinition.GetPromoGroup: IJanuaField;
begin
  Result := FPromoGroup;
end;

procedure TCustomItemDefinition.SetPromoGroup(const Value: IJanuaField);
begin
  FPromoGroup := Value;
end;

function TCustomItemDefinition.GetPromo: IJanuaField;
begin
  Result := FPromo;
end;

procedure TCustomItemDefinition.SetPromo(const Value: IJanuaField);
begin
  FPromo := Value;
end;

function TCustomItemDefinition.GetBrandId: IJanuaField;
begin
  Result := FBrandId;
end;

procedure TCustomItemDefinition.SetBrandId(const Value: IJanuaField);
begin
  FBrandId := Value;
end;

function TCustomItemDefinition.GetTypeId: IJanuaField;
begin
  Result := FTypeId;
end;

procedure TCustomItemDefinition.SetTypeId(const Value: IJanuaField);
begin
  FTypeId := Value;
end;

function TCustomItemDefinition.GetTypeRefId: IJanuaField;
begin
  Result := FTypeRefId;
end;

procedure TCustomItemDefinition.SetTypeRefId(const Value: IJanuaField);
begin
  FTypeRefId := Value;
end;

function TCustomItemDefinition.GetMunitId: IJanuaField;
begin
  Result := FMunitId;
end;

procedure TCustomItemDefinition.SetMunitId(const Value: IJanuaField);
begin
  FMunitId := Value;
end;

function TCustomItemDefinition.GetFamilyId: IJanuaField;
begin
  Result := FFamilyId;
end;

procedure TCustomItemDefinition.SetFamilyId(const Value: IJanuaField);
begin
  FFamilyId := Value;
end;

function TCustomItemDefinition.GetIconfile: IJanuaField;
begin
  Result := FIconfile;
end;

procedure TCustomItemDefinition.SetIconfile(const Value: IJanuaField);
begin
  FIconfile := Value;
end;

function TCustomItemDefinition.GetBannerfile: IJanuaField;
begin
  Result := FBannerfile;
end;

procedure TCustomItemDefinition.SetBannerfile(const Value: IJanuaField);
begin
  FBannerfile := Value;
end;

function TCustomItemDefinition.GetImagefile: IJanuaField;
begin
  Result := FImagefile;
end;

procedure TCustomItemDefinition.SetImagefile(const Value: IJanuaField);
begin
  FImagefile := Value;
end;

function TCustomItemDefinition.GetTitle: IJanuaField;
begin
  Result := FTitle;
end;

procedure TCustomItemDefinition.SetTitle(const Value: IJanuaField);
begin
  FTitle := Value;
end;

function TCustomItemDefinition.GetSubtitle: IJanuaField;
begin
  Result := FSubtitle;
end;

procedure TCustomItemDefinition.SetSubtitle(const Value: IJanuaField);
begin
  FSubtitle := Value;
end;

function TCustomItemDefinition.GetLefimage: IJanuaField;
begin
  Result := FLefimage;
end;

procedure TCustomItemDefinition.SetLefimage(const Value: IJanuaField);
begin
  FLefimage := Value;
end;

function TCustomItemDefinition.GetRightimage: IJanuaField;
begin
  Result := FRightimage;
end;

procedure TCustomItemDefinition.SetRightimage(const Value: IJanuaField);
begin
  FRightimage := Value;
end;

function TCustomItemDefinition.GetItemRtftext: IJanuaField;
begin
  Result := FItemRtftext;
end;

procedure TCustomItemDefinition.SetItemRtftext(const Value: IJanuaField);
begin
  FItemRtftext := Value;
end;

function TCustomItemDefinition.GetItemText: IJanuaField;
begin
  Result := FItemText;
end;

procedure TCustomItemDefinition.SetItemText(const Value: IJanuaField);
begin
  FItemText := Value;
end;

function TCustomItemDefinition.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomItemDefinition.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomItemDefinition.GetMainPrice: IJanuaField;
begin
  Result := FMainPrice;
end;

procedure TCustomItemDefinition.SetMainPrice(const Value: IJanuaField);
begin
  FMainPrice := Value;
end;

function TCustomItemDefinition.GetSearchIndex: IJanuaField;
begin
  Result := FSearchIndex;
end;

procedure TCustomItemDefinition.SetSearchIndex(const Value: IJanuaField);
begin
  FSearchIndex := Value;
end;

{ TCustomItemDefinitions }
constructor TCustomItemDefinitions.Create;
begin
  inherited;
end;

function TCustomItemDefinitions.GetDbSchemaId: IJanuaField;
begin
  Result := self.ItemDefinition.DbSchemaId;
end;

procedure TCustomItemDefinitions.SetDbSchemaId(const Value: IJanuaField);
begin
  self.ItemDefinition.DbSchemaId := Value;
end;

function TCustomItemDefinitions.GetId: IJanuaField;
begin
  Result := self.ItemDefinition.Id;
end;

procedure TCustomItemDefinitions.SetId(const Value: IJanuaField);
begin
  self.ItemDefinition.Id := Value;
end;

function TCustomItemDefinitions.GetCode: IJanuaField;
begin
  Result := self.ItemDefinition.Code;
end;

procedure TCustomItemDefinitions.SetCode(const Value: IJanuaField);
begin
  self.ItemDefinition.Code := Value;
end;

function TCustomItemDefinitions.GetModel: IJanuaField;
begin
  Result := self.ItemDefinition.Model;
end;

procedure TCustomItemDefinitions.SetModel(const Value: IJanuaField);
begin
  self.ItemDefinition.Model := Value;
end;

function TCustomItemDefinitions.GetDescription: IJanuaField;
begin
  Result := self.ItemDefinition.Description;
end;

procedure TCustomItemDefinitions.SetDescription(const Value: IJanuaField);
begin
  self.ItemDefinition.Description := Value;
end;

function TCustomItemDefinitions.GetMainSupplierId: IJanuaField;
begin
  Result := self.ItemDefinition.MainSupplierId;
end;

procedure TCustomItemDefinitions.SetMainSupplierId(const Value: IJanuaField);
begin
  self.ItemDefinition.MainSupplierId := Value;
end;

function TCustomItemDefinitions.GetConventions: IJanuaField;
begin
  Result := self.ItemDefinition.Conventions;
end;

procedure TCustomItemDefinitions.SetConventions(const Value: IJanuaField);
begin
  self.ItemDefinition.Conventions := Value;
end;

function TCustomItemDefinitions.GetSupplierCode: IJanuaField;
begin
  Result := self.ItemDefinition.SupplierCode;
end;

procedure TCustomItemDefinitions.SetSupplierCode(const Value: IJanuaField);
begin
  self.ItemDefinition.SupplierCode := Value;
end;

function TCustomItemDefinitions.GetInsertDate: IJanuaField;
begin
  Result := self.ItemDefinition.InsertDate;
end;

procedure TCustomItemDefinitions.SetInsertDate(const Value: IJanuaField);
begin
  self.ItemDefinition.InsertDate := Value;
end;

function TCustomItemDefinitions.GetUpdateDate: IJanuaField;
begin
  Result := self.ItemDefinition.UpdateDate;
end;

procedure TCustomItemDefinitions.SetUpdateDate(const Value: IJanuaField);
begin
  self.ItemDefinition.UpdateDate := Value;
end;

function TCustomItemDefinitions.GetInsId: IJanuaField;
begin
  Result := self.ItemDefinition.InsId;
end;

procedure TCustomItemDefinitions.SetInsId(const Value: IJanuaField);
begin
  self.ItemDefinition.InsId := Value;
end;

function TCustomItemDefinitions.GetUpdId: IJanuaField;
begin
  Result := self.ItemDefinition.UpdId;
end;

procedure TCustomItemDefinitions.SetUpdId(const Value: IJanuaField);
begin
  self.ItemDefinition.UpdId := Value;
end;

function TCustomItemDefinitions.GetUserInsert: IJanuaField;
begin
  Result := self.ItemDefinition.UserInsert;
end;

procedure TCustomItemDefinitions.SetUserInsert(const Value: IJanuaField);
begin
  self.ItemDefinition.UserInsert := Value;
end;

function TCustomItemDefinitions.GetUserUpdate: IJanuaField;
begin
  Result := self.ItemDefinition.UserUpdate;
end;

procedure TCustomItemDefinitions.SetUserUpdate(const Value: IJanuaField);
begin
  self.ItemDefinition.UserUpdate := Value;
end;

function TCustomItemDefinitions.GetLocal: IJanuaField;
begin
  Result := self.ItemDefinition.Local;
end;

procedure TCustomItemDefinitions.SetLocal(const Value: IJanuaField);
begin
  self.ItemDefinition.Local := Value;
end;

function TCustomItemDefinitions.GetWildcard: IJanuaField;
begin
  Result := self.ItemDefinition.Wildcard;
end;

procedure TCustomItemDefinitions.SetWildcard(const Value: IJanuaField);
begin
  self.ItemDefinition.Wildcard := Value;
end;

function TCustomItemDefinitions.GetRefTypeId: IJanuaField;
begin
  Result := self.ItemDefinition.RefTypeId;
end;

procedure TCustomItemDefinitions.SetRefTypeId(const Value: IJanuaField);
begin
  self.ItemDefinition.RefTypeId := Value;
end;

function TCustomItemDefinitions.GetPkgUnits: IJanuaField;
begin
  Result := self.ItemDefinition.PkgUnits;
end;

procedure TCustomItemDefinitions.SetPkgUnits(const Value: IJanuaField);
begin
  self.ItemDefinition.PkgUnits := Value;
end;

function TCustomItemDefinitions.GetStatus: IJanuaField;
begin
  Result := self.ItemDefinition.Status;
end;

procedure TCustomItemDefinitions.SetStatus(const Value: IJanuaField);
begin
  self.ItemDefinition.Status := Value;
end;

function TCustomItemDefinitions.GetReserved: IJanuaField;
begin
  Result := self.ItemDefinition.Reserved;
end;

procedure TCustomItemDefinitions.SetReserved(const Value: IJanuaField);
begin
  self.ItemDefinition.Reserved := Value;
end;

function TCustomItemDefinitions.GetExtraFlag: IJanuaField;
begin
  Result := self.ItemDefinition.ExtraFlag;
end;

procedure TCustomItemDefinitions.SetExtraFlag(const Value: IJanuaField);
begin
  self.ItemDefinition.ExtraFlag := Value;
end;

function TCustomItemDefinitions.GetBranchId: IJanuaField;
begin
  Result := self.ItemDefinition.BranchId;
end;

procedure TCustomItemDefinitions.SetBranchId(const Value: IJanuaField);
begin
  self.ItemDefinition.BranchId := Value;
end;

function TCustomItemDefinitions.GetMinHeigth: IJanuaField;
begin
  Result := self.ItemDefinition.MinHeigth;
end;

procedure TCustomItemDefinitions.SetMinHeigth(const Value: IJanuaField);
begin
  self.ItemDefinition.MinHeigth := Value;
end;

function TCustomItemDefinitions.GetMaxHeigth: IJanuaField;
begin
  Result := self.ItemDefinition.MaxHeigth;
end;

procedure TCustomItemDefinitions.SetMaxHeigth(const Value: IJanuaField);
begin
  self.ItemDefinition.MaxHeigth := Value;
end;

function TCustomItemDefinitions.GetRepeats: IJanuaField;
begin
  Result := self.ItemDefinition.Repeats;
end;

procedure TCustomItemDefinitions.SetRepeats(const Value: IJanuaField);
begin
  self.ItemDefinition.Repeats := Value;
end;

function TCustomItemDefinitions.GetPeriodic: IJanuaField;
begin
  Result := self.ItemDefinition.Periodic;
end;

procedure TCustomItemDefinitions.SetPeriodic(const Value: IJanuaField);
begin
  self.ItemDefinition.Periodic := Value;
end;

function TCustomItemDefinitions.GetGuarantee: IJanuaField;
begin
  Result := self.ItemDefinition.Guarantee;
end;

procedure TCustomItemDefinitions.SetGuarantee(const Value: IJanuaField);
begin
  self.ItemDefinition.Guarantee := Value;
end;

function TCustomItemDefinitions.GetPromoPoints: IJanuaField;
begin
  Result := self.ItemDefinition.PromoPoints;
end;

procedure TCustomItemDefinitions.SetPromoPoints(const Value: IJanuaField);
begin
  self.ItemDefinition.PromoPoints := Value;
end;

function TCustomItemDefinitions.GetPromoPointForfait: IJanuaField;
begin
  Result := self.ItemDefinition.PromoPointForfait;
end;

procedure TCustomItemDefinitions.SetPromoPointForfait(const Value: IJanuaField);
begin
  self.ItemDefinition.PromoPointForfait := Value;
end;

function TCustomItemDefinitions.GetPromoGroup: IJanuaField;
begin
  Result := self.ItemDefinition.PromoGroup;
end;

procedure TCustomItemDefinitions.SetPromoGroup(const Value: IJanuaField);
begin
  self.ItemDefinition.PromoGroup := Value;
end;

function TCustomItemDefinitions.GetPromo: IJanuaField;
begin
  Result := self.ItemDefinition.Promo;
end;

procedure TCustomItemDefinitions.SetPromo(const Value: IJanuaField);
begin
  self.ItemDefinition.Promo := Value;
end;

function TCustomItemDefinitions.GetBrandId: IJanuaField;
begin
  Result := self.ItemDefinition.BrandId;
end;

procedure TCustomItemDefinitions.SetBrandId(const Value: IJanuaField);
begin
  self.ItemDefinition.BrandId := Value;
end;

function TCustomItemDefinitions.GetTypeId: IJanuaField;
begin
  Result := self.ItemDefinition.TypeId;
end;

procedure TCustomItemDefinitions.SetTypeId(const Value: IJanuaField);
begin
  self.ItemDefinition.TypeId := Value;
end;

function TCustomItemDefinitions.GetTypeRefId: IJanuaField;
begin
  Result := self.ItemDefinition.TypeRefId;
end;

procedure TCustomItemDefinitions.SetTypeRefId(const Value: IJanuaField);
begin
  self.ItemDefinition.TypeRefId := Value;
end;

function TCustomItemDefinitions.GetMunitId: IJanuaField;
begin
  Result := self.ItemDefinition.MunitId;
end;

procedure TCustomItemDefinitions.SetMunitId(const Value: IJanuaField);
begin
  self.ItemDefinition.MunitId := Value;
end;

function TCustomItemDefinitions.GetFamilyId: IJanuaField;
begin
  Result := self.ItemDefinition.FamilyId;
end;

procedure TCustomItemDefinitions.SetFamilyId(const Value: IJanuaField);
begin
  self.ItemDefinition.FamilyId := Value;
end;

function TCustomItemDefinitions.GetIconfile: IJanuaField;
begin
  Result := self.ItemDefinition.Iconfile;
end;

procedure TCustomItemDefinitions.SetIconfile(const Value: IJanuaField);
begin
  self.ItemDefinition.Iconfile := Value;
end;

function TCustomItemDefinitions.GetBannerfile: IJanuaField;
begin
  Result := self.ItemDefinition.Bannerfile;
end;

procedure TCustomItemDefinitions.SetBannerfile(const Value: IJanuaField);
begin
  self.ItemDefinition.Bannerfile := Value;
end;

function TCustomItemDefinitions.GetImagefile: IJanuaField;
begin
  Result := self.ItemDefinition.Imagefile;
end;

procedure TCustomItemDefinitions.SetImagefile(const Value: IJanuaField);
begin
  self.ItemDefinition.Imagefile := Value;
end;

function TCustomItemDefinitions.GetTitle: IJanuaField;
begin
  Result := self.ItemDefinition.Title;
end;

procedure TCustomItemDefinitions.SetTitle(const Value: IJanuaField);
begin
  self.ItemDefinition.Title := Value;
end;

function TCustomItemDefinitions.GetSubtitle: IJanuaField;
begin
  Result := self.ItemDefinition.Subtitle;
end;

procedure TCustomItemDefinitions.SetSubtitle(const Value: IJanuaField);
begin
  self.ItemDefinition.Subtitle := Value;
end;

function TCustomItemDefinitions.GetLefimage: IJanuaField;
begin
  Result := self.ItemDefinition.Lefimage;
end;

procedure TCustomItemDefinitions.SetLefimage(const Value: IJanuaField);
begin
  self.ItemDefinition.Lefimage := Value;
end;

function TCustomItemDefinitions.GetRightimage: IJanuaField;
begin
  Result := self.ItemDefinition.Rightimage;
end;

procedure TCustomItemDefinitions.SetRightimage(const Value: IJanuaField);
begin
  self.ItemDefinition.Rightimage := Value;
end;

function TCustomItemDefinitions.GetItemRtftext: IJanuaField;
begin
  Result := self.ItemDefinition.ItemRtftext;
end;

procedure TCustomItemDefinitions.SetItemRtftext(const Value: IJanuaField);
begin
  self.ItemDefinition.ItemRtftext := Value;
end;

function TCustomItemDefinitions.GetItemText: IJanuaField;
begin
  Result := self.ItemDefinition.ItemText;
end;

procedure TCustomItemDefinitions.SetItemText(const Value: IJanuaField);
begin
  self.ItemDefinition.ItemText := Value;
end;

function TCustomItemDefinitions.GetJguid: IJanuaField;
begin
  Result := self.ItemDefinition.Jguid;
end;

procedure TCustomItemDefinitions.SetJguid(const Value: IJanuaField);
begin
  self.ItemDefinition.Jguid := Value;
end;

function TCustomItemDefinitions.GetMainPrice: IJanuaField;
begin
  Result := self.ItemDefinition.MainPrice;
end;

procedure TCustomItemDefinitions.SetMainPrice(const Value: IJanuaField);
begin
  self.ItemDefinition.MainPrice := Value;
end;

function TCustomItemDefinitions.GetSearchIndex: IJanuaField;
begin
  Result := self.ItemDefinition.SearchIndex;
end;

procedure TCustomItemDefinitions.SetSearchIndex(const Value: IJanuaField);
begin
  self.ItemDefinition.SearchIndex := Value;
end;

function TCustomItemDefinitions.GetItemDefinition: ICustomItemDefinition;
begin
  Result := self.FRecord as ICustomItemDefinition;
end;

procedure TCustomItemDefinitions.SetItemDefinition(const Value: ICustomItemDefinition);
begin
  self.FRecord := Value;
end;

end.

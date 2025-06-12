unit Janua.Orm.Types.Test;

interface

uses
  DUnitX.TestFramework, Janua.Orm.Types, Data.DB, System.UITypes, Spring,
  Janua.Core.Types, System.JSON, System.SysUtils, System.Classes,
  FireDAC.Comp.Client, FireDAC.Stan.Def;

type
  [TestFixture]
  TTestJanuaOrmTypes = class(TObject)
  private
    FMemTable: TFDMemTable;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    
    // Test TDatasetPagination
    [Test]
    procedure TestDatasetPaginationCreate;
    [Test]
    procedure TestDatasetPaginationAssign;
    [Test]
    procedure TestDatasetPaginationJsonSerialization;
    [Test]
    procedure TestDatasetPaginationCalculations;
    
    // Test Constants
    [Test]
    procedure TestJanuaOperatorConstants;
    [Test]
    procedure TestJanuaEntityNames;
    
    // Test TJanuaOrderByField
    [Test]
    procedure TestOrderByFieldCreate;
    [Test]
    procedure TestOrderByFieldProperties;
    
    // Test TJanuaGridFieldDef
    [Test]
    procedure TestGridFieldDefCreate;
    [Test]
    procedure TestGridFieldDefProperties;
    [Test]
    procedure TestGridFieldDefNullableProperties;
    
    // Test TJanuaDBFieldDef
    [Test]
    procedure TestDBFieldDefCreate;
    [Test]
    procedure TestDBFieldDefWithNullField;
    
    // Test TJanuaGridColumnField
    [Test]
    procedure TestGridColumnFieldCreate;
    [Test]
    procedure TestGridColumnFieldMask;
    [Test]
    procedure TestGridColumnFieldTitle;
    
    // Test Record Unit Classes
    [Test]
    procedure TestRecordUnitConfProperties;
    [Test]
    procedure TestRecordUnitFileProperties;
    [Test]
    procedure TestRecordUnitsCreate;
    
    // Test Helper Functions
    [Test]
    procedure TestIsEntityInSet;
    [Test]
    procedure TestAddEntityToSet;
    
    // Test Enums
    [Test]
    procedure TestRecordStateEnum;
    [Test]
    procedure TestFieldKindEnum;
    [Test]
    procedure TestOperatorEnum;
  end;

implementation

uses
  Janua.Application.Framework, Janua.Core.JSON, System.Generics.Collections;

{ TTestJanuaOrmTypes }

procedure TTestJanuaOrmTypes.Setup;
begin
  // Create a memory table for field testing
  FMemTable := TFDMemTable.Create(nil);
  FMemTable.FieldDefs.Add('ID', ftInteger);
  FMemTable.FieldDefs.Add('Name', ftString, 50);
  FMemTable.FieldDefs.Add('Price', ftCurrency);
  FMemTable.FieldDefs.Add('Created', ftDateTime);
  FMemTable.CreateDataSet;
end;

procedure TTestJanuaOrmTypes.TearDown;
begin
  FMemTable.Free;
end;

procedure TTestJanuaOrmTypes.TestDatasetPaginationCreate;
var
  Pagination: TDatasetPagination;
begin
  // Test default values
  Pagination.Active := False;
  Pagination.Page := 0;
  Pagination.Size := 0;
  
  Assert.IsFalse(Pagination.Active);
  Assert.AreEqual(Word(0), Pagination.Page);
  Assert.AreEqual(UInt32(0), Pagination.Size);
  
  // Test with values
  Pagination.Active := True;
  Pagination.Page := 5;
  Pagination.Size := 20;
  
  Assert.IsTrue(Pagination.Active);
  Assert.AreEqual(Word(5), Pagination.Page);
  Assert.AreEqual(UInt32(20), Pagination.Size);
end;

procedure TTestJanuaOrmTypes.TestDatasetPaginationAssign;
var
  Source, Dest: TDatasetPagination;
begin
  Source.Active := True;
  Source.Page := 3;
  Source.Size := 50;
  
  Dest.Assign(Source);
  
  Assert.AreEqual(Source.Active, Dest.Active);
  Assert.AreEqual(Source.Page, Dest.Page);
  Assert.AreEqual(Source.Size, Dest.Size);
end;

procedure TTestJanuaOrmTypes.TestDatasetPaginationJsonSerialization;
var
  Original, Restored: TDatasetPagination;
  JsonValue: TJsonValue;
begin
  Original.Active := True;
  Original.Page := 10;
  Original.Size := 25;
  
  // Serialize
  JsonValue := Original.GetAsJsonValue;
  try
    Assert.IsNotNull(JsonValue);
    
    // Deserialize
    Restored.SetAsJsonValue(JsonValue);
    
    Assert.AreEqual(Original.Active, Restored.Active);
    Assert.AreEqual(Original.Page, Restored.Page);
    Assert.AreEqual(Original.Size, Restored.Size);
  finally
    JsonValue.Free;
  end;
end;

procedure TTestJanuaOrmTypes.TestDatasetPaginationCalculations;
var
  Pagination: TDatasetPagination;
begin
  // Test inactive pagination
  Pagination.Active := False;
  Pagination.Page := 5;
  Pagination.Size := 20;
  
  Assert.AreEqual(UInt32(0), Pagination.GetFromRecord);
  Assert.AreEqual(UInt32(-1), Pagination.GetToRecord);
  
  // Test active pagination - Page 1
  Pagination.Active := True;
  Pagination.Page := 1;
  Pagination.Size := 20;
  
  Assert.AreEqual(UInt32(0), Pagination.GetFromRecord);
  Assert.AreEqual(UInt32(20), Pagination.GetToRecord);
  
  // Test page 5
  Pagination.Page := 5;
  Assert.AreEqual(UInt32(80), Pagination.GetFromRecord); // (5-1) * 20 = 80
  Assert.AreEqual(UInt32(100), Pagination.GetToRecord); // 5 * 20 = 100
end;

procedure TTestJanuaOrmTypes.TestJanuaOperatorConstants;
begin
  // Test operator string representations
  Assert.AreEqual('=', CJanuaOperators[TJanuaOperator.Equals]);
  Assert.AreEqual('>', CJanuaOperators[TJanuaOperator.MoreThan]);
  Assert.AreEqual('<', CJanuaOperators[TJanuaOperator.LessThan]);
  Assert.AreEqual('like', CJanuaOperators[TJanuaOperator.Like]);
  Assert.AreEqual('<>', CJanuaOperators[TJanuaOperator.NotEqual]);
  Assert.AreEqual('likeU', CJanuaOperators[TJanuaOperator.LikeUpper]);
  Assert.AreEqual('likeL', CJanuaOperators[TJanuaOperator.LikeLower]);
  Assert.AreEqual('likeSU', CJanuaOperators[TJanuaOperator.LikeStrippedUpper]);
  Assert.AreEqual('likeSL', CJanuaOperators[TJanuaOperator.LikeStrippedLower]);
  Assert.AreEqual('>=', CJanuaOperators[TJanuaOperator.MoreThanEquals]);
  Assert.AreEqual('<=', CJanuaOperators[TJanuaOperator.LessThanEquals]);
end;

procedure TTestJanuaOrmTypes.TestJanuaEntityNames;
begin
  // Test some entity name mappings
  Assert.AreEqual('', JanuaEntityNames[TJanuaEntity.None]);
  Assert.AreEqual('test.masters', JanuaEntityNames[TJanuaEntity.TestMaster]);
  Assert.AreEqual('ads.banners', JanuaEntityNames[TJanuaEntity.AdsBanners]);
  Assert.AreEqual('anagraph.anagraphs', JanuaEntityNames[TJanuaEntity.AnagraphAnagraphs]);
  Assert.AreEqual('football.ft_matches', JanuaEntityNames[TJanuaEntity.ftMatches]);
  Assert.AreEqual('cms.articles', JanuaEntityNames[TJanuaEntity.CmsArticles]);
  Assert.AreEqual('system.db_users', JanuaEntityNames[TJanuaEntity.SysDbUsers]);
  Assert.AreEqual('documents.heads', JanuaEntityNames[TJanuaEntity.DocHeads]);
  Assert.AreEqual('logistic.shipment', JanuaEntityNames[TJanuaEntity.LogShipments]);
end;

procedure TTestJanuaOrmTypes.TestOrderByFieldCreate;
var
  OrderBy: TJanuaOrderByField;
begin
  // Test default constructor
  OrderBy := TJanuaOrderByField.Create('Name');
  Assert.AreEqual('Name', OrderBy.FieldName);
  Assert.AreEqual(TOrderByEnum.jobASC, OrderBy.OrderBy);
  Assert.AreEqual(TOrderByCompare.jocDefault, OrderBy.Compare);
  
  // Test full constructor
  OrderBy := TJanuaOrderByField.Create('Price', jobDESC, jocCaseInsensitive);
  Assert.AreEqual('Price', OrderBy.FieldName);
  Assert.AreEqual(TOrderByEnum.jobDESC, OrderBy.OrderBy);
  Assert.AreEqual(TOrderByCompare.jocCaseInsensitive, OrderBy.Compare);
end;

procedure TTestJanuaOrmTypes.TestOrderByFieldProperties;
var
  OrderBy: TJanuaOrderByField;
begin
  OrderBy := TJanuaOrderByField.Create('TestField');
  
  // Test property setters
  OrderBy.FieldName := 'NewField';
  Assert.AreEqual('NewField', OrderBy.FieldName);
  
  OrderBy.OrderBy := jobDESC;
  Assert.AreEqual(TOrderByEnum.jobDESC, OrderBy.OrderBy);
  
  OrderBy.Compare := jocOrdinal;
  Assert.AreEqual(TOrderByCompare.jocOrdinal, OrderBy.Compare);
end;

procedure TTestJanuaOrmTypes.TestGridFieldDefCreate;
var
  GridDef: TJanuaGridFieldDef;
begin
  // Test constructor
  GridDef := TJanuaGridFieldDef.Create(True, 10);
  
  Assert.IsTrue(GridDef.GridVisible);
  Assert.AreEqual(10, GridDef.CharWidth.Value);
  
  // Test default values
  GridDef := TJanuaGridFieldDef.Create(False);
  Assert.IsFalse(GridDef.GridVisible);
  Assert.AreEqual(0, GridDef.CharWidth.Value);
end;

procedure TTestJanuaOrmTypes.TestGridFieldDefProperties;
var
  GridDef: TJanuaGridFieldDef;
begin
  GridDef := TJanuaGridFieldDef.Create(True, 15);
  
  // Test export
  GridDef.GridExport := True;
  Assert.IsTrue(GridDef.GridExport);
  
  // Test position
  GridDef.GridPos := 5;
  Assert.AreEqual(Word(5), GridDef.GridPos);
  
  // Test visible
  GridDef.GridVisible := False;
  Assert.IsFalse(GridDef.GridVisible);
  
  // Test char width
  GridDef.CharWidth := 20;
  Assert.AreEqual(20, GridDef.CharWidth.Value);
  
  // Test display width
  GridDef.DisplayWidth := 25;
  Assert.AreEqual(25, GridDef.DisplayWidth.Value);
end;

procedure TTestJanuaOrmTypes.TestGridFieldDefNullableProperties;
var
  GridDef: TJanuaGridFieldDef;
  Color: TColor;
begin
  GridDef := TJanuaGridFieldDef.Create(True);
  
  // Test nullable color
  Assert.IsFalse(GridDef.GridFontColor.HasValue);
  
  Color := clRed;
  GridDef.GridFontColor := Color;
  Assert.IsTrue(GridDef.GridFontColor.HasValue);
  Assert.AreEqual(clRed, GridDef.GridFontColor.Value);
  
  // Test nullable title
  Assert.IsFalse(GridDef.GridTitle.HasValue);
  
  GridDef.GridTitle := 'Test Title';
  Assert.IsTrue(GridDef.GridTitle.HasValue);
  Assert.AreEqual('Test Title', GridDef.GridTitle.Value);
end;

procedure TTestJanuaOrmTypes.TestDBFieldDefCreate;
var
  DBFieldDef: TJanuaDBFieldDef;
  Field: TField;
  TestGuid: TGUID;
begin
  Field := FMemTable.FieldByName('Name');
  TestGuid := TGUID.NewGuid;
  
  DBFieldDef := TJanuaDBFieldDef.Create(TestGuid, Field);
  
  Assert.AreEqual(TestGuid, DBFieldDef.FieldGUID);
  Assert.AreEqual(Field, DBFieldDef.MappedField);
end;

procedure TTestJanuaOrmTypes.TestDBFieldDefWithNullField;
begin
  // Test that null field raises exception
  Assert.WillRaise(
    procedure
    var
      DBFieldDef: TJanuaDBFieldDef;
    begin
      DBFieldDef := TJanuaDBFieldDef.Create(TGUID.NewGuid, nil);
    end,
    Exception
  );
end;

procedure TTestJanuaOrmTypes.TestGridColumnFieldCreate;
var
  ColumnField: TJanuaGridColumnField;
  Field: TField;
begin
  Field := FMemTable.FieldByName('Name');
  
  // Test default constructor
  ColumnField := TJanuaGridColumnField.Create(Field);
  Assert.AreEqual(Field, ColumnField.MappedField);
  Assert.IsFalse(ColumnField.GridFieldDef.GridVisible);
  Assert.IsFalse(ColumnField.GridFieldDef.GridExport);
  
  // Test full constructor
  ColumnField := TJanuaGridColumnField.Create(Field, True, True, 30);
  Assert.AreEqual(Field, ColumnField.MappedField);
  Assert.IsTrue(ColumnField.GridFieldDef.GridVisible);
  Assert.IsTrue(ColumnField.GridFieldDef.GridExport);
  Assert.AreEqual(30, ColumnField.GridFieldDef.CharWidth.Value);
  Assert.AreEqual(30, Field.DisplayWidth);
end;

procedure TTestJanuaOrmTypes.TestGridColumnFieldMask;
var
  ColumnField: TJanuaGridColumnField;
  NumField: TField;
  DateField: TField;
begin
  // Test numeric field mask
  NumField := FMemTable.FieldByName('Price');
  ColumnField := TJanuaGridColumnField.Create(NumField);
  
  ColumnField.Mask := '#,##0.00';
  Assert.AreEqual('#,##0.00', (NumField as TNumericField).DisplayFormat);
  Assert.AreEqual('#,##0.00', ColumnField.Mask);
  
  // Test date field mask
  DateField := FMemTable.FieldByName('Created');
  ColumnField := TJanuaGridColumnField.Create(DateField);
  
  ColumnField.Mask := 'dd/mm/yyyy';
  Assert.AreEqual('dd/mm/yyyy', (DateField as TDateTimeField).DisplayFormat);
  Assert.AreEqual('dd/mm/yyyy', ColumnField.Mask);
end;

procedure TTestJanuaOrmTypes.TestGridColumnFieldTitle;
var
  ColumnField: TJanuaGridColumnField;
  Field: TField;
begin
  Field := FMemTable.FieldByName('Name');
  ColumnField := TJanuaGridColumnField.Create(Field);
  
  // Test title getter (uses DisplayLabel)
  Field.DisplayLabel := 'Customer Name';
  Assert.AreEqual('Customer Name', ColumnField.Title);
  
  // Test title setter
  ColumnField.Title := 'Client Name';
  Assert.AreEqual('Client Name', Field.DisplayLabel);
  Assert.AreEqual('Client Name', ColumnField.Title);
  
  // Test empty title (should not change)
  ColumnField.Title := '';
  Assert.AreEqual('Client Name', Field.DisplayLabel);
end;

procedure TTestJanuaOrmTypes.TestRecordUnitConfProperties;
var
  Conf: TRecordUnitConf;
begin
  Conf := TRecordUnitConf.Create;
  try
    Conf.DatasetName := 'TestDataset';
    Conf.PluralName := 'Tests';
    Conf.SingularName := 'Test';
    Conf.TargetDir := 'C:\Output';
    Conf.SchemaName := 'test_schema';
    Conf.Dataset := FMemTable;
    
    Assert.AreEqual('TestDataset', Conf.DatasetName);
    Assert.AreEqual('Tests', Conf.PluralName);
    Assert.AreEqual('Test', Conf.SingularName);
    Assert.AreEqual('C:\Output', Conf.TargetDir);
    Assert.AreEqual('test_schema', Conf.SchemaName);
    Assert.AreEqual(FMemTable, Conf.Dataset);
  finally
    Conf.Free;
  end;
end;

procedure TTestJanuaOrmTypes.TestRecordUnitFileProperties;
var
  UnitFile: TRecordUnitFile;
  Conf: TRecordUnitConf;
begin
  Conf := TRecordUnitConf.Create;
  UnitFile := TRecordUnitFile.Create;
  try
    UnitFile.FileName := 'Test.pas';
    UnitFile.Text := 'unit Test;';
    UnitFile.Conf := Conf;
    
    Assert.AreEqual('Test.pas', UnitFile.FileName);
    Assert.AreEqual('unit Test;', UnitFile.Text);
    Assert.AreEqual(Conf, UnitFile.Conf);
  finally
    UnitFile.Free;
    Conf.Free;
  end;
end;

procedure TTestJanuaOrmTypes.TestRecordUnitsCreate;
var
  Units: TRecordUnits;
  Conf: TRecordUnitConf;
begin
  Conf := TRecordUnitConf.Create;
  Units := TRecordUnits.Create(Conf);
  try
    Assert.IsNotNull(Units.IntfFile);
    Assert.IsNotNull(Units.ImplFile);
    Assert.AreEqual(Conf, Units.Conf);
    
    // Test property setters
    Units.IntfFile.FileName := 'Intf.pas';
    Units.ImplFile.FileName := 'Impl.pas';
    
    Assert.AreEqual('Intf.pas', Units.IntfFile.FileName);
    Assert.AreEqual('Impl.pas', Units.ImplFile.FileName);
  finally
    Units.Free;
    // Conf is freed by Units
  end;
end;

procedure TTestJanuaOrmTypes.TestIsEntityInSet;
var
  EntitySet: TJanuaEntities;
begin
  SetLength(EntitySet, 3);
  EntitySet[0] := TJanuaEntity.TestMaster;
  EntitySet[1] := TJanuaEntity.AdsBanners;
  EntitySet[2] := TJanuaEntity.CmsArticles;
  
  Assert.IsTrue(IsEntityInSet(TJanuaEntity.TestMaster, EntitySet));
  Assert.IsTrue(IsEntityInSet(TJanuaEntity.AdsBanners, EntitySet));
  Assert.IsTrue(IsEntityInSet(TJanuaEntity.CmsArticles, EntitySet));
  Assert.IsFalse(IsEntityInSet(TJanuaEntity.DocHeads, EntitySet));
  Assert.IsFalse(IsEntityInSet(TJanuaEntity.None, EntitySet));
end;

procedure TTestJanuaOrmTypes.TestAddEntityToSet;
var
  EntitySet: TJanuaEntities;
begin
  SetLength(EntitySet, 0);
  
  // Add first entity
  AddEntityToSet(TJanuaEntity.TestMaster, EntitySet);
  Assert.AreEqual(1, Length(EntitySet));
  Assert.AreEqual(TJanuaEntity.TestMaster, EntitySet[0]);
  
  // Add second entity
  AddEntityToSet(TJanuaEntity.AdsBanners, EntitySet);
  Assert.AreEqual(2, Length(EntitySet));
  Assert.AreEqual(TJanuaEntity.AdsBanners, EntitySet[1]);
  
  // Add third entity
  AddEntityToSet(TJanuaEntity.CmsArticles, EntitySet);
  Assert.AreEqual(3, Length(EntitySet));
  Assert.AreEqual(TJanuaEntity.CmsArticles, EntitySet[2]);
  
  // Verify all are in the set
  Assert.IsTrue(IsEntityInSet(TJanuaEntity.TestMaster, EntitySet));
  Assert.IsTrue(IsEntityInSet(TJanuaEntity.AdsBanners, EntitySet));
  Assert.IsTrue(IsEntityInSet(TJanuaEntity.CmsArticles, EntitySet));
end;

procedure TTestJanuaOrmTypes.TestRecordStateEnum;
begin
  // Test that enum values exist and can be used
  var State: TJanuaRecordState;
  
  State := jrsNone;
  Assert.AreEqual(TJanuaRecordState.jrsNone, State);
  
  State := jrsModified;
  Assert.AreEqual(TJanuaRecordState.jrsModified, State);
  
  State := jrsNewRecord;
  Assert.AreEqual(TJanuaRecordState.jrsNewRecord, State);
  
  State := jrsDeleted;
  Assert.AreEqual(TJanuaRecordState.jrsDeleted, State);
end;

procedure TTestJanuaOrmTypes.TestFieldKindEnum;
begin
  // Test field kind enum values
  var Kind: TJanuaFieldKind;
  
  Kind := jfkCalculated;
  Assert.AreEqual(TJanuaFieldKind.jfkCalculated, Kind);
  
  Kind := jfkData;
  Assert.AreEqual(TJanuaFieldKind.jfkData, Kind);
  
  Kind := jfkLookup;
  Assert.AreEqual(TJanuaFieldKind.jfkLookup, Kind);
  
  Kind := jfkParam;
  Assert.AreEqual(TJanuaFieldKind.jfkParam, Kind);
  
  Kind := jfkParamLookup;
  Assert.AreEqual(TJanuaFieldKind.jfkParamLookup, Kind);
end;

procedure TTestJanuaOrmTypes.TestOperatorEnum;
begin
  // Test operator enum values
  var Op: TJanuaOperator;
  
  Op := Equals;
  Assert.AreEqual(TJanuaOperator.Equals, Op);
  
  Op := Like;
  Assert.AreEqual(TJanuaOperator.Like, Op);
  
  Op := MoreThanEquals;
  Assert.AreEqual(TJanuaOperator.MoreThanEquals, Op);
end;

initialization
  TDUnitX.RegisterTestFixture(TTestJanuaOrmTypes);

end.
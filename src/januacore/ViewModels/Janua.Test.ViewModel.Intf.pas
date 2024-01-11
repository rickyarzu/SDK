unit Janua.Test.ViewModel.Intf;

interface

uses Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Orm.Intf, Data.DB, Janua.Orm.Test.Intf,
  Janua.ViewModels.Intf, Janua.Core.Types;

type
  ITestFunctionsDataset = interface
    ['{412BE5E3-B9F0-4F44-A063-C37AEDFC0B57}']
    function GetTable2: TDataset;
    procedure SetTable2(const Value: TDataset);
    property Table2: TDataset read GetTable2 write SetTable2;
    function GetTable1: TDataset;
    procedure SetTable1(const Value: TDataset);
    property Table1: TDataset read GetTable1 write SetTable1;
  end;

  IJanuaTestDataModule = interface(IJanuaInterface)
    ['{DC2042BF-A2D2-466A-8ACF-5FBED5DEA94E}']
    function GetjdsTestDataset: IJanuaDBDataset;
    ///<summary> This dataset is used for jdsDataset Search Teststs </summary>
    property jdsTestDataset: IJanuaDBDataset read GetjdsTestDataset;
    function GetjdsTestMaster: IJanuaDBDataset;
    // <summary> Master and detail Dataset are used for Janua Record and Recordset Serialization </summary>
    property jdsTestMaster: IJanuaDBDataset read GetjdsTestMaster;
    function GetjdsTestDetail: IJanuaDBDataset;
    property jdsTestDetail: IJanuaDBDataset read GetjdsTestDetail;
    function GetjdsTestDetail2: IJanuaDBDataset;
    property jdsTestDetail2: IJanuaDBDataset read GetjdsTestDetail2;
  end;

  IJanuaRSTestModel = interface(IJanuaRecordSetModel)
    ['{97B809D3-0493-4525-9813-082997B9F2F7}']
    function GetSubRecordSet: IJanuaTestSubRecordSet;
    procedure SetSubRecordSet(const Value: IJanuaTestSubRecordSet);
    property SubRecordSet: IJanuaTestSubRecordSet read GetSubRecordSet write SetSubRecordSet;

    function GetSubRecord: IJanuaTestSubRecord;
    property TestSubRecord: IJanuaTestSubRecord read GetSubRecord;
  end;

  /// <summary> this model contains the common parts of the DB/Rest Models </summary>
  IJanuaTestModel = interface
    ['{0335DBD7-6561-4399-B036-E125A79D98E8}']
    function GetTestNestedRecord: IJanuaTestNestedRecord;
    property NestedRecord: IJanuaTestNestedRecord read GetTestNestedRecord;

    function GetDetailModel1: IJanuaRSTestModel;
    procedure SetDetailModel1(const Value: IJanuaRSTestModel);
    property DetailModel1: IJanuaRSTestModel read GetDetailModel1 write SetDetailModel1;

    function GetDetailModel2: IJanuaRSTestModel;
    procedure SetDetailModel2(const Value: IJanuaRSTestModel);
    property DetailModel2: IJanuaRSTestModel read GetDetailModel2 write SetDetailModel2;
  end;

  /// <summary> This is the REST (Remote) TestModel. It differs for DB model becasue is based only on
  /// Janua Remote Records and Recordset and (one) search Dataset connected remotely with a remote
  /// Server using 'any' protocol. The implementation of the model can be a RESTful or RPC model </summary>
  IJanuaRemoteTestModel = interface(IJanuaClientModel)
    ['{98E8A7C8-E6E3-444A-956F-264C64591EDD}']
    function GetTestNestedRecord: IJanuaTestNestedRecord;
    property NestedRecord: IJanuaTestNestedRecord read GetTestNestedRecord;

    function GetDetailModel1: IJanuaRSTestModel;
    procedure SetDetailModel1(const Value: IJanuaRSTestModel);
    property DetailModel1: IJanuaRSTestModel read GetDetailModel1 write SetDetailModel1;

    function GetDetailModel2: IJanuaRSTestModel;
    procedure SetDetailModel2(const Value: IJanuaRSTestModel);
    property DetailModel2: IJanuaRSTestModel read GetDetailModel2 write SetDetailModel2;
  end;

  IJanuaServerTestModel = interface(IJanuaDBModel)
  ['{52450FA4-B284-47D6-80F3-EE231929F032}']
    function GetTestNestedRecord: IJanuaTestNestedRecord;
    property NestedRecord: IJanuaTestNestedRecord read GetTestNestedRecord;
    function GetjdsTestMaster: IJanuaDBDataset;
    property jdsTestMaster: IJanuaDBDataset read GetjdsTestMaster;
    function GetjdsTestDetail: IJanuaDBDataset;
    property jdsTestDetail: IJanuaDBDataset read GetjdsTestDetail;
    function GetjdsTestDetail2: IJanuaDBDataset;
    property jdsTestDetail2: IJanuaDBDataset read GetjdsTestDetail2;
  end;

  IJanuaDBTestModel = interface(IJanuaServerTestModel)
    ['{1989A8F9-7062-46BE-93C4-CB0760ED4A09}']
    function GetDetailModel1: IJanuaRSTestModel;
    procedure SetDetailModel1(const Value: IJanuaRSTestModel);
    property DetailModel1: IJanuaRSTestModel read GetDetailModel1 write SetDetailModel1;

    function GetDetailModel2: IJanuaRSTestModel;
    procedure SetDetailModel2(const Value: IJanuaRSTestModel);
    property DetailModel2: IJanuaRSTestModel read GetDetailModel2 write SetDetailModel2;
  end;

  IJanuaTestDialogForm = interface(IJanuaForm)
    ['{9DC9E8C5-E45A-4ADB-ADB7-76E0FFE410D4}']
    function GetDBViewModel: IJanuaDBTestModel;
    procedure SetDBViewModel(const Value: IJanuaDBTestModel);
    property DBViewModel: IJanuaDBTestModel read GetDBViewModel write SetDBViewModel;
  end;

  IJanuaTestDetailViewModel = interface(IJanuaRecordsetViewModel)
    ['{8683D405-7518-4709-BD7F-1481ABCD6D8A}']
    function GetDetailTestModel: IJanuaRSTestModel;
    procedure SetDetailTestModel(const Value: IJanuaRSTestModel);
    property DetailTestModel: IJanuaRSTestModel read GetDetailTestModel write SetDetailTestModel;

    function GetRecordSet: IJanuaTestSubRecordSet;
    property RecordSet: IJanuaTestSubRecordSet read GetRecordSet;

    function GetSubRecord: IJanuaTestSubRecord;
    property TestSubRecord: IJanuaTestSubRecord read GetSubRecord;
  end;

  /// <summary> This is the TestDialog Interface definition MUST be based on IJanuaRecordEditDialog </summary>
  IJanuaTestDetailDialog = interface(IJanuaRecordEditDialog)
    ['{7459DB2D-160D-4DAB-A1A7-1FF4DA49E736}']
    function GetTestDetailViewModel: IJanuaTestDetailViewModel;
    procedure SetTestDetailViewModel(const Value: IJanuaTestDetailViewModel);
    property TestDetailViewModel: IJanuaTestDetailViewModel read GetTestDetailViewModel
      write SetTestDetailViewModel;
  end;

  IJanuaTestViewModel = interface(IJanuaViewModel)
    ['{56076DC6-BEB2-4CFD-BBA1-52930A3B5E32}']
    function GetTestNestedRecord: IJanuaTestNestedRecord;
    property TestNestedRecord: IJanuaTestNestedRecord read GetTestNestedRecord;

    function GetDetailViewModel1: IJanuaTestDetailViewModel;
    procedure SetDetailModel1(const Value: IJanuaTestDetailViewModel);
    property DetailViewModel1: IJanuaTestDetailViewModel read GetDetailViewModel1 write SetDetailModel1;

    function GetDetailViewModel2: IJanuaTestDetailViewModel;
    procedure SetDetailModel2(const Value: IJanuaTestDetailViewModel);
    property DetailViewModel2: IJanuaTestDetailViewModel read GetDetailViewModel2 write SetDetailModel2;
  end;

  /// <summary> This is the Standard View Model that can be connected with Both Local and Remote Model </summary>
  IJanuaTestDBViewModel = interface(IJanuaDBViewModel)
    ['{7970DB02-5D6D-4294-8D9B-6E6E18C202EC}']
    function GetTestNestedRecord: IJanuaTestNestedRecord;
    property TestNestedRecord: IJanuaTestNestedRecord read GetTestNestedRecord;

    function GetDetailViewModel1: IJanuaTestDetailViewModel;
    procedure SetDetailModel1(const Value: IJanuaTestDetailViewModel);
    property DetailViewModel1: IJanuaTestDetailViewModel read GetDetailViewModel1 write SetDetailModel1;

    function GetDetailViewModel2: IJanuaTestDetailViewModel;
    procedure SetDetailModel2(const Value: IJanuaTestDetailViewModel);
    property DetailViewModel2: IJanuaTestDetailViewModel read GetDetailViewModel2 write SetDetailModel2;

    function GetdsDetail2: TDataSource;
    property dsDetail2: TDataSource read GetdsDetail;
  end;

  IJanuaMasterDetailTestDialogForm = interface(IJanuaRecordEditDialog)
    ['{6AC2AD35-781E-4C87-BCAA-8B5418CB0FCD}']
    function GetTestViewModel: IJanuaTestViewModel;
    procedure SetTestViewModel(const Value: IJanuaTestViewModel);
    property TestViewModel: IJanuaTestViewModel read GetTestViewModel write SetTestViewModel;
  end;

implementation

initialization

Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaMasterDetailTestDialogForm));
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaTestViewModel));
// IJanuaTestDetailDialog
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaTestDetailDialog));
// ITestFunctionsDataset
Janua.Core.Types.RegisterInterface(TypeInfo(ITestFunctionsDataset));
// IJanuaTestDataModule
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaTestDataModule));
// IJanuaRSTestModel
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaRSTestModel));
// IJanuaMasterDetailTestDialogForm
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaMasterDetailTestDialogForm));
// IJanuaTestDialogForm
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaTestDialogForm));

end.

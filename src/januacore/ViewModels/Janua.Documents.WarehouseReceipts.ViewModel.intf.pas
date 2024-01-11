unit Janua.Documents.WarehouseReceipts.ViewModel.intf;

interface

uses Janua.Core.Classes.intf, Janua.Controls.Forms.intf, Janua.Orm.intf, Data.DB, JOrm.Documents.intf,
  Janua.ViewModels.intf, Janua.Documents.ViewModel.intf, Janua.Reporting.intf,  Jorm.Logistic.Shipments.Intf,
  Janua.Search.ViewModels.Engines.intf;

type
  /// <summary> extends IJanuaDocumentsDataModule with WH Receipts specific Datasets </summary>
  IJanuaWHReceiptsDataModule = interface(IJanuaDocumentsDataModule)
    ['{16824C8C-1838-4C1F-95F9-625C5D8ADE4E}']
  end;

  IJanuaWHReceiptsModel = interface(IJanuaDBDocumentsModel)
    ['{51C062D1-6555-4789-AB75-B4AE367D890A}']
    procedure CallBackShipment(aShipment: IShipmentView);
  end;

  IJanuaWHRRowsViewModel = interface(IJanuaDocRowsViewModel)
    ['{1D92E269-4B1C-41F6-A2FE-9188A4B29607}']
  end;

  /// <summary> This is the TestDialog Interface definition MUST be based on IJanuaRecordEditDialog </summary>
  IJanuaWHRRowsDialog = interface(IJanuaRecordEditDialog)
    ['{97B9B2C1-C40D-4B8C-86DC-A811A4E2A118}']
    function GetWHRRowsTestDetailViewModel: IJanuaWHRRowsViewModel;
    procedure SetWHRRowsViewModel(const Value: IJanuaWHRRowsViewModel);
    property WHRRowsViewModel: IJanuaWHRRowsViewModel read GetWHRRowsTestDetailViewModel
      write SetWHRRowsViewModel;
  end;

  IJanuaWHReceiptsViewModel = interface(IJanuaDBDocumentsViewModel)
    ['{E250F594-CB22-4B39-805D-75B17456FF99}']
    function GetWHRRowsViewModel: IJanuaWHRRowsViewModel;
    property WHRRowsViewModel: IJanuaWHRRowsViewModel read GetWHRRowsViewModel;

    function GetSVMShipment: ISearchViewModelShipments;
    procedure SetSVMShipment(const Value: ISearchViewModelShipments);
    property SVMShipment:ISearchViewModelShipments read GetSVMShipment write SetSVMShipment;

    end;

    IJanuaWHReceiptForm = interface(IJanuaRecordEditDialog)['{E1D1FE3F-8204-4DC5-B6C9-455B7E625887}']
    function GetWHRViewModel: IJanuaWHReceiptsViewModel;
    procedure SetWHRViewModel(const Value: IJanuaWHReceiptsViewModel);
    property WHRViewModel: IJanuaWHReceiptsViewModel read GetWHRViewModel write SetWHRViewModel;
  end;

  IJanuaWHRReporter = interface(IJanuaReporter)
    ['{B1AA9509-B86C-410F-92C0-DE50F2465F6A}']
    function GetWHRViewModel: IJanuaWHReceiptsViewModel;
    procedure SetWHRViewModel(const Value: IJanuaWHReceiptsViewModel);
    property WHRViewModel: IJanuaWHReceiptsViewModel read GetWHRViewModel write SetWHRViewModel;
  end;

  IJanuaWHRLabelsReporter = interface(IJanuaWHRReporter)
    ['{137991FC-5879-49C2-A2F4-814A7A33AE0B}']
  end;

  IJanuaWHRReceiptsReporter = interface(IJanuaWHRReporter)
    ['{3D5F373A-654F-49FF-AE85-31407BDA7970}']
  end;

  IJanuaWHRReportingList = interface(IJanuaReportingList)
    ['{EE7ECEA4-0CF7-404A-8626-6834CD54EA4D}']
  end;

implementation

end.

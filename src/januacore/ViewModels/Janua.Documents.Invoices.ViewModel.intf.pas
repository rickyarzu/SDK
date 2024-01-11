unit Janua.Documents.Invoices.ViewModel.intf;

interface

uses Janua.Core.Classes.intf, Janua.Controls.Forms.intf, Janua.Orm.intf, Data.DB, JOrm.Documents.intf,
  Janua.ViewModels.intf, Janua.Documents.ViewModel.intf, Janua.Reporting.intf;

type

  /// <summary> extends IJanuaDocumentsDataModule with WH Receipts specific Datasets </summary>
  IJanuaInvoicesDataModule = interface(IJanuaDocumentsDataModule)
    ['{C72BB3CE-066E-4066-938E-8A829BB113C9}']
  end;

  IJanuaInvoicesModel = interface(IJanuaDBDocumentsModel)
    ['{FC703D3D-ECFC-4DE6-95A6-0AC78B629B76}']
  end;

  IJanuaInvoicesViewModel = interface(IJanuaDBDocumentsViewModel)
    ['{075CB1D7-70B2-4C56-9E3D-67BAEDD18A9A}']
  end;

  IJanuaInvoicesEditDialog = interface(IJanuaRecordEditDialog)
    ['{9365B7E1-6028-4EE0-88BE-566137FAD488}']
    function GetInvoicesViewModel: IJanuaInvoicesViewModel;
    procedure SetInvoicesViewModel(const Value: IJanuaInvoicesViewModel);
    property InvoicesViewModel: IJanuaInvoicesViewModel read GetInvoicesViewModel write SetInvoicesViewModel;
  end;

  IJanuaInvoicesReporter = interface(IJanuaReporter)
    ['{0B0B218C-5CCC-4A3E-BC89-6DFC77691368}']
    function GetInvoicesViewModel: IJanuaInvoicesViewModel;
    procedure SetInvoicesViewModel(const Value: IJanuaInvoicesViewModel);
    property InvoicesViewModel: IJanuaInvoicesViewModel read GetInvoicesViewModel write SetInvoicesViewModel;
  end;

  IJanuaInvoicesLabelsReporter = interface(IJanuaInvoicesReporter)
    ['{73DF5240-363C-4C13-9E09-FFDBC38A197C}']
  end;

  IJanuaInvoicesSingleReporter = interface(IJanuaInvoicesReporter)
    ['{47E79B9B-4825-4718-9B06-172264654235}']
  end;

  IJanuaInvoicesReportingList = interface(IJanuaReportingList)
    ['{FA74030D-D0C8-4258-9ABB-72ABDE6EAFDB}']
  end;

implementation

end.

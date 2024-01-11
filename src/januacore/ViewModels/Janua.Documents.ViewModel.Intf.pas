unit Janua.Documents.ViewModel.Intf;

interface

uses System.SysUtils, Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Orm.Intf, Data.DB,
  JOrm.Documents.Intf, JOrm.Shipping.Intf,
  Janua.ViewModels.Intf, JOrm.Anagraph.Intf, JOrm.Items.Intf,
  Janua.Search.ViewModels.Engines.Intf, Janua.Anagraph.ViewModel.Intf;

type
  IJanuaDocumentsDataModule = interface(IJanuaDataModuleContainer)
    ['{84D382F7-99FA-4E49-A9F7-0069EB3098DD}']
    function GetjdsDocCharges: IJanuaDBDataset;
    procedure SetjdsDocCharges(const Value: IJanuaDBDataset);
    property jdsDocCharges: IJanuaDBDataset read GetjdsDocCharges write SetjdsDocCharges;
    function GetjdsVatAmounts: IJanuaDBDataset;
    procedure SetjdsVatAmounts(Value: IJanuaDBDataset);
    property jdsVatAmounts: IJanuaDBDataset read GetjdsVatAmounts write SetjdsVatAmounts;
    function GetjdsDocTypes: IJanuaDBDataset;
    procedure SetjdsDocTypes(Value: IJanuaDBDataset);
    property jdsDocTypes: IJanuaDBDataset read GetjdsDocTypes write SetjdsDocTypes;
    function GetjdsDocHeads: IJanuaDBDataset;
    procedure SetjdsDocHeads(Value: IJanuaDBDataset);
    property jdsDocHeads: IJanuaDBDataset read GetjdsDocHeads write SetjdsDocHeads;
    function GetjdsDocRows: IJanuaDBDataset;
    procedure SetjdsDocRows(Value: IJanuaDBDataset);
    property jdsDocRows: IJanuaDBDataset read GetjdsDocRows write SetjdsDocRows;
    function GetjdsDocAttachments: IJanuaDBDataset;
    procedure SetjdsDocAttachments(Value: IJanuaDBDataset);
    property jdsDocAttachments: IJanuaDBDataset read GetjdsDocAttachments write SetjdsDocAttachments;
  end;

  /// <summary>  This is the RecordSetModel Implementing the (standard) Rows of the Document  </summary>
  IJanuaRSRows = interface(IJanuaRecordSetModel)
    ['{3EE65216-08BA-46BA-8725-4B75561CE098}']
    function GetRows: IDocRowsView;
    procedure SetRows(const Value: IDocRowsView);
    property Rows: IDocRowsView read GetRows write SetRows;
    function GetRow: IDocRowView;
    property Row: IDocRowView read GetRow;
    /// <summary> CallBack Procedures for Item's Supplier or Document Rows
    procedure CallBackAnagraph(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Warehouse
    procedure CAllBackItem(const aItem: IItemDefinition; aRecordCount: Integer = 1); // Row Item
  end;

  /// <summary>  This is the RecordSetModel Implementing the (charges) Rows of the document </summary>
  IJanuaRSDocCharges = interface(IJanuaRSRows)
    ['{AEC29624-70CE-4DB1-8712-73D030E578DE}']
    function GetCharges: IDocChargesView;
    procedure SetCharges(const Value: IDocChargesView);
    property Charges: IDocChargesView read GetCharges write SetCharges;
  end;

  /// <summary> RecordSetModel Implementing the (standard) Attachement list Recordset of a Document  </summary>
  IJanuaRSDocAttachments = interface(IJanuaRecordSetModel)
    ['{702FA1C2-566F-4791-8350-036B875FECA2}']
    function GetAttachments: IDocAttachmentsView;
    procedure SetAttachments(const Value: IDocAttachmentsView);
    function GetAttachment: IDocAttachmentView;
    property Attachments: IDocAttachmentsView read GetAttachments write SetAttachments;
    property Attachment: IDocAttachmentView read GetAttachment;
    procedure OpenRecordFile;
    procedure CopyFile(const aFileName: TFileName);
  end;

  IJanuaDBDocumentsModel = interface(IJanuaDBModel)
    ['{5DED8DD1-BC9D-42BE-ACC2-E27A427E4710}']
    function GetjdsVatAmounts: IJanuaDBDataset;
    property jdsVatAmounts: IJanuaDBDataset read GetjdsVatAmounts;
    function GetjdsDocHeads: IJanuaDBDataset;
    procedure SetjdsDocHeads(Value: IJanuaDBDataset);
    property jdsDocHeads: IJanuaDBDataset read GetjdsDocHeads write SetjdsDocHeads;
    function GetjdsDocRows: IJanuaDBDataset;
    procedure SetjdsDocRows(Value: IJanuaDBDataset);
    property jdsDocRows: IJanuaDBDataset read GetjdsDocRows write SetjdsDocRows;
    function GetDocID: Int64;
    procedure SetDocID(const Value: Int64);
    /// <summary>  This property is linked with the ID Parameter of the Heads, used to retrieve only one
    /// document at a time </summary>
    property DocID: Int64 read GetDocID write SetDocID;
    function GetDocHeadRecord: IDocHeadView;
    property DocHeadRecord: IDocHeadView read GetDocHeadRecord;
    function GetjdsDocAttachments: IJanuaDBDataset;
    procedure SetjdsDocAttachments(Value: IJanuaDBDataset);

    property jdsDocAttachments: IJanuaDBDataset read GetjdsDocAttachments write SetjdsDocAttachments;
    procedure CallBackHolder(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // shipper
    procedure CallBackCarrier(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
    procedure CAllBackLocation(const aAnagraph: IAnagraph; aRecordCount: Integer = 1);
    procedure CallBackAnagraph(const aAnagraph: IAnagraph; aRecordCount: Integer = 1); // Warehouse
    procedure CAllBackItem(const aItem: IItemDefinition; aRecordCount: Integer = 1); // Row Item
    procedure CAllBackVessel(const aVessel: IVessel; aRecordCount: Integer = 1);

    function GetDocumentRows: IJanuaRSRows;
    procedure SetDocumentRows(const Value: IJanuaRSRows);
    /// <summary> IJanuaRSRows: Main Document Rows RecordSet Model </summary>
    property DocumentRows: IJanuaRSRows read GetDocumentRows write SetDocumentRows;
    function GetDocAttachments: IJanuaRSDocAttachments;
    procedure SetDocAttachments(const Value: IJanuaRSDocAttachments);
    /// <summary> IJanuaRSDocAttachments: Main Document Attachments RecordSet Model </summary>
    property DocAttachments: IJanuaRSDocAttachments read GetDocAttachments write SetDocAttachments;

    function GetjdsDocCharges: IJanuaDBDataset;
    procedure SetjdsDocCharges(const Value: IJanuaDBDataset);
    property jdsDocCharges: IJanuaDBDataset read GetjdsDocCharges write SetjdsDocCharges;

    function GetDocCharges: IJanuaRSDocCharges;
    procedure SetDocCharges(const Value: IJanuaRSDocCharges);
    /// <summary> IJanuaRSDocCharges: Main Document Rows RecordSet Model </summary>
    property RSDocCharges: IJanuaRSDocCharges read GetDocCharges write SetDocCharges;
  end;

  IJanuaDocRowsViewModel = interface(IJanuaRecordsetViewModel)
    ['{2585AE0F-38D5-4786-B5B1-FE2FADA3397E}']
    function GetRsDocRows: IJanuaRSRows;
    procedure SetRsDocRows(const Value: IJanuaRSRows);
    /// <summary> IJanuaRSRows: RecordSetModel Implementing the (standard) Rows of the Document  </summary>
    property RsDocRows: IJanuaRSRows read GetRsDocRows write SetRsDocRows;

    function GetRows: IDocRowsView;
    property Rows: IDocRowsView read GetRows;

    function GetDocRow: IDocRowView;
    property TestDocRow: IDocRowView read GetDocRow;

    function GetSVMRowItem: ISearchViewModelItem;
    procedure SetSVMRowItem(const Value: ISearchViewModelItem);
    function GetSVMSupplier: ISearchViewModelAnagraph;
    procedure SetSVMSupplier(const Value: ISearchViewModelAnagraph);
    property SVMSupplier: ISearchViewModelAnagraph read GetSVMSupplier write SetSVMSupplier;
    property SVMRowItem: ISearchViewModelItem read GetSVMRowItem write SetSVMRowItem;
  end;

  IJanuaDocChargesViewModel = interface(IJanuaDocRowsViewModel)
    ['{87421A7A-D4E3-4460-BA1F-D75ADA365EFE}']
    function GetRsDocDocCharges: IJanuaRSDocCharges;
    procedure SetRsDocDocCharges(const Value: IJanuaRSDocCharges);
    /// <summary> IJanuaRSDocCharges: RecordSetModel Implementing the (standard) DocCharges of the Document  </summary>
    property RsDocDocCharges: IJanuaRSDocCharges read GetRsDocDocCharges write SetRsDocDocCharges;

    function GetCharges: IDocChargesView;
    property Charges: IDocChargesView read GetCharges;
  end;

  IJanuaDocAttachmentsViewModel = interface(IJanuaRecordsetViewModel)
    ['{7350FE60-94F7-4AEC-B48B-030EE6312DD1}']
    function GetRsDocAttachments: IJanuaRSDocAttachments;
    procedure SetRsDocAttachments(const Value: IJanuaRSDocAttachments);
    /// <summary> IJanuaRSDocAttachments: RecordSetModel Implementing the (standard) Attachments of the Document  </summary>
    property RsDocAttachments: IJanuaRSDocAttachments read GetRsDocAttachments write SetRsDocAttachments;

    function GetAttachments: IDocAttachmentsView;
    property DocAttachments: IDocAttachmentsView read GetAttachments;

    function GetDocAttachment: IDocAttachmentView;
    property DocAttachment: IDocAttachmentView read GetDocAttachment;

    /// <summary> Makes a copy of the File, stores it on the Cloud destination, and Updates an Attach Record  </summary>
    procedure CopyFile(const aFileName: TFileName);
    procedure OpenRecordFile;
  end;

  IJanuaDocumentsViewModel = interface(IJanuaViewModel)
    ['{3D7DA842-6F06-4CDD-BBEB-3AB85BE6C3F6}']
    function GetCurrentRecord: IDocHeadView;
    procedure SetCurrentRecord(const Value: IDocHeadView);
    property CurrentRecord: IDocHeadView read GetCurrentRecord write SetCurrentRecord;
  end;

  IJanuaDBDocumentsViewModel = interface(IJanuaDBViewModel)
    ['{F85EDED4-17C9-4C99-A271-F03211A10A59}']
    function GetjdsDocHeads: IJanuaDBDataset;
    function GetjdsDocRows: IJanuaDBDataset;
    function GetjdsDocAttachments: IJanuaDBDataset;
    function GetjdsVatAmounts: IJanuaDBDataset;
    function GetdsDocHeads: TDataSource;
    function GetdsDocRows: TDataSource;
    function GetDBDocumentsModel: IJanuaDBDocumentsModel;
    function GetDocHeadRecord: IDocHeadView;
    // ---- Properties ----------------------------------------------------------------------------------
    property jdsDocHeads: IJanuaDBDataset read GetjdsDocHeads;
    property jdsDocAttachments: IJanuaDBDataset read GetjdsDocAttachments;
    property DBDocumentsModel: IJanuaDBDocumentsModel read GetDBDocumentsModel;
    property dsDocHeads: TDataSource read GetdsDocHeads;
    property DocHeadRecord: IDocHeadView read GetDocHeadRecord;
    property jdsDocRows: IJanuaDBDataset read GetjdsDocRows;
    property dsDocRows: TDataSource read GetdsDocRows;
    property jdsVatAmounts: IJanuaDBDataset read GetjdsVatAmounts;
    // ----- Search Anagraph Engine ---------------------------------------------------------------------
    function GetSVMCarrier: ISearchViewModelAnagraph;
    function GetSVMHolder: ISearchViewModelAnagraph;
    function GetSVMVesselLocation: ISearchViewModelAnagraph;
    function GetSVMAnagraph: ISearchViewModelAnagraph;
    function GetSVMVessel: ISearchViewModelVessel;
    procedure SetSVMCarrier(const Value: ISearchViewModelAnagraph);
    procedure SetSVMHolder(const Value: ISearchViewModelAnagraph);
    procedure SetSVMVesselLocation(const Value: ISearchViewModelAnagraph);
    procedure SetSVMAnagraph(const Value: ISearchViewModelAnagraph);
    // Search Items Engine ------------------------------------------------------------------------------
    function GetSVMRowItem: ISearchViewModelItem;
    procedure SetSVMRowItem(const Value: ISearchViewModelItem);
    procedure CallBackHolder(aRecordCount: Integer = 1);
    procedure CallBackCarrier(aRecordCount: Integer = 1);
    procedure CAllBackLocation(aRecordCount: Integer = 1);
    procedure CallBackAnagraph(aRecordCount: Integer = 1);
    procedure CAllBackVessel(aRecordCount: Integer = 1);

    /// <summary> View Model Search for Carrier  </summary>
    property SVMCarrier: ISearchViewModelAnagraph read GetSVMCarrier write SetSVMCarrier;
    property SVMHolder: ISearchViewModelAnagraph read GetSVMHolder write SetSVMHolder;
    property SVMVesselLocation: ISearchViewModelAnagraph read GetSVMVesselLocation write SetSVMVesselLocation;
    property SVMAnagraph: ISearchViewModelAnagraph read GetSVMAnagraph write SetSVMAnagraph;
    property SVMRowItem: ISearchViewModelItem read GetSVMRowItem write SetSVMRowItem;
    property SVMVessel: ISearchViewModelVessel read GetSVMVessel;

    function GetViewModelCarrier: IJanuaDBAnagraphViewModel;
    function GetViewModelHolder: IJanuaDBAnagraphViewModel;
    function GetViewModelVesselLocation: IJanuaDBAnagraphViewModel;
    function GetViewModelAnagraph: IJanuaDBAnagraphViewModel;

    // <summary> IJanuaDBAnagraphViewModel: link to cached ViewModelCarrier to edit/insert its record </summary>
    property ViewModelCarrier: IJanuaDBAnagraphViewModel read GetViewModelCarrier;
    // <summary> IJanuaDBAnagraphViewModel: link to cached ViewModelCarrier to edit/insert its record </summary>
    property ViewModelHolder: IJanuaDBAnagraphViewModel read GetViewModelHolder;
    // <summary> IJanuaDBAnagraphViewModel: link to cached ViewModelCarrier to edit/insert its record </summary>
    property ViewModelVesselLocation: IJanuaDBAnagraphViewModel read GetViewModelVesselLocation;
    // <summary> IJanuaDBAnagraphViewModel: link to cached ViewModelCarrier to edit/insert its record </summary>
    property ViewModelAnagraph: IJanuaDBAnagraphViewModel read GetViewModelAnagraph;

    function GetVMAttachments: IJanuaDocAttachmentsViewModel;
    // <summary> VMAttachments Sub Model  </summary>
    property AttachmentsViewModel: IJanuaDocAttachmentsViewModel read GetVMAttachments;

    function GetVMCharges: IJanuaDocChargesViewModel;
    // <summary> IJanuaDocChargesViewModel: Doc ChargesView Model </summary>
    property ChargesViewModel: IJanuaDocChargesViewModel read GetVMCharges;
  end;

  IJanuaDocWarehouseReceiptsViewModel = interface(IJanuaDBDocumentsViewModel)
    ['{AA1C367F-84AD-4D9B-9B2E-7BBC9F2AF7C9}']
  end;

  /// <summary> This is the TestDialog Interface definition MUST be based on IJanuaRecordEditDialog </summary>
  IJanuaDocAttachmentsDialog = interface(IJanuaRecordEditDialog)
    ['{5543FE5B-2BAD-4639-AC03-764048FDC56F}']
    function GetDocAttachmentsViewModel: IJanuaDocAttachmentsViewModel;
    procedure SetDocAttachmentsViewModel(const Value: IJanuaDocAttachmentsViewModel);
    property AttachmentsViewModel: IJanuaDocAttachmentsViewModel read GetDocAttachmentsViewModel
      write SetDocAttachmentsViewModel;
  end;

  //IJanuaDocRowsViewModel
  IJanuaDocRowsDialog = interface(IJanuaRecordEditDialog)
    ['{A8B4BBB2-6FF1-430C-9ABD-FD0B1C477F3D}']
    function GetDocRowsViewModel: IJanuaDocRowsViewModel;
    procedure SetDocRowsViewModel(const Value: IJanuaDocRowsViewModel);
    property DocRowsViewModel: IJanuaDocRowsViewModel read GetDocRowsViewModel
      write SetDocRowsViewModel;
  end;

  IJanuaDocChargesDialog = interface(IJanuaRecordEditDialog)
    ['{2A8D34FE-35FC-4C41-BB9E-2898B5306593}']
    function GetDocChargesViewModel: IJanuaDocChargesViewModel;
    procedure SetDocChargesViewModel(const Value: IJanuaDocChargesViewModel);
    property DocChargesViewModel: IJanuaDocChargesViewModel read GetDocChargesViewModel
      write SetDocChargesViewModel;
  end;

implementation

end.

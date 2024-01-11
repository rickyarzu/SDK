unit Janua.Html.Builder.Intf;

interface

uses
  Spring.Collections, Janua.Orm.Intf, Janua.Html.Intf;

type
  IHtmlBuilder = interface(IInterface)
    ['{88340361-9174-477E-9DAF-EBECDA7A5C57}']
    function GetElement: IJanuaHtmlObject;
    // Recordset For The Builder............................................
    // Master RecordSet
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(Value: IJanuaRecordSet);
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
  end;

type
  THtmlTableTableColumn = record
  private
    FWidth: Word;
    FField: IJanuaField;
    FTitle: string;
    FHeight: Word;
    FGroup: string;
  private
    FOnColumnClick: string;
    FOnCellClick: string;
    procedure SetField(const Value: IJanuaField);
    procedure SetGroup(const Value: string);
    procedure SetHeight(const Value: Word);
    procedure SetTitle(const Value: string);
    procedure SetWidth(const Value: Word);
    procedure SetOnCellClick(const Value: string);
    procedure SetOnColumnClick(const Value: string);
  public
    property Field: IJanuaField read FField write SetField;
    property Title: string read FTitle write SetTitle;
    property Group: string read FGroup write SetGroup;
    property Width: Word read FWidth write SetWidth;
    property Height: Word read FHeight write SetHeight;
    property OnColumnClick: string read FOnColumnClick write SetOnColumnClick;
    property OnCellClick: string read FOnCellClick write SetOnCellClick;
  public
    constructor Create(aField: IJanuaField; const aTitle: string; const aGroup: string = '';
      const aOnCellClick: string = ''; const aOnColumnClick: string = ''; const aWidth: Word = 0;
      const aHeight: Word = 0);
  end;

  IHtmlTableBuilder = interface(IHtmlBuilder)
    ['{67954BDC-88AC-4E8E-9282-4A4745103EC0}']
    function GetColumns: IList<THtmlTableTableColumn>;
    procedure SetColumns(Value: IList<THtmlTableTableColumn>);
    property Columuns: IList<THtmlTableTableColumn> read GetColumns write SetColumns;
    procedure AddColumin(aColumn: THtmlTableTableColumn);
    function GetID: string;
    function GetSortable: Boolean;
    procedure SetID(const Value: string);
    procedure SetSortable(const Value: Boolean);
    property Sortable: Boolean read GetSortable write SetSortable;
    property ID: string read GetID write SetID;
  end;

type
  IHtmlMenuBuilder = interface(IHtmlBuilder)
    ['{19643EB2-4AF9-49D1-A293-453034F61140}']
    // Title Field
    function GetTitleField: IJanuaField;
    procedure SetTitleField(Value: IJanuaField);
    property TitleField: IJanuaField read GetTitleField write SetTitleField;
    // Title Field
    function GetUrlField: IJanuaField;
    procedure SetUrlField(Value: IJanuaField);
    property UrlField: IJanuaField read GetUrlField write SetUrlField;
    // Title Field
    function GetIconField: IJanuaField;
    procedure SetIconField(Value: IJanuaField);
    property IconField: IJanuaField read GetIconField write SetIconField;
    // Main Menu RecordSet
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(Value: IJanuaRecordSet);
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
    // Sub Menu (if is Set)
    function GetSubMenu: IHtmlMenuBuilder;
    procedure SetSubMenu(Value: IHtmlMenuBuilder);
    property SubMenu: IHtmlMenuBuilder read GetSubMenu write SetSubMenu;
    // Sub Recordset
    // Record Set (if Set).............................................................................................
    function GetSubRecordSet: IJanuaRecordSet;
    procedure SetSubRecordSet(Value: IJanuaRecordSet);
    property SubRecordSet: IJanuaRecordSet read GetSubRecordSet write SetSubRecordSet;
    // And ALL ITS SUB-FIELDS
    // Title Field
    function GetSubTitleField: IJanuaField;
    procedure SetSubTitleField(Value: IJanuaField);
    property SubTitleField: IJanuaField read GetSubTitleField write SetSubTitleField;
    // Title Field
    function GetSubUrlField: IJanuaField;
    procedure SetSubUrlField(Value: IJanuaField);
    property SubUrlField: IJanuaField read GetSubUrlField write SetSubUrlField;
    // Title Field
    function GetSubIconField: IJanuaField;
    procedure SetSubIconField(Value: IJanuaField);
    property SubIconField: IJanuaField read GetSubIconField write SetSubIconField;
    // Has Home
    procedure SetHasHome(const Value: Boolean);
    function GetHasHome: Boolean;
    property HasHome: Boolean read GetHasHome write SetHasHome;
    // Selected Field
    function GetSubSelectedField: IJanuaField;
    function GetSelectedField: IJanuaField;
    procedure SetSelectedField(const Value: IJanuaField);
    procedure SetSubSelectedField(const Value: IJanuaField);
    property SelectedField: IJanuaField read GetSelectedField write SetSelectedField;
    property SubSelectedField: IJanuaField read GetSubSelectedField write SetSubSelectedField;
  end;

type
  IHtmlSliderBuilder = interface(IHtmlBuilder)
    ['{B72F0C5D-C533-42DC-B7CF-E8C9E681C0AE}']
    // Title Field
    function GetTitleField: IJanuaField;
    procedure SetTitleField(Value: IJanuaField);
    property TitleField: IJanuaField read GetTitleField write SetTitleField;
    // Description Field  // page Description property .......................................
    function GetDescriptionField: IJanuaField;
    procedure SetDescriptionField(Value: IJanuaField);
    property DescriptionField: IJanuaField read GetDescriptionField write SetDescriptionField;
    // Url Field
    function GetUrlField: IJanuaField;
    procedure SetUrlField(Value: IJanuaField);
    property UrlField: IJanuaField read GetUrlField write SetUrlField;
    // Image Field (Mandatory ... is still a slider)
    function GetImageField: IJanuaField;
    procedure SetImageField(Value: IJanuaField);
    property ImageField: IJanuaField read GetImageField write SetImageField;
    // Has Url
    procedure SetHasUrl(const Value: Boolean);
    function GetHasUrl: Boolean;
    property HasUrl: Boolean read GetHasUrl write SetHasUrl;
    // Has Title
    procedure SetHasTitle(const Value: Boolean);
    function GetHasTitle: Boolean;
    property HasTitle: Boolean read GetHasTitle write SetHasTitle;
    // Has Description
    procedure SetHasDescription(const Value: Boolean);
    function GetHasDescription: Boolean;
    property HasDescription: Boolean read GetHasDescription write SetHasDescription;
  end;

type
  IHtmlArticlesBuilder = interface(IHtmlBuilder)
    ['{B72F0C5D-C533-42DC-B7CF-E8C9E681C0AE}']
    // Title Field
    function GetTitleField: IJanuaField;
    procedure SetTitleField(Value: IJanuaField);
    property TitleField: IJanuaField read GetTitleField write SetTitleField;
    // Description Field  // page Description property .......................................
    function GetDescriptionField: IJanuaField;
    procedure SetDescriptionField(Value: IJanuaField);
    property DescriptionField: IJanuaField read GetDescriptionField write SetDescriptionField;
    // Url Field
    function GetUrlField: IJanuaField;
    procedure SetUrlField(Value: IJanuaField);
    property UrlField: IJanuaField read GetUrlField write SetUrlField;
    // Icon Field  // page Icon property ... not mandatory  .......................................
    function GetIconField: IJanuaField;
    procedure SetIconField(Value: IJanuaField);
    property IconField: IJanuaField read GetIconField write SetIconField;
    // Image Field  // page Image property ... not mandatory  .......................................
    function GetImageField: IJanuaField;
    procedure SetImageField(Value: IJanuaField);
    property ImageField: IJanuaField read GetImageField write SetImageField;
    // Author Field  // page Author property ... not mandatory  .......................................
    function GetAuthorField: IJanuaField;
    procedure SetAuthorField(Value: IJanuaField);
    property AuthorField: IJanuaField read GetAuthorField write SetAuthorField;
    // Date Field  // page Date property ... not mandatory  .......................................
    function GetDateField: IJanuaField;
    procedure SetDateField(Value: IJanuaField);
    property DateField: IJanuaField read GetDateField write SetDateField;
    /// Settings ....................................................................................
    // Icon Field  // page Icon property ... not mandatory  .......................................
    function GetHasIcon: Boolean;
    procedure SetHasIcon(Value: Boolean);
    property HasIcon: Boolean read GetHasIcon write SetHasIcon;
    // HasImage   // page HasImage property ... not mandatory  .......................................
    function GetHasImage: Boolean;
    procedure SetHasImage(Value: Boolean);
    property HasImage: Boolean read GetHasImage write SetHasImage;
    // HasAuthor   // page HasAuthor property ... not mandatory  .......................................
    function GetHasAuthor: Boolean;
    procedure SetHasAuthor(Value: Boolean);
    property HasAuthor: Boolean read GetHasAuthor write SetHasAuthor;
    /// ..................... Rendering Object (Container for Articles Builder) ........................
    function GetHtmlObject: IJanuaHtmlObject;
    procedure SetHtmlObject(Value: IJanuaHtmlObject);
    property HtmlObject: IJanuaHtmlObject read GetHtmlObject write SetHtmlObject;
    // procedure di Append degli elementi su un oggetto Janua Html Object esistnte .....................
    procedure WriteToObject; overload;
    procedure WriteToObject(aObject: IJanuaHtmlObject); overload;
  end;

type
  IHtmlPageBuilder = interface(IHtmlBuilder)
    ['{57AF3C7B-74A0-43DE-8986-45453C7BDA9B}']

  end;

type
  IHtmlBuilderFactory = interface(IInterface)
    ['{0121554C-6855-416C-89AC-0740B07269CC}']
    // Elementi Essenziali per la creazione di un Oggetto:
    procedure GetMenuBuilder(aRecordSet: IJanuaRecordSet; aTitle, aIcon, aDes: IJanuaField; out a: IHtmlMenuBuilder;
      b: IHtmlBuilder);
    // function GetPageBuilder: IHtmlPageBuilder;
    procedure GetSliderBuilder(aRecordSet: IJanuaRecordSet; aTitle, aImage, aDes, aUrl: IJanuaField;
      out a: IHtmlSliderBuilder; b: IHtmlBuilder);
  end;

implementation

uses
  Spring;

{ THtmlTableTableColumn }

constructor THtmlTableTableColumn.Create(aField: IJanuaField; const aTitle: string; const aGroup: string = '';
  const aOnCellClick: string = ''; const aOnColumnClick: string = ''; const aWidth: Word = 0; const aHeight: Word = 0);
begin
  Guard.CheckNotNull(aField, 'THtmlTableTableColumn.Create aField is nil: ' + aTitle);
  self.FField := aField;
  self.FTitle := aTitle;
  self.FGroup := aGroup;
  self.FWidth := aWidth;
  self.Height := aHeight;
  self.FOnCellClick := aOnCellClick;
  self.FOnColumnClick := aOnColumnClick;
end;

procedure THtmlTableTableColumn.SetField(const Value: IJanuaField);
begin
  FField := Value;
end;

procedure THtmlTableTableColumn.SetGroup(const Value: string);
begin
  FGroup := Value;
end;

procedure THtmlTableTableColumn.SetHeight(const Value: Word);
begin
  FHeight := Value;
end;

procedure THtmlTableTableColumn.SetOnCellClick(const Value: string);
begin
  FOnCellClick := Value;
end;

procedure THtmlTableTableColumn.SetOnColumnClick(const Value: string);
begin
  FOnColumnClick := Value;
end;

procedure THtmlTableTableColumn.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

procedure THtmlTableTableColumn.SetWidth(const Value: Word);
begin
  FWidth := Value;
end;

end.

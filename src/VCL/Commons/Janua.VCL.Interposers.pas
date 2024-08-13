unit Janua.VCL.Interposers;

interface

uses
  System.Classes, System.UITypes, System.SysUtils, Data.Db, Spring.Collections,
  // VCL
  VCL.ComCtrls, VCL.Buttons, VCL.StdCtrls, VCL.ExtCtrls, VCL.Controls, VCL.Samples.Spin, VCL.Graphics,
  VCL.Mask, VCL.DBCtrls, VCL.ActnList, VCL.Forms,
  // Jedi
  JvToolEdit, JvBaseEdits, jvDBLookup, JvValidateEdit,
  // Janua
  Janua.Core.Types, Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.VCL.Bindings.Intf, Janua.Bindings.Intf,
  Janua.Controls.Forms.Impl, Janua.Controls.Forms.Intf, Janua.VCL.CategoryButtonsFrame;

(*
  IJanuaBindableEditControl = interface(IJanuaBindableControl)
  ['{BF293CF9-26F1-4572-B E63-5543BDEA7174}']
  function GetJanuaText: string;
  procedure SetJanuaText(const Value: string);
  property Text: string read GetJanuaText write SetJanuaText;

  function GetJanuaOnEnter: string;
  procedure SetJanuaOnEnter(const Value: string);
  property OnEnter: string read GetJanuaOnEnter write SetJanuaOnEnter;

  function GetJanuaOnExit: string;
  procedure SetJanuaOnExit(const Value: string);
  property OnExit: string read GetJanuaOnExit write SetJanuaOnExit;
*)

type
  TAction = class(VCL.ActnList.TAction, IJanuaBindable)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
    // ************************************* Bindings Procedures ***********************************
  public
    procedure ClearBindings;
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  end;

  TRadioGroup = class(VCL.ExtCtrls.TRadioGroup, IJanuaBindableControl, IJanuaBindable)
  public
    procedure ClearBindings;
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
  protected
    procedure Click; override;

    procedure DoEnter; override;
    procedure DoExit; override;

    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
    // property OnExit: TNotifyEvent read GetJanuaOnExit write SetJanuaOnExit;
  public
    function AsComponent: TComponent;

    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************

  end;

type
  TEdit = class(VCL.StdCtrls.TEdit, IJanuaBindableControl, IJanuaBindableEditControl, IJanuaBindable)
  public
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
  protected
    procedure Change; override;
    procedure DoEnter; override;
    procedure DoExit; override;
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;
    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
    // property OnExit: TNotifyEvent read GetJanuaOnExit write SetJanuaOnExit;
  public
    function AsComponent: TComponent;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure ClearBindings;
    procedure BindToField(const aField: IJanuaField);
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  end;

type
  TJvValidateEdit = class(JvValidateEdit.TJvValidateEdit, IJanuaBindableControl, IJanuaBindableEditControl,
    IJanuaBindable)
  private
    FtmpValue: Variant;
  public
    procedure ClearBindings;
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
  protected
    procedure Change; override;
    procedure DoEnter; override;
    procedure DoExit; override;
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;
    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
    // property OnExit: TNotifyEvent read GetJanuaOnExit write SetJanuaOnExit;
  public
    function AsComponent: TComponent;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure BindToField(const aField: IJanuaField);
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  end;

type
  TJvDBLookupCombo = class(jvDBLookup.TJvDBLookupCombo, IJanuaBindableControl)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
  private
    FBindCount: Integer;
    Tmp: string;
    FField: IJanuaField;
  strict protected
    function GetHasBindings: boolean;
  public
    function AsComponent: TComponent;
    // ------------ IJanuaBindable Object Interface implementation ---------------------------------
    procedure BindToField(const aField: IJanuaField);
    procedure ClearBindings;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    procedure KeyValueChanged; override;
  public
    procedure CloseUp(Accept: boolean); override;
  end;

type
  TLabeledEdit = class(VCL.ExtCtrls.TLabeledEdit, IJanuaBindableLabelControl, IJanuaBindableEditControl,
    IJanuaBindable)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
  protected
    procedure Change; override;
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    function GetJanuaCaption: string;
    procedure SetJanuaCaption(const Value: string);
    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;
    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);

    // ------------ IJanuaBindable Object Interface implementation ---------------------------------
    procedure ClearBindings;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  public
    function AsComponent: TComponent;
  end;

type
  TSpeedButton = class(VCL.Buttons.TSpeedButton, IJanuaActionable)
  private
    function JGetAction: TBasicAction;
    procedure JSetAction(Value: TBasicAction);
    function JGetOnClick: TNotifyEvent;
    procedure JSetOnClick(const Value: TNotifyEvent);
  public
    function AsComponent: TComponent;
  end;

  TButton = class(VCL.StdCtrls.TButton, IJanuaActionable)
  private
    function JGetAction: TBasicAction;
    procedure JSetAction(Value: TBasicAction);
    function JGetOnClick: TNotifyEvent;
    procedure JSetOnClick(const Value: TNotifyEvent);
  public
    function AsComponent: TComponent;
  end;

type
  TLabel = class(VCL.StdCtrls.TLabel, IJanuaBindableControl, IJanuaBindableLabelControl)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);

    // ------------ IJanuaBindable Object Interface implementation ---------------------------------
    procedure ClearBindings;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    function GetJanuaCaption: string;
    procedure SetJanuaCaption(const Value: string);
  public
    function AsComponent: TComponent;
  end;

  { IJanuaBindableDateControl = interface(IJanuaBindableEditControl)
    function GetJanuaText: TDate;
    procedure SetJanuaText(const Value: TDate);
    property Date: TDate read GetJanuaText write SetJanuaText;
    end; }

type
  TJvDateEdit = class(JvToolEdit.TJvDateEdit, IJanuaBindableDateControl, IJanuaBindableControl)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
    // ------------ IJanuaBindable Object Interface implementation ---------------------------------
    procedure ClearBindings;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    // property Text: string read GetJanuaText write SetJanuaText;
    function GetJanuaDate: TDate;
    procedure SetJanuaDate(const Value: TDate);
    // property Date: TDate read GetJanuaDate write SetJanuaDate;
    procedure Change; override;
    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
  public
    function AsComponent: TComponent;
  end;

type
  TDateTimePicker = class(VCL.ComCtrls.TDateTimePicker, IJanuaBindableDateControl, IJanuaBindableControl)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
    // ------------ IJanuaBindable Object Interface implementation ----------------------------------
    procedure ClearBindings;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
    procedure CheckValidDate(Value: TDate); override;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    // property Text: string read GetJanuaText write SetJanuaText;
    function GetJanuaDate: TDate;
    procedure SetJanuaDate(const Value: TDate);
    // property Date: TDate read GetJanuaDate write SetJanuaDate;
    procedure Change; override;
    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
  public
    function AsComponent: TComponent;
  end;

  // TSpinEdit  Vcl.Samples.Spin
type
  TSpinEdit = class(VCL.Samples.Spin.TSpinEdit, IJanuaBindableControl)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization

    // ------------ IJanuaBindable Object Interface implementation ---------------------------------
    procedure ClearBindings;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    procedure Change; override;
  public
    procedure OnChangeEvent(Sender: TObject);
  public
    function AsComponent: TComponent;
  end;

  TJvCalcEdit = class(JvBaseEdits.TJvCalcEdit, IJanuaBindableControl, IJanuaBindable)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
    // ------------ IJanuaBindable Object Interface implementation ---------------------------------
    procedure ClearBindings;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    procedure Change; override;
  public
    function AsComponent: TComponent;
  end;

  TCheckBox = class(VCL.StdCtrls.TCheckBox, IJanuaBindableControl)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization
    // ------------ IJanuaBindable Object Interface implementation ---------------------------------
    procedure ClearBindings;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);

    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************

  protected
    procedure Click; override;
  public
    function AsComponent: TComponent;
  end;

  TMemo = class(VCL.StdCtrls.TMemo, IJanuaBindableEditControl, IJanuaBindableControl)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization

    // ------------ IJanuaBindable Object Interface implementation --------------------------------
    procedure ClearBindings;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    procedure Change; override;
    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
  public
    function AsComponent: TComponent;
    property Text: string read GetJanuaText write SetJanuaText;
  end;

  TComboBox = class(VCL.StdCtrls.TComboBox, IJanuaBindableComboControl, IJanuaBindableControl, IJanuaBindable)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ----- Initialization

    // ------------ IJanuaBindable Object Interface implementation ---------------------------------
    procedure ClearBindings;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    function GetItemsText: string;
    function GetJanuaItemIndex: Integer;
    procedure SetItemsText(const Value: string);
    procedure SetJanuaItemIndex(const Value: Integer);
    procedure Change; override;
    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
  public
    function AsComponent: TComponent;
    property ItemsText: string read GetItemsText write SetItemsText;
    property JanuaItemIndex: Integer read GetJanuaItemIndex write SetJanuaItemIndex;
    property Text: string read GetItemsText write SetItemsText;

  end;

type
  TTabSheet = class(VCL.ComCtrls.TTabSheet)
  private
    FFormRecord: TJanuaFormRecord;
    procedure SetFormRecord(const Value: TJanuaFormRecord);
  public
    property FormRecord: TJanuaFormRecord read FFormRecord write SetFormRecord;
  end;

  TPageControl = class(VCL.ComCtrls.TPageControl)
  private
    FForms: IDictionary<string, TTabSheet>;
  protected
  public
    constructor Create(AOwner: TComponent); override;
  public
    function AddShowForm(const aFormRecord: TJanuaFormRecord): IJanuaForm;
  end;

type
  TTreeNode = class(VCL.ComCtrls.TTreeNode)
  private
    FFormRecord: TJanuaFormRecord;
    FForm: TForm;
    FFormRecordClick: TFormRecordFoundEvent;
    procedure SetFormRecord(const Value: TJanuaFormRecord);
    procedure SetFormRecordClick(const Value: TFormRecordFoundEvent);
  public
    function ShowForm: IJanuaForm;
  public
    property FormRecord: TJanuaFormRecord read FFormRecord write SetFormRecord;
    property FormRecordClick: TFormRecordFoundEvent read FFormRecordClick write SetFormRecordClick;
  end;

  TListItems = class(VCL.ComCtrls.TTreeView)

  end;

  TTreeView = class(VCL.ComCtrls.TTreeView)
  private
    FApplication: TJanuaApplicationRecord;
    FFormRecordClick: TFormRecordFoundEvent;
    procedure SetApplication(const Value: TJanuaApplicationRecord);
    procedure SetFormRecordClick(const Value: TFormRecordFoundEvent);
  public
    property Application: TJanuaApplicationRecord read FApplication write SetApplication;
    property FormRecordClick: TFormRecordFoundEvent read FFormRecordClick write SetFormRecordClick;
  end;

implementation

uses
  Spring, VCL.Styles, VCL.Themes, Janua.VCL.Styles.ControlColor, Janua.Core.Functions, Janua.Core.Classes,
  Janua.Application.Framework;

{ TEdit }

function TEdit.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TEdit.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TEdit.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TEdit.BindToField(const aField: IJanuaField);
begin
  try
    Text := aField.AsString;
    Enabled := not(aField.Calculated or aField.IsReadOnly);
    aField.Bind('AsString', Self, 'Text', aField.Calculated or aField.IsReadOnly);
  except
    on e: exception do
      RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField + ')  AsString -> Text', e, Self);
  end;
end;

procedure TEdit.CallObservers;
begin

end;

procedure TEdit.Change;
begin
  BindManager.Notify('Text');
  inherited;
end;

procedure TEdit.ClearBindings;
begin
  FBindManager.ClearBindings;
end;

constructor TEdit.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited Create(AOwner);
  Initialize;
end;

destructor TEdit.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TEdit.Detach(const aObserver: TObject);
begin

end;

procedure TEdit.DetachObservers;
begin

end;

procedure TEdit.DoEnter;
begin
  Color := clSkyBlue;
  inherited;
end;

procedure TEdit.DoExit;
begin
  inherited;
end;

function TEdit.GetBindManager: IJanuaBindManager;
begin
  Result := FBindManager
end;

function TEdit.GetJanuaOnEnter: TNotifyEvent;
begin
  Result := Self.OnEnter
end;

function TEdit.GetJanuaOnExit: TNotifyEvent;
begin
  Result := Self.OnExit
end;

function TEdit.GetJanuaText: string;
begin
  Result := Self.Text
end;

function TEdit.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TEdit.Initialize;
begin

end;

procedure TEdit.SetJanuaOnEnter(const Value: TNotifyEvent);
begin
  OnEnter := Value
end;

procedure TEdit.SetJanuaOnExit(const Value: TNotifyEvent);
begin
  OnExit := Value
end;

procedure TEdit.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

{ TJvValidate Edit }

function TJvValidateEdit.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TJvValidateEdit.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TJvValidateEdit.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TJvValidateEdit.BindToField(const aField: IJanuaField);
begin
  try
    Self.Value := aField.AsVariant;
    Self.Enabled := not aField.Calculated;
    aField.Bind('AsVariant', Self, 'Value', aField.Calculated);
  except
    on e: exception do
      RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField + ')  AsVariant -> Value', e, Self);
  end;
end;

procedure TJvValidateEdit.CallObservers;
begin

end;

procedure TJvValidateEdit.Change;
begin
  (*
    if FtmpValue <> Value then
    begin
    BindManager.Notify('Text');
    // Value is a Variant (JvValidateEdit can Hold many different types of data (very useful for Database Fields).
    BindManager.Notify('Value');
    FtmpValue := Value;
    end;
  *)
  inherited;
end;

procedure TJvValidateEdit.ClearBindings;
begin
  FBindManager.ClearBindings;
end;

constructor TJvValidateEdit.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited Create(AOwner);
  Initialize;
end;

destructor TJvValidateEdit.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TJvValidateEdit.Detach(const aObserver: TObject);
begin

end;

procedure TJvValidateEdit.DetachObservers;
begin

end;

procedure TJvValidateEdit.DoEnter;
begin
  Color := clSkyBlue;
  inherited;
end;

procedure TJvValidateEdit.DoExit;
begin
  inherited;
  BindManager.Notify('Text');
  BindManager.Notify('Value');
end;

function TJvValidateEdit.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := FBindManager
end;

function TJvValidateEdit.GetJanuaOnEnter: TNotifyEvent;
begin
  Result := Self.OnEnter
end;

function TJvValidateEdit.GetJanuaOnExit: TNotifyEvent;
begin
  Result := Self.OnExit
end;

function TJvValidateEdit.GetJanuaText: string;
begin
  Result := Self.Text
end;

function TJvValidateEdit.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TJvValidateEdit.Initialize;
begin

end;

procedure TJvValidateEdit.SetJanuaOnEnter(const Value: TNotifyEvent);
begin
  OnEnter := Value
end;

procedure TJvValidateEdit.SetJanuaOnExit(const Value: TNotifyEvent);
begin
  OnExit := Value
end;

procedure TJvValidateEdit.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

{ TJvDateEdit }

function TJvDateEdit.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TJvDateEdit.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TJvDateEdit.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;

end;

procedure TJvDateEdit.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
    try
      Self.Date := aField.AsDateTime;
      aField.Bind('AsDateTime', Self, 'Date');
    except
      on e: exception do
        Janua.Application.Framework.RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField +
          ')  AsDateTime -> Date', e, Self);
    end;
end;

procedure TJvDateEdit.CallObservers;
begin

end;

procedure TJvDateEdit.Change;
begin

  BindManager.Notify('Date');
  inherited;
end;

procedure TJvDateEdit.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TJvDateEdit.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;

end;

destructor TJvDateEdit.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TJvDateEdit.Detach(const aObserver: TObject);
begin

end;

procedure TJvDateEdit.DetachObservers;
begin

end;

function TJvDateEdit.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TJvDateEdit.GetJanuaDate: TDate;
begin
  Result := Self.Date
end;

function TJvDateEdit.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TJvDateEdit.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TJvDateEdit.GetJanuaText: string;
begin
  Result := Self.Text
end;

function TJvDateEdit.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TJvDateEdit.Initialize;
begin

end;

procedure TJvDateEdit.SetJanuaDate(const Value: TDate);
begin
  Self.Date := Value
end;

procedure TJvDateEdit.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TJvDateEdit.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

procedure TJvDateEdit.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

{ TSpinEdit }

function TSpinEdit.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TSpinEdit.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TSpinEdit.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;

end;

procedure TSpinEdit.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
    try
      Self.Value := aField.AsInteger;
      aField.Bind('AsInteger', Self, 'Value');
    except
      on e: exception do
        RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField + ')  AsInteger -> Value', e, Self);
    end;
end;

procedure TSpinEdit.CallObservers;
begin

end;

procedure TSpinEdit.Change;
begin
  BindManager.Notify('Value');
  inherited;
end;

procedure TSpinEdit.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TSpinEdit.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TSpinEdit.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  inherited;
end;

procedure TSpinEdit.Detach(const aObserver: TObject);
begin

end;

procedure TSpinEdit.DetachObservers;
begin

end;

function TSpinEdit.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TSpinEdit.GetSelf: TObject;
begin
  Result := Self
end;

procedure TSpinEdit.Initialize;
begin

end;

procedure TSpinEdit.OnChangeEvent(Sender: TObject);
begin
  BindManager.Notify('Value');
end;

{ TLabel }

function TLabel.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TLabel.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TLabel.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TLabel.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
    try
      Self.Caption := aField.AsString;
      aField.Bind('AsString', Self, 'Caption');
    except
      on e: exception do
        RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField + ')  AsString -> Caption',
          e, Self);
    end;
end;

procedure TLabel.CallObservers;
begin

end;

procedure TLabel.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TLabel.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TLabel.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TLabel.Detach(const aObserver: TObject);
begin

end;

procedure TLabel.DetachObservers;
begin

end;

function TLabel.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TLabel.GetJanuaCaption: string;
begin
  Result := Caption
end;

function TLabel.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TLabel.Initialize;
begin

end;

procedure TLabel.SetJanuaCaption(const Value: string);
begin
  Self.Caption := Value
end;

{ TLabeledEdit }

function TLabeledEdit.AsComponent: TComponent;
begin
  Result := Self As TComponent
end;

procedure TLabeledEdit.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TLabeledEdit.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TLabeledEdit.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
    try
      Self.Text := aField.AsString;
      aField.Bind('AsString', Self, 'Text');
    except
      on e: exception do
        RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField + ')  AsString -> Text', e, Self);
    end;
end;

procedure TLabeledEdit.CallObservers;
begin

end;

procedure TLabeledEdit.Change;
begin
  inherited;
  BindManager.Notify('Text');
end;

procedure TLabeledEdit.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TLabeledEdit.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TLabeledEdit.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TLabeledEdit.Detach(const aObserver: TObject);
begin

end;

procedure TLabeledEdit.DetachObservers;
begin

end;

function TLabeledEdit.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TLabeledEdit.GetJanuaCaption: string;
begin
  Result := EditLabel.Caption
end;

function TLabeledEdit.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TLabeledEdit.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TLabeledEdit.GetJanuaText: string;
begin
  Result := Self.Text
end;

function TLabeledEdit.GetSelf: TObject;
begin
  Result := Self
end;

procedure TLabeledEdit.Initialize;
begin

end;

procedure TLabeledEdit.SetJanuaCaption(const Value: string);
begin
  Self.EditLabel.Caption := Value
end;

procedure TLabeledEdit.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TLabeledEdit.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

procedure TLabeledEdit.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

{ TSpeedButton }

function TSpeedButton.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

function TSpeedButton.JGetAction: TBasicAction;
begin
  Result := Action
end;

function TSpeedButton.JGetOnClick: TNotifyEvent;
begin
  Result := OnClick
end;

procedure TSpeedButton.JSetAction(Value: TBasicAction);
begin
  Self.Action := Value
end;

procedure TSpeedButton.JSetOnClick(const Value: TNotifyEvent);
begin
  Self.OnClick := Value;
end;

{ TSButton }

function TButton.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

function TButton.JGetAction: TBasicAction;
begin
  Result := Self.Action
end;

function TButton.JGetOnClick: TNotifyEvent;
begin
  Result := Self.OnClick
end;

procedure TButton.JSetAction(Value: TBasicAction);
begin
  Self.Action := Value
end;

procedure TButton.JSetOnClick(const Value: TNotifyEvent);
begin
  OnClick := Value
end;

{ TDateTimePicker }

function TDateTimePicker.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TDateTimePicker.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TDateTimePicker.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TDateTimePicker.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
    try
      Self.DateTime := aField.AsDateTime;
      Self.Text := DateToStr(aField.AsDateTime);
      aField.Bind('AsDateTime', Self, 'DateTime');
    except
      on e: exception do
        RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField +
          ')  AsDateTime -> DateTime', e, Self);
    end;
end;

procedure TDateTimePicker.CallObservers;
begin
  if Assigned(Self.FObserversList) then
  begin

  end;
end;

procedure TDateTimePicker.Change;
begin

  BindManager.Notify('Date');
  // DateTime
  BindManager.Notify('DateTime');
  // Text
  BindManager.Notify('Text');

  inherited;

  if Self.DateTime = 0.0 then
    Self.Format := ' '
  else
    Self.Format := '';
end;

procedure TDateTimePicker.CheckValidDate(Value: TDate);
begin
  inherited;
  if Value = 0.0 then
    Self.Format := ' '
  else
    Format := '';
end;

procedure TDateTimePicker.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TDateTimePicker.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TDateTimePicker.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TDateTimePicker.Detach(const aObserver: TObject);
begin

end;

procedure TDateTimePicker.DetachObservers;
begin

end;

function TDateTimePicker.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TDateTimePicker.GetJanuaDate: TDate;
begin
  Result := Self.Date
end;

function TDateTimePicker.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TDateTimePicker.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TDateTimePicker.GetJanuaText: string;
begin
  Result := Self.Text
end;

function TDateTimePicker.GetSelf: TObject;
begin
  Result := Self;
end;

procedure TDateTimePicker.Initialize;
begin

end;

procedure TDateTimePicker.SetJanuaDate(const Value: TDate);
begin
  Self.Date := Value
end;

procedure TDateTimePicker.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TDateTimePicker.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

procedure TDateTimePicker.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

{ TCheckBox }

function TCheckBox.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TCheckBox.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TCheckBox.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TCheckBox.CallObservers;
begin

end;

procedure TCheckBox.ClearBindings;
begin
  FBindManager.ClearBindings
end;

procedure TCheckBox.Click;
begin
  inherited;
  BindManager.Notify('Checked');
end;

constructor TCheckBox.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TCheckBox.Destroy;
begin
  CallObservers;
  BindManager.ClearBindings;
  FBindManager := nil;
  DetachObservers;
  inherited;
end;

procedure TCheckBox.Detach(const aObserver: TObject);
begin

end;

procedure TCheckBox.DetachObservers;
begin

end;

function TCheckBox.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TCheckBox.GetSelf: TObject;
begin
  Result := Self
end;

procedure TCheckBox.Initialize;
begin

end;

{ TMemo }

function TMemo.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TMemo.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TMemo.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TMemo.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
    try
      Self.Text := aField.AsString;
      aField.Bind('AsString', Self, 'Text');
    except
      on e: exception do
        RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField + ')  AsString -> Text', e, Self);
    end;
end;

procedure TMemo.CallObservers;
begin

end;

procedure TMemo.Change;
begin
  inherited;
  BindManager.Notify('Text');
  BindManager.Notify('Lines.Text');
end;

procedure TMemo.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TMemo.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TMemo.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TMemo.Detach(const aObserver: TObject);
begin

end;

procedure TMemo.DetachObservers;
begin

end;

function TMemo.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TMemo.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TMemo.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TMemo.GetJanuaText: string;
begin
  Result := Lines.Text
end;

function TMemo.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TMemo.Initialize;
begin

end;

procedure TMemo.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TMemo.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

procedure TMemo.SetJanuaText(const Value: string);
begin
  Self.Lines.Text := Value
end;

{ TComboBox }

function TComboBox.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TComboBox.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TComboBox.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TComboBox.CallObservers;
begin

end;

procedure TComboBox.Change;
begin
  BindManager.Notify('Text');
  BindManager.Notify('ItemIndex');
  inherited;
end;

procedure TComboBox.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TComboBox.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TComboBox.Destroy;
begin
  CallObservers;
  DetachObservers;
  BindManager.ClearBindings;
  FBindManager := nil;
  inherited;
end;

procedure TComboBox.Detach(const aObserver: TObject);
begin

end;

procedure TComboBox.DetachObservers;
begin

end;

function TComboBox.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TComboBox.GetItemsText: string;
begin
  Result := Self.Items.Text;
end;

function TComboBox.GetJanuaItemIndex: Integer;
begin
  Result := Self.ItemIndex;
end;

function TComboBox.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TComboBox.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TComboBox.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TComboBox.Initialize;
begin

end;

procedure TComboBox.SetItemsText(const Value: string);
begin
  Self.Items.Text := Value
end;

procedure TComboBox.SetJanuaItemIndex(const Value: Integer);
begin
  ItemIndex := Value
end;

procedure TComboBox.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TComboBox.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

{ TSpinEdit }

function TJvCalcEdit.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TJvCalcEdit.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TJvCalcEdit.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;

end;

procedure TJvCalcEdit.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
  begin
    try
      Self.Value := aField.AsFloat;
      aField.Bind('AsFloat', Self, 'Value');
    except
      on e: exception do
        Janua.Application.Framework.RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField +
          ')  AsFloat -> Value', e, Self);
    end;
  end;
end;

procedure TJvCalcEdit.CallObservers;
begin

end;

procedure TJvCalcEdit.Change;
begin

  BindManager.Notify('Value');
  BindManager.Notify('Text');

  inherited;
end;

procedure TJvCalcEdit.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TJvCalcEdit.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TJvCalcEdit.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TJvCalcEdit.Detach(const aObserver: TObject);
begin

end;

procedure TJvCalcEdit.DetachObservers;
begin

end;

function TJvCalcEdit.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TJvCalcEdit.GetSelf: TObject;
begin
  Result := Self;
end;

procedure TJvCalcEdit.Initialize;
begin

end;

{ TJvDBLookupCombo }

function TJvDBLookupCombo.AsComponent: TComponent;
begin
  Result := Self
end;

procedure TJvDBLookupCombo.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TJvDBLookupCombo.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TJvDBLookupCombo.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
    try
      Self.KeyValue := aField.AsVariant;
      Self.Enabled := not(aField.Calculated or aField.IsReadOnly);
      aField.Bind('AsVariant', Self, 'KeyValue', aField.Calculated);
      FField := aField;
    except
      on e: exception do
        RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField + ')  AsString -> Text', e, Self);
    end;
end;

procedure TJvDBLookupCombo.CallObservers;
begin

end;

procedure TJvDBLookupCombo.ClearBindings;
begin
  FBindManager.ClearBindings
end;

procedure TJvDBLookupCombo.CloseUp(Accept: boolean);
begin
  inherited;
  FBindManager.Notify('KeyValue');
  FBindManager.Notify('Value');
end;

constructor TJvDBLookupCombo.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited Create(AOwner);
  Initialize;

end;

destructor TJvDBLookupCombo.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TJvDBLookupCombo.Detach(const aObserver: TObject);
begin

end;

procedure TJvDBLookupCombo.DetachObservers;
begin

end;

function TJvDBLookupCombo.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TJvDBLookupCombo.GetHasBindings: boolean;
begin
  Result := FBindCount > 0
end;

function TJvDBLookupCombo.GetSelf: TObject;
begin
  Result := Self
end;

procedure TJvDBLookupCombo.Initialize;
begin
  FBindCount := 0;
end;

procedure TJvDBLookupCombo.KeyValueChanged;
begin
  inherited;
  if (Value <> '') and (Value <> Tmp) then
  begin
    FBindManager.Notify('KeyValue');
    FBindManager.Notify('Value');
    Tmp := Value
  end;
end;

{ TAction }

procedure TAction.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TAction.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TAction.CallObservers;
begin

end;

procedure TAction.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TAction.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TAction.Destroy;
begin
  FBindManager.ClearBindings;
  FBindManager := nil;
  inherited;
end;

procedure TAction.Detach(const aObserver: TObject);
begin
  GetBindManager.ClearBindings;
end;

procedure TAction.DetachObservers;
begin

end;

function TAction.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TAction.GetSelf: TObject;
begin
  Result := Self;
end;

procedure TAction.Initialize;
begin

end;

{ TRadioGroup }

function TRadioGroup.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TRadioGroup.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TRadioGroup.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TRadioGroup.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
    try
      ItemIndex := aField.AsInteger;
      aField.Bind('AsInteger', Self, 'ItemIndex');
    except
      on e: exception do
        RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField +
          ')  AsInteger -> ItemIndex', e, Self);
    end;
end;

procedure TRadioGroup.CallObservers;
begin

end;

procedure TRadioGroup.ClearBindings;
begin
  FBindManager.ClearBindings
end;

procedure TRadioGroup.Click;
begin
  inherited;
  BindManager.Notify('ItemIndex');
end;

constructor TRadioGroup.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;

end;

destructor TRadioGroup.Destroy;
begin
  BindManager.ClearBindings;
  inherited;
end;

procedure TRadioGroup.Detach(const aObserver: TObject);
begin

end;

procedure TRadioGroup.DetachObservers;
begin

end;

procedure TRadioGroup.DoEnter;
begin
  inherited;

end;

procedure TRadioGroup.DoExit;
begin
  inherited;

end;

function TRadioGroup.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TRadioGroup.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TRadioGroup.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TRadioGroup.GetSelf: TObject;
begin
  Result := Self
end;

procedure TRadioGroup.Initialize;
begin

end;

procedure TRadioGroup.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TRadioGroup.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

{ TTabSheet }

procedure TTabSheet.SetFormRecord(const Value: TJanuaFormRecord);
begin
  FFormRecord := Value;
end;

{ TTreeNode }

procedure TTreeNode.SetFormRecord(const Value: TJanuaFormRecord);
begin
  FFormRecord := Value;
end;

procedure TTreeNode.SetFormRecordClick(const Value: TFormRecordFoundEvent);
begin
  FFormRecordClick := Value;
end;

function TTreeNode.ShowForm: IJanuaForm;
begin

end;

{ TPageControl }

function TPageControl.AddShowForm(const aFormRecord: TJanuaFormRecord): IJanuaForm;
var
  lForm: TForm;
  lIForm: IJanuaForm;
  lCmp: TComponent;
  lSheet: TTabSheet;
begin
  if FForms.TryGetValue(aFormRecord.Title, lSheet) then
  begin
    Self.ActivePage := lSheet;
  end
  else
  begin
    lCmp := aFormRecord.FormClass.Create(Self);
    if lCmp is TForm then
      try
        lForm := lCmp as TForm;
        // create a tabsheet within the page control
        lSheet := TTabSheet.Create(Self);
        lSheet.PageControl := Self;
        lForm.BorderStyle := bsNone;
        lForm.Align := alClient;
        lForm.Parent := lSheet;
        lForm.Caption := aFormRecord.Title;
        lForm.Visible := True;
        // activate and set title
        Self.ActivePage := lSheet;
        lSheet.Caption := lForm.Caption;
        lSheet.ImageIndex := aFormRecord.IconIndex;
        if Supports(lCmp, IJanuaForm, lIForm) then
        begin
          lIForm.Params := aFormRecord.Params;
          lIForm.Activate;
        end;

        Assert(Supports(lForm, IJanuaForm, Result), 'Form does not support IJanuaForm Intf');

      finally
        FForms.Add(aFormRecord.Title, lSheet);
      end
  end;
end;

constructor TPageControl.Create(AOwner: TComponent);
begin
  inherited;
  FForms := TCollections.CreateDictionary<string, TTabSheet>;
end;

{ TTreeView }

procedure TTreeView.SetApplication(const Value: TJanuaApplicationRecord);
begin
  FApplication := Value;
end;

procedure TTreeView.SetFormRecordClick(const Value: TFormRecordFoundEvent);
begin
  FFormRecordClick := Value;
end;

initialization

// TStyleManager.Engine.RegisterStyleHook(TEdit, TEditStyleHookColor);
// TStyleManager.Engine.RegisterStyleHook(TButtonedEdit, TEditStyleHookColor);
// TStyleManager.Engine.RegisterStyleHook(TMaskEdit, TEditStyleHookColor);
// TStyleManager.Engine.RegisterStyleHook(TLabeledEdit, TEditStyleHookColor);
// TStyleManager.Engine.RegisterStyleHook(TMemo, TMemoStyleHookColor);
// TStyleManager.Engine.RegisterStyleHook(TDBMemo, TMemoStyleHookColor);

end.

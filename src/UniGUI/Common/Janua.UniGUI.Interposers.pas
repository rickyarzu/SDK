unit Janua.UniGUI.Interposers;

interface

uses
  System.Classes, System.UITypes, System.SysUtils, Spring.Collections,
  {Data.Db,} {Spring.Collections,} {WinApi.Messages, WinApi.CommCtrl,}
  // UniGUI RelateduniGUIBaseClasses,
  uniGUIClasses, uniEdit, Data.Bind.Components, uniCheckBox, uniBitBtn, uniDateTimePicker, UniComboBox,
  uniDBLookupComboBox, uniMemo, UniFSToggle, uniGUITypes, uniRadioGroup, UniFSCombobox,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Orm.Intf,
  Janua.Controls.Forms.Impl, Janua.Controls.Forms.Intf;

type

  [ObservableMember('Text')] { identifies the control value name for TUniObservableEdit }
  [ObservableMember('PasswordChar')]
  // PasswordChar
  TUniEdit = class(uniEdit.TUniEdit, IJanuaBindableControl, IJanuaBindableEditControl, IJanuaBindable)
  private
    procedure ObserverToggle(const AObserver: IObserver; const Value: Boolean);
    procedure DoSetRemoteValue(AIndex: Integer; Value: String); override;
  protected
    function CanObserve(const ID: Integer): Boolean; override; { declaration is in System.Classes }
    procedure ObserverAdded(const ID: Integer; const Observer: IObserver); override;
    { declaration is in System.Classes }
  public
    procedure ClearBindings;
    procedure BindToField(const aField: IJanuaField);
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    // ------- Observer
    { TODO:  private  FObserversList: IDictionary<IJanuaBindable, TProc>; }
  protected
    procedure CallObservers;
    procedure DetachObservers;
    { public
      procedure AttachObserver(const AObserver: TObject; aProc: TProc);
      procedure Detach(const AObserver: TObject); }
    // ----- Initialization
  protected
    { TODO: procedure Change; override; }
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
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  end;

  [ObservableMember('Checked')] { identifies the control value name for TUniObservableEdit }

  TUniCheckBox = class(uniCheckBox.TUniCheckBox, IJanuaBindableControl)
  private
    procedure ObserverToggle(const AObserver: IObserver; const Value: Boolean);
    procedure DoSetRemoteValue(AIndex: Integer; Value: String); override;
  protected
    function CanObserve(const ID: Integer): Boolean; override; { declaration is in System.Classes }
    procedure ObserverAdded(const ID: Integer; const Observer: IObserver); override;
    { declaration is in System.Classes }
    // ------- Observer
    { private
      FObserversList: IDictionary<IJanuaBindable, TProc>; }
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const AObserver: TObject; aProc: TProc);
    procedure Detach(const AObserver: TObject);
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
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    procedure JanuaOnClick(Sender: TObject);
  public
    function AsComponent: TComponent;
  end;

  [ObservableMember('Toggle')]
  TUniFSToggle = class(UniFSToggle.TUniFSToggle, IJanuaBindableControl)
  private
    procedure ObserverToggle(const AObserver: IObserver; const Value: Boolean);
  protected
    procedure JSEventHandler(AEventName: string; AParams: TUniStrings); override;
    function CanObserve(const ID: Integer): Boolean; override; { declaration is in System.Classes }
    procedure ObserverAdded(const ID: Integer; const Observer: IObserver); override;
    { declaration is in System.Classes }
    // ------- Observer
    { private
      FObserversList: IDictionary<IJanuaBindable, TProc>; }
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const AObserver: TObject; aProc: TProc);
    procedure Detach(const AObserver: TObject);
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
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;

    // ************************************* Bindings Procedures ***********************************
  public
    function AsComponent: TComponent;
  end;

  TUniBitBtn = class(uniBitBtn.TUniBitBtn, IJanuaActionable)
  private
    function JGetAction: TBasicAction;
    procedure JSetAction(Value: TBasicAction);
    function JGetOnClick: TNotifyEvent;
    procedure JSetOnClick(const Value: TNotifyEvent);
  public
    function AsComponent: TComponent;
  end;

  [ObservableMember('DateTime')] { identifies the control value name for TUniObservableEdit }

  TUniDateTimePicker = class(uniDateTimePicker.TUniDateTimePicker, IJanuaBindableDateControl,
    IJanuaBindableControl, IJanuaBindable)
  private
    procedure ObserverToggle(const AObserver: IObserver; const Value: Boolean);
  protected
    function CanObserve(const ID: Integer): Boolean; override; { declaration is in System.Classes }
    procedure ObserverAdded(const ID: Integer; const Observer: IObserver); override;
    // ------- Observer
    { private
      FObserversList: IDictionary<IJanuaBindable, TProc>; }
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const AObserver: TObject; aProc: TProc);
    procedure Detach(const AObserver: TObject);
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
    // procedure CheckValidDate(Value: TDate); override;
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
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
    procedure NotifyOnChange(Sender: TObject); // override;
    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
  public
    function AsComponent: TComponent;
  end;

  [ObservableMember('Text')]
  [ObservableMember('ItemText')]
  TUniComboBox = class(UniComboBox.TUniComboBox, IJanuaRecordsetBindableComboControl,
    IJanuaBindableComboControl, IJanuaBindableControl, IJanuaBindable)
    // ------- Observer
  private
    procedure ObserverToggle(const AObserver: IObserver; const Value: Boolean);
  protected
    function CanObserve(const ID: Integer): Boolean; override; { declaration is in System.Classes }
    procedure ObserverAdded(const ID: Integer; const Observer: IObserver); override;
    // private
    // FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const AObserver: TObject; aProc: TProc);
    procedure Detach(const AObserver: TObject);
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
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    procedure BindToRecordSet(const aRecordSet: IJanuaRecordSet; const aField: IJanuaField;
      const aFields: TArray<IJanuaField>); overload;
    procedure BindToRecordSet(const aRecordSet: IJanuaRecordSet; const aField: IJanuaField;
      const aFieldNames: TArray<string>); overload;
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    function GetItemsText: string;
    function GetJanuaItemIndex: Integer;
    procedure SetItemsText(const Value: string);
    procedure SetJanuaItemIndex(const Value: Integer);
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    procedure NotifyOnChange(Sender: TObject); // override;

    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
  public
    function AsComponent: TComponent;
    property ItemsText: string read GetItemsText write SetItemsText;
    property JanuaItemIndex: Integer read GetJanuaItemIndex write SetJanuaItemIndex;
    property Text: string read GetJanuaText write SetJanuaText;

  end;

  [ObservableMember('Text')]
  [ObservableMember('ItemText')]
  TUniFSCombobox = class(UniFSCombobox.TUniFSCombobox, IJanuaBindableComboControl, IJanuaBindableControl,
    IJanuaBindable)
    // ------- Observer
  private
    procedure ObserverToggle(const AObserver: IObserver; const Value: Boolean);
  protected
    function CanObserve(const ID: Integer): Boolean; override; { declaration is in System.Classes }
    procedure ObserverAdded(const ID: Integer; const Observer: IObserver); override;
    // private
    // FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const AObserver: TObject; aProc: TProc);
    procedure Detach(const AObserver: TObject);
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
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    procedure BindToRecordSet(const aRecordSet: IJanuaRecordSet; const aField: IJanuaField;
      const aFields: TArray<IJanuaField>); overload;
    procedure BindToRecordSet(const aRecordSet: IJanuaRecordSet; const aField: IJanuaField;
      const aFieldNames: TArray<string>); overload;

    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    function GetItemsText: string;
    function GetJanuaItemIndex: Integer;
    procedure SetItemsText(const Value: string);
    procedure SetJanuaItemIndex(const Value: Integer);
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    procedure NotifyOnChange(Sender: TObject); // override;

    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
  public
    function AsComponent: TComponent;
    property ItemsText: string read GetItemsText write SetItemsText;
    property JanuaItemIndex: Integer read GetJanuaItemIndex write SetJanuaItemIndex;
    property Text: string read GetJanuaText write SetJanuaText;

  end;

  [ObservableMember('Text')]
  TUniMemo = class(uniMemo.TUniMemo, IJanuaBindableEditControl, IJanuaBindableControl)
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  private
    procedure ObserverToggle(const AObserver: IObserver; const Value: Boolean);
  protected
    function CanObserve(const ID: Integer): Boolean; override; { declaration is in System.Classes }
    procedure ObserverAdded(const ID: Integer; const Observer: IObserver); override;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const AObserver: TObject; aProc: TProc);
    procedure Detach(const AObserver: TObject);
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
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);

    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    procedure NotifyOnChange(Sender: TObject); // override;

    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
  public
    function AsComponent: TComponent;
    procedure BindToField(const aField: IJanuaField);
    property Text: string read GetJanuaText write SetJanuaText;
  end;

  TUniRadioGroup = class(uniRadioGroup.TUniRadioGroup, IJanuaBindableControl, IJanuaBindable)
  public
    procedure ClearBindings;
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure JSEventHandler(AEventName: string; AParams: TUniStrings); override;
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const AObserver: TObject; aProc: TProc);
    procedure Detach(const AObserver: TObject);
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
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  end;

  {
    TuniDBLookupComboBox = class(uniDBLookupComboBox.TuniDBLookupComboBox, IJanuaBindableControl)
    // ------- Observer
    // private
    // FObserversList: IDictionary<IJanuaBindable, TProc>;
    protected
    procedure CallObservers;
    procedure DetachObservers;
    public
    procedure AttachObserver(const AObserver: TObject; aProc: TProc);
    procedure Detach(const AObserver: TObject);
    // ----- Initialization
    private
    FBindCount: Integer;
    Tmp: string;
    strict protected
    function GetHasBindings: Boolean;
    public
    function AsComponent: TComponent;
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
    const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput, jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
    protected
    procedure KeyValueChanged; override;
    public
    procedure CloseUp(Accept: Boolean); override;
    end;
  }
implementation

uses
  Janua.Core.Commons, Janua.Application.Framework;

{ TUniEdit }

function TUniEdit.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TUniEdit.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TUniEdit.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
  begin
    Text := aField.AsString;
    aField.Bind('AsString', Self, 'Text', false);
  end;
end;

procedure TUniEdit.CallObservers;
begin

end;

{ procedure TUniEdit.Change;
  begin
  BindManager.Notify('Text');
  inherited;
  end;
}

procedure TUniEdit.ClearBindings;
begin
  FBindManager.ClearBindings;
end;

constructor TUniEdit.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaApplicationFactory.CreateBindManager(Self);
  inherited Create(AOwner);
  Initialize;
end;

destructor TUniEdit.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TUniEdit.DetachObservers;
begin

end;

procedure TUniEdit.DoEnter;
begin
  { TODO: Color := clSkyBlue; }
  inherited;
end;

procedure TUniEdit.DoExit;
begin
  FBindManager.Notify('Text');
  inherited;

end;

function TUniEdit.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := FBindManager
end;

function TUniEdit.GetJanuaOnEnter: TNotifyEvent;
begin
  Result := OnEnter
end;

function TUniEdit.GetJanuaOnExit: TNotifyEvent;
begin
  Result := OnExit
end;

function TUniEdit.GetJanuaText: string;
begin
  Result := Text
end;

function TUniEdit.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TUniEdit.Initialize;
begin

end;

procedure TUniEdit.SetJanuaOnEnter(const Value: TNotifyEvent);
begin
  OnEnter := Value
end;

procedure TUniEdit.SetJanuaOnExit(const Value: TNotifyEvent);
begin
  OnExit := Value
end;

procedure TUniEdit.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

function TUniEdit.CanObserve(const ID: Integer): Boolean;
{ Controls which implement observers always override TComponent.CanObserve(const ID: Integer). }
{ This method identifies the type of observers supported by TUniEdit. }
begin
  case ID of
    TObserverMapping.EditLinkID, { EditLinkID is the observer that is used for control-to-field links }
    TObserverMapping.ControlValueID:
      Result := True;
  else
    Result := false;
  end;
end;

{ The override for DoSetRemoteValue is where TUniEdit calls the
  observable interfaces to notify LiveBindings components when the user types something.
  This override is sufficient to monitor user input to TUniEdit.
  TLinkObservers.ControlChanged is a utility method that does most of the work. You can
  find the implementation in System.Classes. }

procedure TUniEdit.DoSetRemoteValue(AIndex: Integer; Value: String);
begin
  inherited;
  TLinkObservers.ControlChanged(Self);
  FBindManager.Notify('Text');
end;

procedure TUniEdit.ObserverAdded(const ID: Integer; const Observer: IObserver);
begin
  inherited;
  if ID = TObserverMapping.EditLinkID then
    Observer.OnObserverToggle := ObserverToggle;
end;

procedure TUniEdit.ObserverToggle(const AObserver: IObserver; const Value: Boolean);
var
  LEditLinkObserver: IEditLinkObserver;
begin
  if Value then
  begin
    if Supports(AObserver, IEditLinkObserver, LEditLinkObserver) then
      { disable the uniEdit if the associated field does not support editing }
      Enabled := not LEditLinkObserver.IsReadOnly;
  end
  else
    Enabled := True;
end;

{ TUniCheckBox }

function TUniCheckBox.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TUniCheckBox.AttachObserver(const AObserver: TObject; aProc: TProc);
begin

end;

procedure TUniCheckBox.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TUniCheckBox.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
  begin
    Checked := aField.AsBoolean;
    aField.Bind('AsBoolean', Self, 'Checked', false);
  end;
end;

procedure TUniCheckBox.CallObservers;
begin

end;

procedure TUniCheckBox.ClearBindings;
begin
  FBindManager.ClearBindings;
end;

constructor TUniCheckBox.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaApplicationFactory.CreateBindManager(Self);
  inherited Create(AOwner);
  Initialize;
  OnClick := JanuaOnClick;
end;

destructor TUniCheckBox.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TUniCheckBox.Detach(const AObserver: TObject);
begin

end;

procedure TUniCheckBox.DetachObservers;
begin

end;

function TUniCheckBox.GetBindManager: IJanuaBindManager;
begin
  Result := Self.FBindManager
end;

function TUniCheckBox.GetSelf: TObject;
begin
  Result := Self
end;

procedure TUniCheckBox.Initialize;
begin

end;

procedure TUniCheckBox.JanuaOnClick(Sender: TObject);
begin
  BindManager.Notify('Checked');
end;

function TUniCheckBox.CanObserve(const ID: Integer): Boolean;
begin
  case ID of
    TObserverMapping.EditLinkID, { EditLinkID is the observer that is used for control-to-field links }
    TObserverMapping.ControlValueID:
      Result := True;
  else
    Result := false;
  end;
end;

procedure TUniCheckBox.DoSetRemoteValue(AIndex: Integer; Value: String);
begin
  inherited;
  TLinkObservers.ControlChanged(Self);
end;

procedure TUniCheckBox.ObserverAdded(const ID: Integer; const Observer: IObserver);
begin
  inherited;
  if ID = TObserverMapping.EditLinkID then
    Observer.OnObserverToggle := ObserverToggle;
end;

procedure TUniCheckBox.ObserverToggle(const AObserver: IObserver; const Value: Boolean);
var
  LEditLinkObserver: IEditLinkObserver;
begin
  if Value then
  begin
    if Supports(AObserver, IEditLinkObserver, LEditLinkObserver) then
      { disable the uniEdit if the associated field does not support editing }
      Enabled := not LEditLinkObserver.IsReadOnly;
  end
  else
    Enabled := True;
end;

{ TUniBitBtn }

function TUniBitBtn.AsComponent: TComponent;
begin
  Result := Self as TComponent

end;

function TUniBitBtn.JGetAction: TBasicAction;
begin
  Result := Action
end;

function TUniBitBtn.JGetOnClick: TNotifyEvent;
begin

end;

procedure TUniBitBtn.JSetAction(Value: TBasicAction);
begin

end;

procedure TUniBitBtn.JSetOnClick(const Value: TNotifyEvent);
begin

end;

{ TUniDateTimePicker }

function TUniDateTimePicker.AsComponent: TComponent;
begin
  Result := Self as TComponent

end;

procedure TUniDateTimePicker.AttachObserver(const AObserver: TObject; aProc: TProc);
begin

end;

procedure TUniDateTimePicker.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TUniDateTimePicker.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
  begin
    Self.DateTime := aField.AsDateTime;
    aField.Bind('AsDateTime', Self, 'DateTime', false);
  end;
end;

procedure TUniDateTimePicker.CallObservers;
begin
  { if Assigned(FObserversList) then
    begin

    end; }
end;

function TUniDateTimePicker.CanObserve(const ID: Integer): Boolean;
begin
  case ID of
    TObserverMapping.EditLinkID, { EditLinkID is the observer that is used for control-to-field links }
    TObserverMapping.ControlValueID:
      Result := True;
  else
    Result := false;
  end;

end;

procedure TUniDateTimePicker.NotifyOnChange(Sender: TObject);
begin

  BindManager.Notify('Date');
  // DateTime
  BindManager.Notify('DateTime');
  // Text
  BindManager.Notify('Text');

  inherited;

  if Self.DateTime = 0.0 then
    Self.DateFormat := ' '
  else
    Self.DateFormat := '';
end;

// procedure TUniDateTimePicker.CheckValidDate(Value: TDate);
// begin
// inherited;
// if Value = 0.0 then
// Self.DateFormat := ' '
// else
// DateFormat := '';
// end;

procedure TUniDateTimePicker.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TUniDateTimePicker.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaApplicationFactory.CreateBindManager(Self);
  OnChange := NotifyOnChange;
  inherited;
end;

destructor TUniDateTimePicker.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TUniDateTimePicker.Detach(const AObserver: TObject);
begin

end;

procedure TUniDateTimePicker.DetachObservers;
begin

end;

function TUniDateTimePicker.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TUniDateTimePicker.GetJanuaDate: TDate;
begin
  Result := Self.DateTime
end;

function TUniDateTimePicker.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TUniDateTimePicker.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TUniDateTimePicker.GetJanuaText: string;
begin
  Result := Self.Text
end;

function TUniDateTimePicker.GetSelf: TObject;
begin
  Result := Self;
end;

procedure TUniDateTimePicker.Initialize;
begin

end;

procedure TUniDateTimePicker.ObserverAdded(const ID: Integer; const Observer: IObserver);
begin
  inherited;
  if ID = TObserverMapping.EditLinkID then
    Observer.OnObserverToggle := ObserverToggle;

end;

procedure TUniDateTimePicker.ObserverToggle(const AObserver: IObserver; const Value: Boolean);
var
  LEditLinkObserver: IEditLinkObserver;
begin
  if Value then
  begin
    if Supports(AObserver, IEditLinkObserver, LEditLinkObserver) then
      { disable the uniEdit if the associated field does not support editing }
      Enabled := not LEditLinkObserver.IsReadOnly;
  end
  else
    Enabled := True;

end;

procedure TUniDateTimePicker.SetJanuaDate(const Value: TDate);
begin
  Self.DateTime := Value
end;

procedure TUniDateTimePicker.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TUniDateTimePicker.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

procedure TUniDateTimePicker.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

{ TUniComboBox }

procedure TUniComboBox.ObserverAdded(const ID: Integer; const Observer: IObserver);
begin
  inherited;
end;

procedure TUniComboBox.ObserverToggle(const AObserver: IObserver; const Value: Boolean);
var
  LEditLinkObserver: IEditLinkObserver;
begin
  if Value then
  begin
    if Supports(AObserver, IEditLinkObserver, LEditLinkObserver) then
      { disable the uniEdit if the associated field does not support editing }
      Enabled := not LEditLinkObserver.IsReadOnly;
  end
  else
    Enabled := True;

end;

function TUniComboBox.CanObserve(const ID: Integer): Boolean;
begin
  case ID of
    TObserverMapping.EditLinkID, { EditLinkID is the observer that is used for control-to-field links }
    TObserverMapping.ControlValueID:
      Result := True;
  else
    Result := false;
  end;
end;

function TUniComboBox.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TUniComboBox.AttachObserver(const AObserver: TObject; aProc: TProc);
begin

end;

procedure TUniComboBox.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TUniComboBox.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
  begin
    ItemIndex := aField.AsInteger;
    aField.Bind('AsInteger', Self, 'ItemIndex');
  end;
end;

procedure TUniComboBox.BindToRecordSet(const aRecordSet: IJanuaRecordSet; const aField: IJanuaField;
  const aFieldNames: TArray<string>);
begin
  // {$IFNDEF  WIN64}
  aRecordSet.ListFieldNames := aFieldNames;
  aRecordSet.First;
  Items.Assign(aRecordSet.AsStringList);
  ItemIndex := 0;
  BindToField(aField);
  // {$ENDIF}
end;

procedure TUniComboBox.BindToRecordSet(const aRecordSet: IJanuaRecordSet; const aField: IJanuaField;
  const aFields: TArray<IJanuaField>);
begin
  // {$IFNDEF  WIN64}
  aRecordSet.ListFields := aFields;
  aRecordSet.First;
  Items.Assign(aRecordSet.AsStringList);
  ItemIndex := 0;
  BindToField(aField);
  // {$ENDIF}
end;

procedure TUniComboBox.CallObservers;
begin

end;

procedure TUniComboBox.NotifyOnChange;
begin
  BindManager.Notify('Text');
  BindManager.Notify('ItemIndex');
  inherited;
end;

procedure TUniComboBox.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TUniComboBox.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaApplicationFactory.CreateBindManager(Self);
  inherited;
end;

destructor TUniComboBox.Destroy;
begin
  CallObservers;
  DetachObservers;
  BindManager.ClearBindings;
  FBindManager := nil;
  inherited;
end;

procedure TUniComboBox.Detach(const AObserver: TObject);
begin

end;

procedure TUniComboBox.DetachObservers;
begin

end;

function TUniComboBox.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TUniComboBox.GetItemsText: string;
begin
  Result := Self.Items.Text;
end;

function TUniComboBox.GetJanuaItemIndex: Integer;
begin
  Result := Self.ItemIndex;
end;

function TUniComboBox.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TUniComboBox.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TUniComboBox.GetJanuaText: string;
begin
  Result := Self.Text
end;

function TUniComboBox.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TUniComboBox.Initialize;
begin

end;

procedure TUniComboBox.SetItemsText(const Value: string);
begin
  Self.Items.Text := Value
end;

procedure TUniComboBox.SetJanuaItemIndex(const Value: Integer);
begin
  ItemIndex := Value
end;

procedure TUniComboBox.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TUniComboBox.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

procedure TUniComboBox.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

{ TUniMemo }

procedure TUniMemo.ObserverAdded(const ID: Integer; const Observer: IObserver);
begin
  inherited;
  if ID = TObserverMapping.EditLinkID then
    Observer.OnObserverToggle := ObserverToggle;

end;

procedure TUniMemo.ObserverToggle(const AObserver: IObserver; const Value: Boolean);
var
  LEditLinkObserver: IEditLinkObserver;
begin
  if Value then
  begin
    if Supports(AObserver, IEditLinkObserver, LEditLinkObserver) then
      { disable the uniEdit if the associated field does not support editing }
      Enabled := not LEditLinkObserver.IsReadOnly;
  end
  else
    Enabled := True;

end;

function TUniMemo.CanObserve(const ID: Integer): Boolean;
begin
  case ID of
    TObserverMapping.EditLinkID, { EditLinkID is the observer that is used for control-to-field links }
    TObserverMapping.ControlValueID:
      Result := True;
  else
    Result := false;
  end;
end;

function TUniMemo.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TUniMemo.AttachObserver(const AObserver: TObject; aProc: TProc);
begin

end;

procedure TUniMemo.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TUniMemo.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
  begin
    Text := aField.AsString;
    aField.Bind('AsString', Self, 'Text', false);
  end;
end;

procedure TUniMemo.CallObservers;
begin

end;

procedure TUniMemo.NotifyOnChange;
begin
  inherited;
  BindManager.Notify('Text');
  BindManager.Notify('Lines.Text');
end;

procedure TUniMemo.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TUniMemo.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaApplicationFactory.CreateBindManager(Self);
  inherited;
end;

destructor TUniMemo.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TUniMemo.Detach(const AObserver: TObject);
begin

end;

procedure TUniMemo.DetachObservers;
begin

end;

function TUniMemo.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TUniMemo.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TUniMemo.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TUniMemo.GetJanuaText: string;
begin
  Result := Lines.Text
end;

function TUniMemo.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TUniMemo.Initialize;
begin

end;

procedure TUniMemo.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TUniMemo.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

procedure TUniMemo.SetJanuaText(const Value: string);
begin
  Self.Lines.Text := Value
end;

{ TUniFSToggle }

function TUniFSToggle.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TUniFSToggle.AttachObserver(const AObserver: TObject; aProc: TProc);
begin

end;

procedure TUniFSToggle.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TUniFSToggle.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
  begin
    try
      Toggled := aField.AsBoolean;
      aField.Bind('AsBoolean', Self, 'Toggled');
    except
      on e: exception do
        Janua.Application.Framework.RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField +
          ')  AsBoolean -> Toggled', e, Self);
    end;
  end;
end;

procedure TUniFSToggle.CallObservers;
begin

end;

function TUniFSToggle.CanObserve(const ID: Integer): Boolean;
begin
  case ID of
    TObserverMapping.EditLinkID, { EditLinkID is the observer that is used for control-to-field links }
    TObserverMapping.ControlValueID:
      Result := True;
  else
    Result := false;
  end;
end;

procedure TUniFSToggle.ClearBindings;
begin
  FBindManager.ClearBindings;
end;

constructor TUniFSToggle.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaApplicationFactory.CreateBindManager(Self);
  inherited;

end;

destructor TUniFSToggle.Destroy;
begin
  CallObservers;
  DetachObservers;
  if Assigned(FBindManager) then
  begin
    FBindManager.ClearBindings;
    FBindManager := nil;
  end;
  inherited;
end;

procedure TUniFSToggle.Detach(const AObserver: TObject);
begin

end;

procedure TUniFSToggle.DetachObservers;
begin

end;

function TUniFSToggle.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := FBindManager
end;

function TUniFSToggle.GetSelf: TObject;
begin
  Result := Self
end;

procedure TUniFSToggle.Initialize;
begin

end;

procedure TUniFSToggle.JSEventHandler(AEventName: string; AParams: TUniStrings);
var
  lSelected: Boolean;
begin
  lSelected := Toggled;
  inherited;
  if lSelected <> Toggled then
  begin
    BindManager.Notify('Toggled');
  end;
end;

procedure TUniFSToggle.ObserverAdded(const ID: Integer; const Observer: IObserver);
begin
  inherited;
  if ID = TObserverMapping.EditLinkID then
    Observer.OnObserverToggle := ObserverToggle;

end;

procedure TUniFSToggle.ObserverToggle(const AObserver: IObserver; const Value: Boolean);
var
  LEditLinkObserver: IEditLinkObserver;
begin
  if Value then
  begin
    if Supports(AObserver, IEditLinkObserver, LEditLinkObserver) then
      { disable the uniEdit if the associated field does not support editing }
      Enabled := not LEditLinkObserver.IsReadOnly;
  end
  else
    Enabled := True;
end;

{ TUniRadioGroup }

function TUniRadioGroup.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TUniRadioGroup.AttachObserver(const AObserver: TObject; aProc: TProc);
begin

end;

procedure TUniRadioGroup.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TUniRadioGroup.BindToField(const aField: IJanuaField);
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

procedure TUniRadioGroup.CallObservers;
begin

end;

procedure TUniRadioGroup.ClearBindings;
begin
  FBindManager.ClearBindings
end;

procedure TUniRadioGroup.Click;
begin
  inherited;
  BindManager.Notify('ItemIndex');
end;

constructor TUniRadioGroup.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaApplicationFactory.CreateBindManager(Self);
  inherited;
end;

destructor TUniRadioGroup.Destroy;
begin
  BindManager.ClearBindings;
  inherited;
end;

procedure TUniRadioGroup.Detach(const AObserver: TObject);
begin

end;

procedure TUniRadioGroup.DetachObservers;
begin

end;

procedure TUniRadioGroup.DoEnter;
begin
  inherited;

end;

procedure TUniRadioGroup.DoExit;
begin
  inherited;

end;

function TUniRadioGroup.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TUniRadioGroup.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TUniRadioGroup.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TUniRadioGroup.GetSelf: TObject;
begin
  Result := Self
end;

procedure TUniRadioGroup.Initialize;
begin

end;

procedure TUniRadioGroup.JSEventHandler(AEventName: string; AParams: TUniStrings);
var
  lSelected: Integer;
begin
  lSelected := ItemIndex;
  inherited;
  if lSelected <> ItemIndex then
    BindManager.Notify('ItemIndex');
end;

procedure TUniRadioGroup.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TUniRadioGroup.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

{ TUniSFComboBox }

procedure TUniFSCombobox.ObserverAdded(const ID: Integer; const Observer: IObserver);
begin
  inherited;
end;

procedure TUniFSCombobox.ObserverToggle(const AObserver: IObserver; const Value: Boolean);
var
  LEditLinkObserver: IEditLinkObserver;
begin
  if Value then
  begin
    if Supports(AObserver, IEditLinkObserver, LEditLinkObserver) then
      { disable the uniEdit if the associated field does not support editing }
      Enabled := not LEditLinkObserver.IsReadOnly;
  end
  else
    Enabled := True;

end;

function TUniFSCombobox.CanObserve(const ID: Integer): Boolean;
begin
  case ID of
    TObserverMapping.EditLinkID, { EditLinkID is the observer that is used for control-to-field links }
    TObserverMapping.ControlValueID:
      Result := True;
  else
    Result := false;
  end;
end;

function TUniFSCombobox.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TUniFSCombobox.AttachObserver(const AObserver: TObject; aProc: TProc);
begin

end;

procedure TUniFSCombobox.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TUniFSCombobox.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
  begin
    ItemIndex := aField.AsInteger;
    aField.Bind('AsInteger', Self, 'ItemIndex');
  end;
end;

procedure TUniFSCombobox.BindToRecordSet(const aRecordSet: IJanuaRecordSet; const aField: IJanuaField;
  const aFieldNames: TArray<string>);
begin
  // {$IFNDEF  WIN64}
  aRecordSet.ListFieldNames := aFieldNames;
  aRecordSet.First;
  Items.Assign(aRecordSet.AsStringList);
  ItemIndex := 0;
  BindToField(aField);
  // {$ENDIF}
end;

procedure TUniFSCombobox.BindToRecordSet(const aRecordSet: IJanuaRecordSet; const aField: IJanuaField;
  const aFields: TArray<IJanuaField>);
begin
  // {$IFNDEF  WIN64}
  aRecordSet.ListFields := aFields;
  aRecordSet.First;
  Items.Assign(aRecordSet.AsStringList);
  ItemIndex := 0;
  BindToField(aField);
  // {$ENDIF}
end;

procedure TUniFSCombobox.CallObservers;
begin

end;

procedure TUniFSCombobox.NotifyOnChange;
begin
  BindManager.Notify('Text');
  BindManager.Notify('ItemIndex');
  inherited;
end;

procedure TUniFSCombobox.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TUniFSCombobox.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaApplicationFactory.CreateBindManager(Self);
  inherited;
end;

destructor TUniFSCombobox.Destroy;
begin
  CallObservers;
  DetachObservers;
  BindManager.ClearBindings;
  FBindManager := nil;
  inherited;
end;

procedure TUniFSCombobox.Detach(const AObserver: TObject);
begin

end;

procedure TUniFSCombobox.DetachObservers;
begin

end;

function TUniFSCombobox.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TUniFSCombobox.GetItemsText: string;
begin
  Result := Self.Items.Text;
end;

function TUniFSCombobox.GetJanuaItemIndex: Integer;
begin
  Result := Self.ItemIndex;
end;

function TUniFSCombobox.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TUniFSCombobox.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TUniFSCombobox.GetJanuaText: string;
begin
  Result := Self.Text
end;

function TUniFSCombobox.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TUniFSCombobox.Initialize;
begin

end;

procedure TUniFSCombobox.SetItemsText(const Value: string);
begin
  Self.Items.Text := Value
end;

procedure TUniFSCombobox.SetJanuaItemIndex(const Value: Integer);
begin
  ItemIndex := Value
end;

procedure TUniFSCombobox.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TUniFSCombobox.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

procedure TUniFSCombobox.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

end.

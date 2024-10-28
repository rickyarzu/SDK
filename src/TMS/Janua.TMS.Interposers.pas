unit Janua.TMS.Interposers;

interface

uses
  System.Classes, System.UITypes, Spring.Collections, System.SysUtils,
  // VCL
  VCL.Buttons, VCL.StdCtrls, VCL.ExtCtrls, VCL.Controls, JvToolEdit, VCL.Samples.Spin, JvBaseEdits,
  // TMS
  Lucombo, MoneyEdit, AdvMoneyEdit, AdvMemo, AdvmWS, AdvRichEditorBase, AdvRichEditor,
  // Janua
  Janua.Orm.Intf, Janua.Core.Types, Janua.VCL.Bindings.Intf, Janua.Bindings.Intf,
  Janua.Core.Classes.Intf;

type
  TAdvRichEditor = class(AdvRichEditor.TAdvRichEditor, IJanuaBindableControl)
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
  public
    function AsComponent: TComponent;
  end;

  TLUEdit = class(Lucombo.TLUEdit, IJanuaBindableControl, IJanuaBindableEditControl, IJanuaBindable)
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
  end;

  // IJanuaBindableFloatControl
type
  TAdvMoneyEdit = class(AdvMoneyEdit.TAdvMoneyEdit, IJanuaBindableControl, IJanuaBindableEditControl)
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
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    function GetJanuaDouble: Double;
    procedure SetJanuaDouble(const aValue: Double);
    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
    // property OnExit: TNotifyEvent read GetJanuaOnExit write SetJanuaOnExit;
  protected
    property Double: Double read GetJanuaDouble write SetJanuaDouble;
  public
    function AsComponent: TComponent;
  end;

  // IJanuaBindableFloatControl
type
  TMoneyEdit = class(MoneyEdit.TMoneyEdit, IJanuaBindableControl, IJanuaBindableEditControl)
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
    // ------------ IJanuaBindable Object Interface implementation ---------------------------------------------
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    FField: IJanuaField;
    function GetBindManager: IJanuaBindManager;
  protected
    procedure Initialize; virtual;
    function GetSelf: TObject;
  public
    procedure ClearBindings;
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure BindToField(const aField: IJanuaField);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    procedure Change; override;
    function GetJanuaText: string;
    procedure SetJanuaText(const Value: string);
    function GetJanuaDouble: Double;
    procedure SetJanuaDouble(const aValue: Double);
    function GetJanuaOnEnter: TNotifyEvent;
    procedure SetJanuaOnEnter(const Value: TNotifyEvent);
    // property OnEnter: TNotifyEvent read GetJanuaOnEnter write SetJanuaOnEnter;

    function GetJanuaOnExit: TNotifyEvent;
    procedure SetJanuaOnExit(const Value: TNotifyEvent);
    // property OnExit: TNotifyEvent read GetJanuaOnExit write SetJanuaOnExit;
  protected
    property Double: Double read GetJanuaDouble write SetJanuaDouble;
  public
    function AsComponent: TComponent;
  end;

  TAdvMemo = class(AdvMemo.TAdvMemo, IJanuaBindableEditControl, IJanuaBindableControl)
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
  private
    FJanuaOnEnter: TNotifyEvent;
    FJanuaOnExit: TNotifyEvent;
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

implementation

uses Janua.Application.Framework, Janua.Core.Commons, System.StrUtils;

{ TLUEdit }

function TLUEdit.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TLUEdit.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TLUEdit.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      RaiseException('Bind', e, Self);
  end;
end;

procedure TLUEdit.BindToField(const aField: IJanuaField);
begin
  Self.Text := aField.AsString;
  aField.Bind('AsString', Self, 'Text');
end;

procedure TLUEdit.CallObservers;
begin

end;

procedure TLUEdit.Change;
begin
  BindManager.Notify('Text');
  inherited;
end;

procedure TLUEdit.ClearBindings;
begin
  BindManager.ClearBindings;
end;

constructor TLUEdit.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TLUEdit.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  inherited;
end;

procedure TLUEdit.Detach(const aObserver: TObject);
begin

end;

procedure TLUEdit.DetachObservers;
begin

end;

function TLUEdit.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuaBindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TLUEdit.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TLUEdit.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TLUEdit.GetJanuaText: string;
begin
  Result := Self.Text
end;

function TLUEdit.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TLUEdit.Initialize;
begin

end;

procedure TLUEdit.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TLUEdit.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

procedure TLUEdit.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

{ TMoneyEdit }

function TMoneyEdit.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TMoneyEdit.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TMoneyEdit.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      RaiseException('Bind', e, Self);
  end;
end;

procedure TMoneyEdit.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
    try
      Value := aField.AsFloat;
      aField.Bind('AsFloat', Self, 'Value');
    except
      on e: exception do
        RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField + ')  AsString -> Text', e, Self);
    end;
end;

procedure TMoneyEdit.CallObservers;
begin

end;

procedure TMoneyEdit.Change;
begin
  if FBindManager.HasBindings then
  begin
    FBindManager.Notify('Text');
    FBindManager.Notify('Value');
  end;
  inherited;
end;

procedure TMoneyEdit.ClearBindings;
begin
  BindManager.ClearBindings;
end;

constructor TMoneyEdit.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TMoneyEdit.Destroy;
begin
  BindManager.ClearBindings;
  inherited;
end;

procedure TMoneyEdit.Detach(const aObserver: TObject);
begin

end;

procedure TMoneyEdit.DetachObservers;
begin

end;

function TMoneyEdit.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuaBindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TMoneyEdit.GetJanuaDouble: Double;
begin
  Result := Value // StrToFloat(Text);
end;

function TMoneyEdit.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TMoneyEdit.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TMoneyEdit.GetJanuaText: string;
begin
  Result := Self.Text
end;

function TMoneyEdit.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TMoneyEdit.Initialize;
begin

end;

procedure TMoneyEdit.SetJanuaDouble(const aValue: Double);
begin
  Self.Value := aValue
end;

procedure TMoneyEdit.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TMoneyEdit.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

procedure TMoneyEdit.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

{ TAdvMoneyEdit }

function TAdvMoneyEdit.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TAdvMoneyEdit.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TAdvMoneyEdit.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      RaiseException('Bind', e, Self);
  end;
end;

procedure TAdvMoneyEdit.BindToField(const aField: IJanuaField);
begin
  if Assigned(aField) then
    try
      Self.Value := aField.AsFloat;
      aField.Bind('AsFloat', Self, 'Value');
    except
      on e: exception do
        RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField + ')  AsString -> Text', e, Self);
    end;
end;

procedure TAdvMoneyEdit.CallObservers;
begin

end;

procedure TAdvMoneyEdit.Change;
begin
  if BindManager.HasBindings then
  begin
    BindManager.Notify('Text');
    BindManager.Notify('Value');
  end;
  inherited;
end;

procedure TAdvMoneyEdit.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TAdvMoneyEdit.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TAdvMoneyEdit.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  FObserversList := nil;
  inherited;
end;

procedure TAdvMoneyEdit.Detach(const aObserver: TObject);
begin

end;

procedure TAdvMoneyEdit.DetachObservers;
begin

end;

function TAdvMoneyEdit.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuaBindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TAdvMoneyEdit.GetJanuaDouble: Double;
begin
  Result := Value // StrToFloat(Text);
end;

function TAdvMoneyEdit.GetJanuaOnEnter: TNotifyEvent;
begin

end;

function TAdvMoneyEdit.GetJanuaOnExit: TNotifyEvent;
begin

end;

function TAdvMoneyEdit.GetJanuaText: string;
begin
  Result := Self.Text
end;

function TAdvMoneyEdit.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TAdvMoneyEdit.Initialize;
begin

end;

procedure TAdvMoneyEdit.SetJanuaDouble(const aValue: Double);
begin
  Self.Value := aValue
end;

procedure TAdvMoneyEdit.SetJanuaOnEnter(const Value: TNotifyEvent);
begin

end;

procedure TAdvMoneyEdit.SetJanuaOnExit(const Value: TNotifyEvent);
begin

end;

procedure TAdvMoneyEdit.SetJanuaText(const Value: string);
begin
  Self.Text := Value
end;

{ TAdvMemo }

{ TAdvMemo }

function TAdvMemo.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TAdvMemo.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TAdvMemo.Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
  const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TAdvMemo.BindToField(const aField: IJanuaField);
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

procedure TAdvMemo.CallObservers;
begin

end;

procedure TAdvMemo.Change;
begin
  inherited;
  BindManager.Notify('Text');
  BindManager.Notify('Lines.Text');
end;

procedure TAdvMemo.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TAdvMemo.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaBindManager.Create(Self);
  inherited;
end;

destructor TAdvMemo.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TAdvMemo.Detach(const aObserver: TObject);
begin

end;

procedure TAdvMemo.DetachObservers;
begin

end;

function TAdvMemo.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TAdvMemo.GetJanuaOnEnter: TNotifyEvent;
begin
  Result := FJanuaOnEnter
end;

function TAdvMemo.GetJanuaOnExit: TNotifyEvent;
begin
  Result := FJanuaOnExit
end;

function TAdvMemo.GetJanuaText: string;
begin
  Result := Lines.Text
end;

function TAdvMemo.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TAdvMemo.Initialize;
begin

end;

procedure TAdvMemo.SetJanuaOnEnter(const Value: TNotifyEvent);
begin
  FJanuaOnEnter := Value
end;

procedure TAdvMemo.SetJanuaOnExit(const Value: TNotifyEvent);
begin
  FJanuaOnExit := Value
end;

procedure TAdvMemo.SetJanuaText(const Value: string);
begin
  if Lines.Text <> Value then
  begin
    Lines.Text := Value;
    BindManager.Notify('Text');
  end;
end;

{ TAdvRichEditor }

function TAdvRichEditor.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TAdvRichEditor.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TAdvRichEditor.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TAdvRichEditor.BindToField(const aField: IJanuaField);
begin

end;

procedure TAdvRichEditor.CallObservers;
begin

end;

procedure TAdvRichEditor.ClearBindings;
begin

end;

constructor TAdvRichEditor.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TAdvRichEditor.Destroy;
begin

  inherited;
end;

procedure TAdvRichEditor.Detach(const aObserver: TObject);
begin

end;

procedure TAdvRichEditor.DetachObservers;
begin

end;

function TAdvRichEditor.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := Self.FBindManager
end;

function TAdvRichEditor.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TAdvRichEditor.Initialize;
begin

end;

end.

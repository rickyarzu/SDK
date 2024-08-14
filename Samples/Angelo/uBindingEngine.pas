unit uBindingEngine;

interface

uses // RTL
  System.Classes, System.Bindings.Expression, System.Bindings.Helper, System.Generics.Collections,
  // Spring
  Spring.Collections;

type
  TBindCreateOption = (jbcNotifyOutput, jbcEvaluate);
  TBindCreateOptions = set of TBindCreateOption;

  IBindManager = interface
    ['{80BB8463-9C08-4A79-AABD-800D43EE24AD}']
    /// <summary>
    /// Janua Binding Framework. This procedure binds a Field from the record to a property of 'any' Object.
    /// </summary>
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TBindCreateOptions = [jbcNotifyOutput { ,
        jbcEvaluate } ]);
    /// <summary> Clears all Bindings to all properties of the object </summary>
    procedure ClearBindings;
    procedure UnBind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string);
    procedure Notify(const AProperty: string);
    function GetHasBindings: boolean;
    function GetBindCount: Integer;
    procedure IncBindCount;
    procedure DecBindCount;
    property HasBindings: boolean read GetHasBindings;
    property BindCount: Integer read GetBindCount;
    /// <summary> Calls Notify for each binded proprerty in a Class</summary>
    procedure NotifyAll;
  end;

  IBindable = interface
    ['{3A24B921-32CA-459B-A443-4DE66C1E8D14}']
    /// <summary> ClearBindings can be called externally when the object is no longer needed </summary>
    procedure ClearBindings;

    function GetBindManager: IBindManager;
    property BindManager: IBindManager read GetBindManager;

    function GetSelf: TObject;
    property AsObject: TObject read GetSelf;

    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false;
      const ACreateOptions: TBindCreateOptions = [jbcNotifyOutput { , jbcEvaluate } ]);
  end;

  IBindableControl = interface(IBindable)
    ['{FB02DC97-B980-466A-B9A1-764A94CBAC73}']
    function AsComponent: TComponent;
  end;

  TBindRecord = class(TObject)
  private
    FOwner: TObject;
  private
    FBindings: IDictionary<TObject, TBindingExpression>; // *** bindings
    function GetBindCount: Integer;
  strict protected // *** bindings
    property Bindings: IDictionary<TObject, TBindingExpression> read FBindings; // *** bindings
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      { const AReadOnly: boolean = False; } const ACreateOptions: TBindCreateOptions = [jbcNotifyOutput
      { , jbcEvaluate } ]);
    procedure ClearBindings;
    procedure RemoveBindings(const aObject: TObject);
  public
    property BindCount: Integer read GetBindCount;
    property Owner: TObject read FOwner;
  public
    constructor Create(aOwner: TObject); overload;
    destructor Destroy; override;
    constructor Create; overload;
  end;

  TBindingEngine = class(TObject)
  public
    Destructor Destroy; override;
  strict private
    function InternalActivate: boolean;
  private
    FObjectBindings: IDictionary<TObject, TBindRecord>;
  protected
    /// <summary> Create a Binding Record according to Actual binding Framework </summary>
    function GetBIndRecord(const aObject: TObject): TBindRecord;
  public
    procedure Bind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
      const ABindToProperty: string; { const aBidiRectional: boolean = False; } const AReadOnly
      : boolean = false; const ACreateOptions: TBindCreateOptions = [jbcNotifyOutput, jbcEvaluate]);
    procedure UnBind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
      const ABindToProperty: string); overload;
    procedure UnBind(const aObject, ABindToObject: TObject); overload;
    procedure ClearBindings(const aObject: TObject);
    procedure Notify(const aObject: TObject; const APropertyName: string = '');
    procedure ClearAllBindings;
    { public
      function NewBindControlsList: IJanuaBindControlsList; }
  end;

implementation

const
  JanuaCreateBindOptions: array [jbcNotifyOutput .. jbcEvaluate] of TBindings.TCreateOption = (coNotifyOutput,
    coEvaluate);

  { TBindingEngine }

procedure TBindingEngine.Bind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TBindCreateOptions);
begin

end;

procedure TBindingEngine.ClearAllBindings;
begin

end;

procedure TBindingEngine.ClearBindings(const aObject: TObject);
begin

end;

destructor TBindingEngine.Destroy;
begin

  inherited;
end;

function TBindingEngine.GetBIndRecord(const aObject: TObject): TBindRecord;
begin

end;

function TBindingEngine.InternalActivate: boolean;
begin

end;

procedure TBindingEngine.Notify(const aObject: TObject; const APropertyName: string);
begin

end;

procedure TBindingEngine.UnBind(const aObject: TObject; const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string);
begin

end;

procedure TBindingEngine.UnBind(const aObject, ABindToObject: TObject);
begin

end;

{ TBindRecord }

procedure TBindRecord.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const ACreateOptions: TBindCreateOptions);
var
  lBindable: IBindable;
  lBindableControl: IBindableControl;

  function GetCreateOptions: TBindings.TCreateOptions;
  var
    LOption: TBindCreateOption;
  begin
    Result := [];
    for LOption in ACreateOptions do
      Result := Result + [JanuaCreateBindOptions[LOption]];
  end;

  function lOwnerName: string;
  begin
    if Assigned(FOwner) then
    begin
      Result := FOwner.ClassName;

      if (FOwner is TComponent) then
      begin
        Result := Result + (FOwner as TComponent).Name + '.';
        if Assigned((FOwner as TComponent).Owner) then
          Result := (FOwner as TComponent).Owner.Name + '.' + Result;
      end;
    end;
  end;

  function InternalErrorMessage(const aMessage: string): string;
  var
    lComponentName: string;
  begin
    if (ABindToObject is TComponent) then
    begin
      lComponentName := (ABindToObject as TComponent).Name + '.';
      if Assigned((ABindToObject as TComponent).Owner) then
        lComponentName := (ABindToObject as TComponent).Owner.Name + '.' + lComponentName;
    end;

    Result := lOwnerName + '.' + AProperty + ' Bind Error Binding to ' + ABindToObject.ClassName + '.' +
      lComponentName + '.' + ABindToProperty + sLineBreak + aMessage;
  end;

begin

end;

procedure TBindRecord.ClearBindings;
begin

end;

constructor TBindRecord.Create(aOwner: TObject);
begin

end;

constructor TBindRecord.Create;
begin

end;

destructor TBindRecord.Destroy;
begin

  inherited;
end;

function TBindRecord.GetBindCount: Integer;
begin

end;

procedure TBindRecord.RemoveBindings(const aObject: TObject);
begin

end;

end.

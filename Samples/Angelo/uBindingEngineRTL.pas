unit uBindingEngineRTL;

interface

uses // RTL
  System.SysUtils, System.Classes, {System.Bindings.Expression, System.Bindings.Helper,}
  // Spring
  Spring.Collections
  // inherited
    uBindingEngine;

type
  TBindRecordRTL = class(TBindRecord)
    constructor Create(AOwner: TObject); override;
  private
    FBindings: IDictionary<TObject, TBindingExpression>;
  protected
    function GetBindCount: Integer; override;
    property Bindings: IDictionary<TObject, TBindingExpression> read FBindings;
  public
    procedure ClearBindings; override;
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      { const AReadOnly: boolean = False; } const ACreateOptions: TBindCreateOptions = [jbcNotifyOutput
      { , jbcEvaluate } ]); override;
    procedure RemoveBindings(const aObject: TObject); override;
  end;

  TBindingEngineRTL = class(TBindingEngine)
    procedure Notify(const aObject: TObject; const APropertyName: string = ''); override;
  end;

var
  BindRecordRTL: TBindRecordClass = TBindRecordRTL;
  BindingEngineRTL: TBindingEngineClass = TBindingEngineRTL;

implementation

const
  JanuaCreateBindOptions: array [jbcNotifyOutput .. jbcEvaluate] of TBindings.TCreateOption = (coNotifyOutput,
    coEvaluate);

  { TBindRecordRTL }

procedure TBindRecordRTL.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const ACreateOptions: TBindCreateOptions);
  function GetCreateOptions: TBindings.TCreateOptions;
  var
    LOption: TBindCreateOption;
  begin
    Result := [];
    for LOption in ACreateOptions do
      Result := Result + [JanuaCreateBindOptions[LOption]];
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

    Result := lOwnerName(FOwner) + '.' + AProperty + ' Bind Error Binding to ' + ABindToObject.ClassName + '.'
      + lComponentName + '.' + ABindToProperty + sLineBreak + aMessage;
  end;

begin
  begin
    // lBindableControl: IJanuaBindableControl

    (* To connect a UI control to a user defined object the binding must be created at runtime (after the object
      and control have been created). The TBindings class in the System.Bindings.Helper unit provides utility
      functions to accomplish this. One of these is CreateManagedBinding. *)
    try
      Guard.CheckNotNull(FOwner, 'Owner');

      if not FBindings.ContainsKey(ABindToObject) then
      begin
        FBindManager.IncBindCount;

        Guard.CheckNotNull(ABindToObject, InternalErrorMessage('ABindToObject is nil'));
        // From source to dest
        // 2020-01-25 Removed Bi-Directional Binding from Binding Record to simplify Clear Bindings Management.
        FBindings.Add(ABindToObject, TBindings.CreateManagedBinding(
          { inputs }
          [TBindings.CreateAssociationScope([Associate(FOwner, 'src')])], 'src.' + AProperty,
          { outputs }
          [TBindings.CreateAssociationScope([Associate(ABindToObject, 'dst')])], 'dst.' + ABindToProperty,
          nil, nil, GetCreateOptions));
      end;

    except
      on e: Exception do
        raise Exception.Create('Bind Engine.Bind ' + e.Message);
    end;
  end;

end;

procedure TBindRecordRTL.ClearBindings;
var
  i: Spring.Collections.TPair<TObject, TBindingExpression>;
  lBindObject: IBindable;
  lBindControl: IBindableControl;
begin
  if Assigned(FOwner) and Assigned(FBindings) and (FBindings.Count > 0) then
  begin
{$IFDEF DEBUG}
    if not Assigned(FBindManager) then
      Raise Exception.Create('Bind engine IBindable not Supported: ' + FOwner.ClassName);
{$ENDIF}
    for i in FBindings do
      try
        TBindings.RemoveBinding(i.Value);
        FBindManager.DecBindCount
      except
        on e: Exception do
          Raise Exception.Create('Bind engine ClearBindings' + e.Message);
      end
  end;
  FBindings.Clear;

end;

constructor TBindRecordRTL.Create(AOwner: TObject);
begin
  inherited;
  FBindings := Spring.Collections.TCollections.CreateDictionary<TObject, TBindingExpression>;
end;

function TBindRecordRTL.GetBindCount: Integer;
begin
  Result := FBindings.Count
end;

procedure TBindRecordRTL.RemoveBindings(const aObject: TObject);
var
  aBindingExpression: TBindingExpression;
begin
  if Assigned(FOwner) and Assigned(FBindings) and (FBindings.Count > 0) and
    FBindings.TryGetValue(aObject, aBindingExpression) then
  begin
    aBindingExpression.Clear;
    FBindings.Remove(aObject);
    FBindManager.DecBindCount;
  end;

end;

{ TBindingEngineRTL }

procedure TBindingEngineRTL.Notify(const aObject: TObject; const APropertyName: string);
begin
  TBindings.Notify(aObject, APropertyName);
end;

initialization

TBindApplication.BindEngineClass := BindingEngineRTL;
TBindApplication.BindRecordClass := TBindRecordRTL;

end.

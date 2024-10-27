unit Janua.FMX.Interposers;

interface

uses
  System.Classes, System.UITypes, System.SysUtils, Data.Db, Spring.Collections,
  // FMX
  FMX.StdCtrls, FMX.ExtCtrls, FMX.Controls, FMX.Graphics, FMX.ActnList, FMX.Forms, FMX.Edit,
  // Janua
  Janua.Core.Types, Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Controls.Forms.Impl,
  Janua.Controls.Forms.Intf;

type
  TEdit = class(FMX.Edit.TEdit, IJanuaBindableControl, IJanuaBindableEditControl, IJanuaBindable)
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
  private
    FOldText: string;
  protected
    procedure SetText(const Value: string); override;
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

implementation

uses Janua.Application.Framework, Janua.Core.Commons;

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
    Self.Text := aField.AsString;
    Self.Enabled := not(aField.Calculated or aField.IsReadOnly);
    aField.Bind('AsString', Self, 'Text', aField.Calculated);
  except
    on e: exception do
      RaiseException('BindToField(' + Self.Name + ', ' + aField.DBField + ')  AsString -> Text', e, Self);
  end;
end;

procedure TEdit.CallObservers;
begin

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
  inherited;
end;

procedure TEdit.DoExit;
begin
  inherited;
end;

function TEdit.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
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

procedure TEdit.SetText(const Value: string);
begin
  var
  lModified := Model.Text <> Value;
  inherited;
  if lModified then
    BindManager.Notify('Text');
end;

end.

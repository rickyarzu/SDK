unit Janua.VCL.LookupLabel;

interface

uses
  // System
  System.Classes, System.UITypes, System.SysUtils, Data.Db, Spring.Collections,
  // Janua
  Janua.Core.Types, Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.VCL.Bindings.Intf, Janua.Bindings.Intf,
  Janua.Controls.Forms.Impl, Janua.Controls.Forms.Intf,
  // VCL
  VCL.StdCtrls;

type
  TJanuaLookupLabel = class(VCL.StdCtrls.TLabel, IJanuaBindableControl, IJanuaBindableLabelControl)
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

    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  protected
    function GetJanuaCaption: string;
    procedure SetJanuaCaption(const Value: string);
  public
    function AsComponent: TComponent;
    // **** Custom Component Januaproject LookupLabel ************************************************
  private
    FValueField: string;
    FLookupDataset: TDataset;
    FKeyField: string;
    FValue: string;
    FKeyValue: Variant;
    procedure SetKeyField(const Value: string);
    procedure SetKeyValue(const Value: Variant);
    procedure SetLookupDataset(const Value: TDataset);
    procedure SetValue(const Value: string);
    procedure SetValueField(const Value: string);
  protected
    procedure SearchValue;
  public
    property KeyValue: Variant read FKeyValue write SetKeyValue;
    property Value: string read FValue write SetValue;
  published
    property KeyField: string read FKeyField write SetKeyField;
    property ValueField: string read FValueField write SetValueField;
    property LookupDataset: TDataset read FLookupDataset write SetLookupDataset;
  end;

  { IJanuaBindableDateControl = interface(IJanuaBindableEditControl)
    function GetJanuaText: TDate;
    procedure SetJanuaText(const Value: TDate);
    property Date: TDate read GetJanuaText write SetJanuaText;
    end; }

implementation

uses Janua.Core.Classes, Janua.Application.Framework, Janua.Core.Commons;

{ TJanuaLookupLabel }

procedure TJanuaLookupLabel.SetKeyField(const Value: string);
begin
  FKeyField := Value;
  if FKeyField <> '' then
    SearchValue

end;

procedure TJanuaLookupLabel.SetKeyValue(const Value: Variant);
begin
  FKeyValue := Value;
  if FKeyValue <> '' then
    SearchValue
end;

procedure TJanuaLookupLabel.SetLookupDataset(const Value: TDataset);
begin
  FLookupDataset := Value;
  if FLookupDataset <> nil then
    SearchValue
end;

procedure TJanuaLookupLabel.SetValue(const Value: string);
begin
  FValue := Value;
  if FValue <> '' then
    SearchValue
end;

procedure TJanuaLookupLabel.SetValueField(const Value: string);
begin
  FValueField := Value;
  if FValueField <> '' then
    SearchValue
end;

function TJanuaLookupLabel.AsComponent: TComponent;
begin
  Result := Self as TComponent
end;

procedure TJanuaLookupLabel.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TJanuaLookupLabel.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on e: exception do
      Janua.Application.Framework.RaiseException('Bind', e, Self);
  end;
end;

procedure TJanuaLookupLabel.CallObservers;
begin

end;

procedure TJanuaLookupLabel.ClearBindings;
begin
  FBindManager.ClearBindings
end;

constructor TJanuaLookupLabel.Create(AOwner: TComponent);
begin
  FBindManager := TJanuaApplicationFactory.CreateBindManager(self);
  inherited;
end;

destructor TJanuaLookupLabel.Destroy;
begin
  BindManager.ClearBindings;
  FBindManager := nil;
  CallObservers;
  DetachObservers;
  inherited;
end;

procedure TJanuaLookupLabel.Detach(const aObserver: TObject);
begin

end;

procedure TJanuaLookupLabel.DetachObservers;
begin

end;

function TJanuaLookupLabel.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuabindManager.Create(Self); }
  Result := FBindManager
end;

function TJanuaLookupLabel.GetJanuaCaption: string;
begin
  Result := Caption
end;

function TJanuaLookupLabel.GetSelf: TObject;
begin
  Result := Self as TObject
end;

procedure TJanuaLookupLabel.Initialize;
begin

end;

procedure TJanuaLookupLabel.SearchValue;
begin
  if Assigned(FLookupDataset) and (Self.FKeyValue <> '') and (Self.FKeyField <> '') and (FValueField <> '')
  then
  begin
    if FLookupDataset.Locate(FKeyField, FKeyValue, [loCaseInsensitive]) then
    begin
      Caption := FLookupDataset.FieldByName(FValueField).AsString;
    end;

  end;

end;

procedure TJanuaLookupLabel.SetJanuaCaption(const Value: string);
begin
  Caption := Value
end;

end.

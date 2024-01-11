unit udmCustomController;

interface

uses
  System.SysUtils, System.Classes, System.Bindings.Expression, System.Bindings.Helper,
  System.Generics.Collections;

type
  TdmCustomController = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  protected type
    TExpressionList = TObjectList<TBindingExpression>; // *** bindings
    // ************************************* Bindings Procedures *********************************************
  strict protected
    FBindings: TExpressionList; // *** bindings
  protected // *** bindings
    procedure Notify(const APropertyName: string = ''); Virtual; // *** bindings
    property Bindings: TExpressionList read FBindings; // *** bindings
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: boolean = false; const ACreateOptions: TBindings.TCreateOptions = [coNotifyOutput,
      coEvaluate]);
    procedure ClearBindings;
    // ************************************* Bindings Procedures *********************************************
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCustomController: TdmCustomController;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}
{ TdmCustomController }

procedure TdmCustomController.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: boolean; const ACreateOptions: TBindings.TCreateOptions);
begin
  // From source to dest
  if not AReadOnly then
    FBindings.Add(TBindings.CreateManagedBinding(
      { inputs }
      [TBindings.CreateAssociationScope([Associate(self, 'src')])], 'src.' + AProperty,
      { outputs }
      [TBindings.CreateAssociationScope([Associate(ABindToObject, 'dst')])], 'dst.' + ABindToProperty, nil,
      nil, ACreateOptions));
  // From dest to source
  FBindings.Add(TBindings.CreateManagedBinding(
    { inputs }
    [TBindings.CreateAssociationScope([Associate(ABindToObject, 'src')])], 'src.' + ABindToProperty,
    { outputs }
    [TBindings.CreateAssociationScope([Associate(self, 'dst')])], 'dst.' + AProperty, nil, nil,
    ACreateOptions));
end;

procedure TdmCustomController.ClearBindings;
var
  i: TBindingExpression;
begin
  for i in FBindings do
    TBindings.RemoveBinding(i);
  FBindings.Clear;
end;

procedure TdmCustomController.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FBindings := TExpressionList.Create(false { AOwnsObjects } );
end;

procedure TdmCustomController.DataModuleDestroy(Sender: TObject);
begin
  ClearBindings;
  FBindings.Free;
  inherited;
end;

procedure TdmCustomController.Notify(const APropertyName: string);
begin
  TBindings.Notify(self, APropertyName);
end;

end.

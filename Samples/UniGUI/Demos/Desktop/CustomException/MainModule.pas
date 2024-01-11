unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, DBClient;

type
  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1DateTime: TDateTimeField;
    ClientDataSet1No: TAutoIncField;
    ClientDataSet1EClass: TStringField;
    ClientDataSet1Message: TStringField;
    ClientDataSet1Component: TStringField;
    ClientDataSet1xForm: TStringField;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LogException(E: Exception);
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, UniGUIApplication, uniGUIClasses;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
  ClientDataSet1.CreateDataSet;
end;

procedure TUniMainModule.LogException(E: Exception);
var
  Cmp : TComponent;
begin
  ClientDataSet1.Append;
  ClientDataSet1.FieldByName('DateTime').AsDateTime := Now;
  if E <> nil then
  begin
    ClientDataSet1.FieldByName('EClass').AsString := E.ClassName;
    ClientDataSet1.FieldByName('Message').AsString := E.Message;
  end;
  Cmp := TUniGUIApplication(UniApplication).UniSession.CurrentComponent;
  if Assigned(Cmp) then
    ClientDataSet1.FieldByName('Component').AsString := Cmp.Name + ' (' + Cmp.ClassName + ')';

  if Cmp is TUniControl then
    ClientDataSet1.FieldByName('xForm').AsString := TUniControl(Cmp).OwnerForm.Name
  else if Cmp is TUniComponent then
    ClientDataSet1.FieldByName('xForm').AsString := TUniComponent(Cmp).OwnerForm.Name;

  try
    ClientDataSet1.Post;
  except
    ClientDataSet1.Cancel;
    raise;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
  
end.

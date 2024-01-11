unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, Datasnap.DBClient;

type
  TUniMainModule = class(TUniGUIMainModule)
    CS: TClientDataSet;
    DataSource1: TDataSource;
    CSevent_name: TStringField;
    CSjs_name: TStringField;
    CScomponent_name: TStringField;
    CStime_stamp: TDateTimeField;
    CSparameters: TStringField;
    CScomponent_class: TStringField;
    procedure UniGUIMainModuleHandleRequest(ASession: TObject;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication, uniMainMenu, uniGUIClasses,
  uniGUITypes, uniGUIJSForm;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleHandleRequest(ASession: TObject; var Handled: Boolean);
var
  JSObj : TJSObject;
  uSession : TUniGUISession;
  ObjName, EventName : string;
  Cmp : TComponent;

begin
  if ASession is TUniGUISession then
  begin
    uSession := (ASession as TUniGUISession);
    EventName := uSession.QueryParams['Evt'].AsString;
    if EventName <> '' then
    begin
      ObjName := uSession.QueryParams['Obj'].AsString;
      JSObj := uSession.QueryParams['Obj'].AsObject;
      Cmp := nil;
      if JSObj is TJSMenuItem then
      begin
        if Assigned(TJSMenuItem(JSObj).AttachedMenuItem) then
          Cmp := TJSMenuItem(JSObj).AttachedMenuItem;
      end
      else if Assigned(JSObj.AttachedComponent) then
        Cmp := JSObj.AttachedComponent;

      if Cmp is TUniBaseJSForm then
        Cmp := (Cmp as TUniBaseJSForm).OwnerForm;

      CS.Append;
      CStime_stamp.AsDateTime := Now;
      CSevent_name.AsString := EventName;
      CSjs_name.AsString := ObjName;
      if Assigned(Cmp) then
      begin
        CScomponent_name.AsString := Cmp.Name;
        CScomponent_class.AsString := Cmp.ClassName;
      end;
      CSparameters.AsString := UniSession.QueryParams.Text;
      CS.Post;
    end;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.

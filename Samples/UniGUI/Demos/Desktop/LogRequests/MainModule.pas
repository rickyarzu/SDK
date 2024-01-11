unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, DB, DBClient;

type
  TUniMainModule = class(TUniGUIMainModule)
    CDS: TClientDataSet;
    CDSTimeStamp: TDateTimeField;
    CDSAjax: TBooleanField;
    CDSParams: TMemoField;
    CDSHeaders: TMemoField;
    CDSEventName: TStringField;
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
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleHandleRequest(ASession: TObject; var Handled: Boolean);
var
  Session : TUniGUISession;
  EventName : string;
begin
  Session := ASession as TUniGUISession;
  EventName := Session.QueryParams['evt'].AsString;
  if (EventName = 'data') or (EventName = 'load') or  (EventName = 'select')  then Exit; // ignore dbgrid events

  CDS.Append;
  try
    CDSAjax.AsBoolean := Session.IsAjax;
    CDSTimeStamp.AsDateTime := Now;
    CDSParams.AsString := Session.QueryParams.Text;
    CDSHeaders.AsString := Session.ARequest.RawHeaders.Text;
    CDSEventName.AsString := EventName;
    CDS.Post;
  except
    CDS.Cancel;
    raise;
  end;


end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.

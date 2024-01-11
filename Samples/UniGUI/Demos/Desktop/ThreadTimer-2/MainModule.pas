unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, uniThreadTimer, SyncObjs, DB,
  DBClient;

type
  TUniMainModule = class(TUniGUIMainModule)
    UniThreadTimer1: TUniThreadTimer;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1F1: TIntegerField;
    ClientDataSet1F2: TStringField;
    procedure UniThreadTimer1Timer(Sender: TObject);
    procedure UniGUIMainModuleCreate(Sender: TObject);
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

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
begin
  UniThreadTimer1.Enabled := True;
end;

procedure TUniMainModule.UniThreadTimer1Timer(Sender: TObject);
var
  FS : TUniGUISession;
  B : TBookmark;
begin
  if Assigned(Self.UniApplication) then
  begin
    FS := (Self.UniApplication as TUniGUIApplication).UniSession; // This is the uniSession instance which is the owner of this UniMainModule
    FS.LockSession;   // make sure session is not busy
    try
      B := ClientDataSet1.GetBookmark;
      try
        ClientDataSet1.Append;
        ClientDataSet1.FieldByName('F1').AsInteger := ClientDataSet1.RecordCount;
        ClientDataSet1.FieldByName('F2').AsString := TimeToStr(Now);
        ClientDataSet1.Post;
        ClientDataSet1.GotoBookmark(B);
      finally
        ClientDataSet1.FreeBookmark(B);
      end;
    finally
      FS.ReleaseSession;
    end;
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);

end.

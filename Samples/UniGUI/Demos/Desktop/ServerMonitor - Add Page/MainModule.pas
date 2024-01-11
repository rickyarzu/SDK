unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, uniPageControl, DB,
  DBClient;

type
  TUniSessionInfoRec = record
    ASessionId : string;
    AIP : string;
    ALastTime: TDateTime;
  end;

  TUniMainModule = class(TUniGUIMainModule)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1SessionId: TStringField;
    ClientDataSet1IP: TStringField;
    ClientDataSet1LastTime: TDateTimeField;
    DataSource1: TDataSource;
    procedure UniGUIMainModuleServerMonitorCreate(Sender: TObject);
    procedure UniGUIMainModuleServerMonitorUpdate(Sender: TObject);
  private
    { Private declarations }
    PageC : TUniPageControl;
    TabS : TUniTabSheet;
    ASessionList : array of TUniSessionInfoRec;
    nCnt : Integer;
    procedure UpdateSessions;
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication,
  uniDBGrid, uniGUISessionManager, Controls, uniGUITypes;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.UniGUIMainModuleServerMonitorCreate(Sender: TObject);
var
  C : TComponent;
  G : TUniDBGrid;
begin
  C := TComponent(Sender);
  PageC := C.FindComponent('UniPageControl') as TUniPageControl;
  TabS := TUniTabSheet.Create(C);
  TabS.PageControl := PageC;
  TabS.Caption := 'My Custom Page';
  TabS.Layout  := 'fit';

  G := TUniDBGrid.Create(C);
  G.Parent := TabS;
  G.DataSource := DataSource1;
  G.ReadOnly := True;
  G.LoadMask.Enabled := False;
  G.Options := G.Options + [dgRowSelect];
  G.WebOptions.Paged := False;
end;

procedure TUniMainModule.UniGUIMainModuleServerMonitorUpdate(Sender: TObject);   // occurs each 5 seconds
begin
  if nCnt mod 3 = 0 then  // each 15 seconds
    UpdateSessions;
  Inc(nCnt);
end;

procedure TUniMainModule.UpdateSessions;
var
  S : TUniGUISessions;
  U : TUniGUISession;
  I : Integer;
begin
  S := UniServerModule.SessionManager.Sessions;
  S.Lock; // Using Lock on session manager should be used with extreme care.
          // We should keep the "Lock duration"  as short as we can. Session Manager stops working until lock is released.
          // Excessive use of lock/unlock or keeping the lock active for a long period will make uniGUI server slow/unresponsive.
  try
    SetLength(ASessionList, S.SessionList.Count);

    // Here we perform a fast copy of sessions list to another array for later usage.
    for I := 0 to S.SessionList.Count - 1  do
    begin
      U := S.SessionList[I];
      ASessionList[I].ASessionId := U.SessionId;
      ASessionList[I].AIP := U.RemoteIP;
      ASessionList[I].ALastTime := U.LastTimeStamp;
    end;
  finally
    S.Unlock; // ... and finally don't forget to release lock!
  end;

  ClientDataSet1.EmptyDataSet;
  for I := Low(ASessionList) to High(ASessionList) do
  begin
    ClientDataSet1.Append;
    ClientDataSet1.FieldByName('sessionid').AsString := ASessionList[I].ASessionId;
    ClientDataSet1.FieldByName('ip').AsString := ASessionList[I].AIP;
    ClientDataSet1.FieldByName('lasttime').AsDateTime := ASessionList[I].ALastTime;
    ClientDataSet1.Post;
  end;

  ClientDataSet1.First;

end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.

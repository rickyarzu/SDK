unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  DB, DBClient, uniBasicGrid, uniDBGrid;

type
  TUniSessionInfoRec = record
    ASessionId : string;
    AIP : string;
    AMyVar : string;
    ALastTime: TDateTime;
  end;

  TMainForm = class(TUniForm)
    UniButton1: TUniButton;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1SessionId: TStringField;
    ClientDataSet1IP: TStringField;
    ClientDataSet1LastTime: TDateTimeField;
    UniDBGrid1: TUniDBGrid;
    ClientDataSet1MyVar: TStringField;
    UniButton2: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
    ASessionList : array of TUniSessionInfoRec;
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniGUISessionManager,
  ServerModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
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

    // Here we do a fast copy of list to another array for later use.
    for I := 0 to S.SessionList.Count - 1  do
    begin
      U := S.SessionList[I];
      ASessionList[I].ASessionId := U.SessionId;
      ASessionList[I].AIP := U.RemoteIP;
      ASessionList[I].ALastTime := U.LastTimeStamp;
      if U.UniMainModule <> nil then // Check mainModule availability. Some sessions may not have a MainModule instance
        ASessionList[I].AMyVar := (U.UniMainModule as TUniMainModule).FMyStringVar; // Access custom MainModule props
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
    ClientDataSet1.FieldByName('myvar').AsString := ASessionList[I].AMyVar;
    ClientDataSet1.Post;
  end;

end;

procedure TMainForm.UniButton2Click(Sender: TObject);
var
  SId : string;
  SS : TUniGUISession;
begin
  SId := ClientDataSet1.FieldByName('sessionid').AsString;
  if (SId <> '') and (SId <> UniSession.SessionId) then
  begin
    SS := UniServerModule.GetSession(SId);  // this will also mark session as "Busy", so session won't be terminated while still in use by us
    if Assigned(SS) then
      try
        SS.TerminateAfterSecs(1);
      finally
        SS.UnBusy; // we need to manually clear the "Busy" flag so session will be released and terminated
      end;
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniMainModule.FMyStringVar := TimeToStr(Now);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

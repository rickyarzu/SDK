unit ufrmTestSystem;

interface

{$I januacore.inc}

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
{$IFDEF WEBBROKER}
  Web.WebReq,
{$ENDIF }
  System.SysUtils, uWebBrokerTest,
  Janua.Orm.Intf, Janua.Server.Intf, Janua.Core.Types, udmVirtualSystemServer,
  // Orm
  JORM.System.Intf, JOrm.System.UserProfile.Custom.Intf, JOrm.System.Intf,
  JORM.System.Users.Impl, JOrm.System.Impl, JOrm.System.UserProfile.Custom.Impl,
  // Parent
  Janua.Server.Impl, Janua.System.Server.Intf, Janua.System.Server.Impl, Janua.Virtual.System;

// Janua.Virtual.System was compiled with a different version of Janua.System.Server.Impl.TJanuaDBSystemStorage
type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    btnCreateVirtualStorage: TButton;
    Button3: TButton;
    btnVirtualWebBroker: TButton;
    btnSetupVirtualFactory: TButton;
    Button1: TButton;
    procedure CreateVirtualStorageClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnVirtualWebBrokerClick(Sender: TObject);
    procedure btnSetupVirtualFactoryClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    // This is the user profile that should bereturned by the user session.
    aUserProfile: IUserProfile;
    // Test Variabiles are the same as Session Key Login.
    LStorage: IJanuaSystemStorage;
    LBool: boolean;
    LUser: IUser;
    LSystem, LRestSystem: IJanuaServerSystem;
    LParams: IJanuaParams;
    LResult: IJanuaFuncResult;
    LTestParam: IJanuaField;
    LUserSession: IUserSession;
  public
    { Public declarations }
    procedure LogMemo(aLog: string);
    procedure ClearMemo;
  end;

var
  Form2: TForm2;

implementation

uses uTestSystem, Spring, Janua.Core.Classes, Janua.Core.UnitTesting, uWebModuleCoreTest,
  Janua.Application.Framework;

{$R *.dfm}

procedure TForm2.ClearMemo;
begin
  self.Memo1.Lines.Clear
end;

procedure TForm2.CreateVirtualStorageClick(Sender: TObject);
begin
  try
    try
      TJanuaTestSystem.CreateStorage(btnCreateVirtualStorage);
    except
      on e: exception do
        TJanuaLogger.LogError('CreateVirtualStorageClick', 'Error', self, e);
    end;
  finally
    LogMemo(TJanuaLogger.LogString);
    TJanuaLogger.ClearLog;
  end;
end;

procedure TForm2.btnSetupVirtualFactoryClick(Sender: TObject);
begin
  try
    self.Memo1.Lines.Clear;
    try
      TJanuaLogger.StartWatch;
      TJanuaLogger.LogRecord('SetupVirtualFactory', 'Start', self);
      try
{$IFDEF webbroker}
        if WebRequestHandler <> nil then
          WebRequestHandler.WebModuleClass := WebModuleCoreClass;
{$ENDIF webbroker}
        TJanuaApplication.RestServer := 'http://localhost:8099';
        GlobalServerSystemFactory := TJanuaServerVirtualSystemFactory.Create;
        TJanuaLogger.LogRecord('SetupVirtualFactory', 'GlobalServerSystemFactory Create', self);
      finally
        LogMemo(TJanuaLogger.LogString);
      end;
    except
      on e: exception do
      begin
        self.LogMemo('btnSetupVirtualFactoryClick, Error:' + sl + e.Message);
      end;
    end;
  finally
    TJanuaLogger.StopWatch;
    TJanuaLogger.ResetWatch;
    TJanuaLogger.ClearLog;
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  {
    [TestCase('TestA', 'true,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c543')]
    [TestCase('TestB', 'false,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c566')]
    procedure SessionKeyLogin(const expected: boolean; const aSessionKey: string);
  }
  TJanuaTestSystem.VirtualSessionKeyLogin(True,
    'cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c543');

  TJanuaTestSystem.VirtualSessionKeyLogin(False,
    'cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c566');
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  try
    self.Memo1.Lines.Clear;
    TJanuaLogger.StartWatch;
    TJanuaLogger.DefaultProcedure := 'TJanuaTestSystem.Login';
    try
      Assert.IsNotNull(GlobalServerSystemFactory, 'LFactory');
      (*
        TJanuaTestSystem.Login(False, '', '');
        TJanuaTestSystem.Login(False, 'errato@errato.com', 'errata');
      *)
      TJanuaTestSystem.Login(True, 'paolo.dellepiane@settimanasport.com', 'sp0rtm3d14');
    finally
      LogMemo(TJanuaCoreOS.LogString);
    end;
  finally
    TJanuaLogger.StopWatch;
    TJanuaLogger.ResetWatch;
    TJanuaLogger.ClearLog;
  end;
end;

procedure TForm2.btnVirtualWebBrokerClick(Sender: TObject);
begin
  try
    TJanuaLogger.StartWatch;
    TJanuaLogger.LogRecord('Button4Click', 'WebBrokerTest.Setup Start', self.btnVirtualWebBroker);
{$IFDEF WEBBROKER}
    TJanuaLogger.LogRecord('SetupWebBroker', 'uWebBrokerTest.Setup Start', self.btnVirtualWebBroker);
    uWebBrokerTest.Setup;
    TJanuaLogger.LogRecord('SetupWebBroker', 'uWebBrokerTest.Setup End', self.btnVirtualWebBroker);
{$ENDIF }
    TJanuaLogger.LogRecord('Button4Click', 'WebBrokerTest.Setup End', self.btnVirtualWebBroker);
  finally
    LogMemo(TJanuaLogger.LogString);
    TJanuaLogger.StopWatch;
    TJanuaLogger.ResetWatch;
    TJanuaLogger.ClearLog;
  end;
end;

procedure TForm2.LogMemo(aLog: string);
begin
  self.Memo1.Lines.Add(aLog);
end;

end.

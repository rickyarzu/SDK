unit uTestSystem;

{$I januacore.inc}

interface

uses
  System.SysUtils,
{$IFNDEF NOTEST}
  DUnitX.TestFramework,
{$ELSE}
  Janua.Core.UnitTesting,
{$ENDIF}
  // Janua Server
  Janua.Orm.Intf, Janua.Server.Intf, Janua.System.Server.Intf,
  // Janua ORM Framework
  JOrm.System.UserProfile.Custom.Intf, JORM.System.Intf,
  JORM.System.Users.Impl, JORM.System.Impl, JOrm.System.UserProfile.Custom.Impl,
  JORM.System.Users.Intf;

type
  TJanuaTestSystem = class
  private

  public
    class constructor Create;
    class destructor Destroy;
    class procedure CreateStorage(const aObject: TObject);
    class procedure Login(const expected: boolean; const aUsername, aPassword: string);
    class procedure ServerSystemLogin(const expected: boolean; const aUsername, aPassword: string);
    class procedure RESTLogin(const expected: boolean; const aUsername, aPassword: string);
    class procedure VirtualSessionKeyLogin(expected: boolean; const aSessionKey: string);
    class procedure DoSessionPayment(const expected: boolean; const aSessionKey: string; const aDate: string;
      const aAmount: Currency);

  end;

  // {$ifdef NOTEST}


  // {$endif NOTEST}

implementation

uses
  Janua.Application.Framework,
{$IFDEF  TESTWEBBROKER} uWebBrokerTest, {$ENDIF}
  Janua.Core.Types, // Parent
  Janua.Server.Impl, Janua.System.Server.Impl;

var
  LStorage: IJanuaSystemStorage;
  LBool: boolean;
  LUser: IUser;
  LSystem, LRestSystem: IJanuaServerSystem;
  LParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LTestParam: IJanuaField;
  LUserSession: IUserSession;

class constructor TJanuaTestSystem.Create;
begin

end;

class procedure TJanuaTestSystem.CreateStorage(const aObject: TObject);
begin
  TJanuaLogger.LogRecord('CreateVirtualStorageClick', 'LFactory ', aObject);
  TJanuaLogger.LogRecord('CreateVirtualStorageClick', 'GetSystemStorage', aObject);
  LStorage := GlobalServerSystemFactory.GetSystemStorage;
  Assert.IsNotNull(LStorage, 'LStorage');
  // Creo una variabile Interfaccia IUser locale denominata LUser
  TJanuaLogger.LogRecord('CreateVirtualStorageClick', 'TUsersFactory.CreateRecord(user)', aObject);
  LUser := JORM.System.Users.Impl.TUsersFactory.CreateRecord('user');
  Assert.IsNotNull(LUser, 'LUser');
  // prima chiedo a storage di Creare il Dataset.
  TJanuaLogger.LogRecord('CreateVirtualStorageClick', 'LStorage.CreateDataset', aObject);
  LStorage.CreateDataset;
  TJanuaLogger.LogRecord('CreateVirtualStorageClick', 'Procedura Terminata', aObject);
end;

class destructor TJanuaTestSystem.Destroy;
begin

end;

class procedure TJanuaTestSystem.DoSessionPayment(const expected: boolean; const aSessionKey, aDate: string;
  const aAmount: Currency);
var
  // This is the user profile that should bereturned by the user session.
  aUserProfile: IUserProfile;
  LDate: TDate;
begin
  Assert.IsNotNull(GlobalServerSystemFactory, 'GlobalServerSystemFactory');
  LStorage := GlobalServerSystemFactory.GetSystemStorage;
  Assert.IsNotNull(LStorage, 'LStorage is nil');
  // Creo una variabile Interfaccia IUser locale denominata LUser
  LUser := JORM.System.Users.Impl.TUsersFactory.CreateRecord('user');
  Assert.IsNotNull(LUser, 'LUser is nil');
  // prima chiedo a storage di Creare il Dataset.
  LStorage.CreateDataset;
  LDate := StrToDate(aDate);
  LBool := LStorage.LoginByKey(aSessionKey) and LStorage.DoPaymentSession(aAmount, LDate);
  Assert.AreEqual(expected, LBool, 'Error Storage Payment Test Key= ' + aSessionKey);

  // Usando LFactory che implementa l'interfaccia da Virtual ottengo un Server connesso a Virtual DB Local
  LSystem := GlobalServerSystemFactory.GetServerSystem;
  Assert.IsNotNull(LSystem, 'LSystem');
  // Ripeto i passaggi di prima ma usando LSystem al posto di LStorage.
  LBool := LSystem.DoPayment(aSessionKey, aAmount, LDate);

  if expected then
    Assert.IsTrue(LBool, 'Error System Login Test Key= ' + aSessionKey)
  else
    Assert.IsFalse(LBool, 'Error System Login Test Key= ' + aSessionKey);

  if LBool then
  begin
    Assert.AreEqual(LSystem.SessionKey, aSessionKey, 'Key do not match: ' + aSessionKey);
    Assert.AreEqual(119, LSystem.usersession.usersession.Db_user_id.AsInteger,
      'LSystem.usersession.Db_user_id not match: ');
    Assert.AreEqual(119, LSystem.User.DbUserId.AsInteger, 'LSystem.User.DbUserId not match:  ' +
      LSystem.User.DbUserId.AsString);
    Assert.AreEqual('Paolo', LSystem.userprofile.First_name.AsString, 'First_name do not match (Paolo): ' +
      LSystem.userprofile.First_name.AsString);
  end;

end;

class procedure TJanuaTestSystem.Login(const expected: boolean; const aUsername, aPassword: string);
var
  LUser: IUser;
begin
  // {$ifdef NOTEST}

  TJanuaLogger.LogRecord('TJanuaTestSystem.Login', 'Start', nil);
  try
    // {$ENDIF}
    LStorage := GlobalServerSystemFactory.GetSystemStorage;
    Assert.IsNotNull(LStorage, 'LStorage is nil');
    // Creo una variabile Interfaccia IUser locale denominata LUser
    LUser := JORM.System.Users.Impl.TUsersFactory.CreateRecord('user');
    Assert.IsNotNull(LUser, 'LUser is nil');
    LUser.Password.AsString := aPassword;
    LUser.Email.AsString := aUsername;
    // prima chiedo a storage di Creare il Dataset.
    LStorage.CreateDataset;
    LBool := LStorage.Login(LUser);

    Assert.AreEqual(expected, LBool, 'Error Storage Login Test: ' + aUsername + '/' + aPassword);
    if LBool then
      Assert.AreEqual(aUsername, LStorage.UsersListStorage.RecordSet.StoreDataset.FieldByName('email')
        .AsString);

    Assert.IsNotNull(LStorage.UserSessionStorage.RecordSet.StoreDataset,
      'LStorage.UserSessionStorage.UpdatedRecordSet.Dataset');
  except
    on e: exception do
      RaiseException('Login', e, nil, Format('(%s, %s)', [aUsername, aPassword]))
  end;

end;

class procedure TJanuaTestSystem.RESTLogin(const expected: boolean; const aUsername, aPassword: string);
begin
  // creo ed imposto i parametri per il primo test della funzione di Rest Login che ha come risultato FuncResult
  LParams := TJanuaSystemFactory.CreateLoginParams;
  Assert.IsNotNull(LParams, 'LParams is nil');
  LTestParam := LParams.ParamByName('username');
  Assert.IsNotNull(LTestParam, 'LTestParam username');
  LTestParam.AsString := aUsername;
  LTestParam := LParams.ParamByName('password');
  Assert.IsNotNull(LTestParam, 'LTestParam.password');
  LTestParam.AsString := aPassword;
  LParams.ParamByName('key').AsString := '';
  LTestParam := nil;
  LTestParam := LParams.ParamByName('username');
  Assert.IsNotNull(LTestParam, 'LTestParam username');
  Assert.AreEqual(aUsername, LTestParam.AsString, 'Param username: ' + LTestParam.AsString + '/' + aUsername);
  LTestParam := nil;
  LTestParam := LParams.ParamByName('password');
  Assert.IsNotNull(LTestParam, 'LTestParam password is nil');
  Assert.AreEqual(aPassword, LTestParam.AsString, 'Param password not equal: ' + LTestParam.AsString);

  // Assert.AreEqual(aPassword, LParams.ParamByName('password').AsString, 'Param password not equal: ' +
  // LParams.ParamByName('password').AsString);

  // Ricreo System
  LSystem := nil;
  LSystem := GlobalServerSystemFactory.GetServerSystem;
  Assert.IsNotNull(LSystem, 'LSystem is nil');
  // Carico 'Result' da System.
  LResult := LSystem.RESTLogin(LParams);
  Assert.IsNotNull(LResult, 'LResult is nil');
  LBool := not LResult.HasErrors;
  Assert.AreEqual(expected, LBool, 'Error System Rest Login: ' + sLineBreak + aUsername + '/' + aPassword +
    sLineBreak + 'Message: ' + sLineBreak + LResult.ErrorMessage);

  // se ci sono errori casi False e NotFound non faccio verifiche e non carico il record ritornato
  if not LResult.HasErrors then
  begin
    LUserSession := JORM.System.Impl.TUserSession.Create;
    Assert.AreEqual(1, LResult.RecResult.Records.Count, 'Result record <> 1: ' +
      LResult.RecResult.Records.Count.ToString);
    LUserSession.Assign(LResult.RecResult.Records[0]);
{$IFNDEF  TESTCORE}
    Assert.AreEqual(aUsername, LUserSession.User.Email.AsString);
    Assert.AreEqual(aPassword, LUserSession.User.Password.AsString);
{$ENDIF  TESTCORE}
    Assert.AreNotEqual(0, LUserSession.User.DbUserId.AsInteger);
  end;

  LResult := nil;
{$IFDEF  TESTHTTP}
  LResult := TServerHelper.OpenServerFunction('system', 'login', LParams);

  Assert.IsNotNull(LResult, 'LResult is nil');
  LBool := not LResult.HasErrors;
  Assert.AreEqual(expected, LBool, 'Error System Rest Login: ' + sLineBreak + aUsername + '/' + aPassword +
    sLineBreak + 'Message: ' + sLineBreak + LResult.ErrorMessage);

  // se ci sono errori casi False e NotFound non faccio verifiche e non carico il record ritornato
  if not LResult.HasErrors then
  begin
    LUserSession := JORM.System.Impl.TUserSession.Create;
    Assert.AreEqual(1, LResult.RecResult.Records.Count, 'Result record <> 1: ' +
      LResult.RecResult.Records.Count.ToString);
    LUserSession.Assign(LResult.RecResult.Records[0]);
    Assert.AreEqual(aUsername, LUserSession.User.Email.AsString);
    Assert.AreEqual(aPassword, LUserSession.User.Password.AsString);
    Assert.AreNotEqual(0, LUserSession.User.DbUserId.AsInteger);
  end;
{$ENDIF}
end;

class procedure TJanuaTestSystem.ServerSystemLogin(const expected: boolean;
  const aUsername, aPassword: string);
begin
  // Usando GlobalServerSystemFactory che implementa l'interfaccia da Virtual ottengo un Server connesso a Virtual DB Local
  LSystem := GlobalServerSystemFactory.GetServerSystem;
  Assert.IsNotNull(LSystem, 'LSystem');
  // Ripeto i passaggi di prima ma usando LSystem al posto di LStorage.
  LBool := LSystem.Login(aUsername, aPassword);

  Assert.AreEqual(expected, LBool, 'Error System Login Test: ' + aUsername + '/' + aPassword);
  if LBool then
  begin
{$IFNDEF  TESTCORE}
    Assert.AreEqual(aUsername, LSystem.User.Email.AsString);
    Assert.AreEqual(aPassword, LSystem.User.Password.AsString);
{$ENDIF  TESTCORE}
    Assert.AreNotEqual(0, LSystem.User.DbUserId.AsInteger);
  end;
end;

class procedure TJanuaTestSystem.VirtualSessionKeyLogin(expected: boolean; const aSessionKey: string);
var
  LUser: IUser;
begin
  Assert.IsNotNull(GlobalServerSystemFactory, 'GlobalServerSystemFactory is nil');
  LStorage := GlobalServerSystemFactory.GetSystemStorage;
  Assert.IsNotNull(LStorage, 'LStorage is nil');
  // Creo una variabile Interfaccia IUser locale denominata LUser
  LUser := JORM.System.Users.Impl.TUsersFactory.CreateRecord('user');
  Assert.IsNotNull(LUser, 'LUser is nil');
  // prima chiedo a storage di Creare il Dataset.
  LStorage.CreateDataset;
  LBool := LStorage.LoginByKey(aSessionKey);

  Assert.AreEqual(expected, LBool, 'Error Storage Login Test Key= ' + aSessionKey);
  // Usando GlobalServerSystemFactory che implementa l'interfaccia da Virtual ottengo un Server connesso a Virtual DB Local
  LSystem := GlobalServerSystemFactory.GetServerSystem;
  Assert.IsNotNull(LSystem, 'LSystem is nil');
  // Ripeto i passaggi di prima ma usando LSystem al posto di LStorage.
  LBool := LSystem.LoginByKey(aSessionKey);
  if expected then
    Assert.IsTrue(LBool, 'Error System Login Test Key= ' + aSessionKey)
  else
    Assert.IsFalse(LBool, 'Error System Login Test Key= ' + aSessionKey);

  if LBool then
  begin
    Assert.AreEqual(LSystem.SessionKey, aSessionKey, 'Key do not match: ' + aSessionKey);
    Assert.AreEqual(119, LSystem.usersession.usersession.Db_user_id.AsInteger,
      'LSystem.usersession.Db_user_id not match: ');
    Assert.AreEqual(119, LSystem.User.DbUserId.AsInteger, 'LSystem.User.DbUserId not match:  ' +
      LSystem.User.DbUserId.AsString);
    Assert.AreEqual('Paolo', LSystem.userprofile.First_name.AsString, 'First_name do not match (Paolo): ' +
      LSystem.userprofile.First_name.AsString);
  end;

end;

end.

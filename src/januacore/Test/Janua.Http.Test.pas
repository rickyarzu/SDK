unit Janua.Http.Test;

interface

uses
  DUnitX.TestFramework, Janua.Cloud.Conf, Janua.Cloud.Impl, Janua.Cloud.Types, Janua.Core.Types,
  Janua.Core.System.Types, Janua.Cloud.Intf, System.SysUtils, System.Classes;

type

  [TestFixture]
  TJanuaHttpTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure HTTP_STATUS_Description;
    [Test]
    procedure HTTP_STATUS_Level;
  end;

implementation

uses Janua.Http.Types;

{ TJanuaHttpTest }

procedure TJanuaHttpTest.HTTP_STATUS_Description;
var
  aStatus: HTTP_STATUS;
begin
  {
    1: Result := 'Info';
    2: Result := 'Success';
    3: Result := 'Redirect';
    4: Result := 'Client Error';
    5: Result := 'Server Error';
  }
  // 100 Info
  Assert.AreEqual('Continue', aStatus[HTTP_STATUS.Continue], 'HTTP_STATUS.Continue');
  // 200   Success
  Assert.AreEqual('Partial Content', aStatus[HTTP_STATUS.PartialContent], 'HTTP_STATUS.Continue');
  // 300 Redirect
  Assert.AreEqual('Temporary Redirect', aStatus[HTTP_STATUS.TemporaryRedirect],
    'HTTP_STATUS.TemporaryRedirect');
  // 400 Client Error
  Assert.AreEqual('Expectation Failed', aStatus[HTTP_STATUS.ExpectationFailed],
    'HTTP_STATUS.ExpectationFailed');
  // 500 Server Error
  Assert.AreEqual('Insufficient Storage', aStatus[HTTP_STATUS.InsufficientStorage],
    'HTTP_STATUS.InsufficientStorage');
end;

procedure TJanuaHttpTest.HTTP_STATUS_Level;
var
  aStatus: HTTP_STATUS;
begin
  Assert.AreEqual('Info', aStatus.Levels[HTTP_STATUS.Continue], 'HTTP_STATUS.Info');
  Assert.AreEqual('Success', aStatus.Levels[HTTP_STATUS.PartialContent], 'HTTP_STATUS.Success');
  Assert.AreEqual('Redirect', aStatus.Levels[HTTP_STATUS.TemporaryRedirect], 'HTTP_STATUS.Redirect');
  Assert.AreEqual('Client Error', aStatus.Levels[HTTP_STATUS.ExpectationFailed], 'HTTP_STATUS.ClientError');
  Assert.AreEqual('Server Error', aStatus.Levels[HTTP_STATUS.InsufficientStorage], 'HTTP_STATUS.ServerError');
end;

procedure TJanuaHttpTest.Setup;
begin

end;

procedure TJanuaHttpTest.TearDown;
begin

end;

end.

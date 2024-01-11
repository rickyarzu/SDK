unit Janua.Cloud.Impl.Test;

interface

uses
  DUnitX.TestFramework, Janua.Core.Types;

type

  [TestFixture]
  TJanuaCloudImplTest = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestCreateFileLinkObject;
    [Test]
    procedure TestGenerateImageLink;
  end;

implementation

uses
  System.SysUtils, System.Classes, Data.DB, System.Generics.Collections, Spring.Collections,
  // Janua Intf / Commons
  Janua.Cloud.Types, Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Html.Intf, Janua.Cloud.Intf,
  // Janua Impl / Classes
  Janua.Core.System.Types, Janua.Core.Classes, Janua.Cloud.Conf, Janua.Cloud.Impl;

{ TJanuaCloudImplTest }

procedure TJanuaCloudImplTest.Setup;
begin

end;

procedure TJanuaCloudImplTest.TearDown;
begin

end;

procedure TJanuaCloudImplTest.TestCreateFileLinkObject;
begin

end;

procedure TJanuaCloudImplTest.TestGenerateImageLink;
begin

end;

initialization

TDUnitX.RegisterTestFixture(TJanuaCloudImplTest);

end.

unit Janua.DMVC.UnitTest.TestViewModel;

interface

uses
  DUnitX.TestFramework,
  // System
  System.Generics.Collections, System.SysUtils, RESTRequest4D,
  // Spring
  Spring.Collections,
  // Janua
  Janua.REST.Intf, Janua.REST.Client,
  // Janua Types
  Janua.REST.Types, Janua.Core.Types, Janua.Http.Types,
  // REST
  MVCFramework;

type

  [TestFixture]
  TestRESTModelClient = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure aCreateClient;
  end;

implementation

uses Janua.Orm.Firedac, Janua.Test.ViewModel.Intf, Janua.Mock.Firedac.Framework, Janua.Test.Model.Impl,
  Janua.Orm.Dataset.Impl;

{ TestRESTModelClient }

procedure TestRESTModelClient.aCreateClient;
var
  lRestModel: IJanuaRemoteTestModel;
begin
  // TJanuaRestTestModel = class(TJanuaRESTModelTemplate, IJanuaRemoteTestModel)
  lRestModel := TJanuaRestTestModel.Create;
end;

procedure TestRESTModelClient.Setup;
begin
  try
    Janua.Orm.Dataset.Impl.TOrmDatasetFactory.SetDBDatasetClass(TJanuaVtMemDataset);
  except
    on e: exception do
      raise Exception.Create('TestRESTModelClient.Setup error setting TJanuaVtMemDataset');
  end;
end;

procedure TestRESTModelClient.TearDown;
begin

end;

end.

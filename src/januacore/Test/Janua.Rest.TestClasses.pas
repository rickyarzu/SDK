unit Janua.Rest.TestClasses;

interface

uses
  DUnitX.TestFramework,
  // System
  System.Generics.Collections, System.SysUtils, RESTRequest4D,
  // Spring
  Spring.Collections,
  // Janua
  Janua.Rest.Intf, Janua.Rest.Client,
  // Janua Types
  Janua.Core.DB.Types, Janua.Rest.Types, Janua.Core.Types, Janua.Http.Types;

type

  IRESTTestClient = interface(IJanuaRESTClient)
    function GetBaseUrl: string;
    function GetTestResourcesUrl: string;
    function GetRequest(const aResources: TResources = []): IRequest;
  end;

  TRESTTestClient = class(TJanuaRESTClient, IJanuaRESTClient, IRESTTestClient)
  protected
    function GetBaseUrl: string; override;
    function GetTestResourcesUrl: string; override;
    function GetRequest(const aResources: TResources = []): IRequest; override;
  end;

  IRESTTestLogin = interface(IRESTLoginClient)
    function GetBaseUrl: string;
    function GetTestResourcesUrl: string;
    function GetRequest(const aResources: TResources = []): IRequest;
  end;

  TRESTTestLogin = class(TRESTClientLogin, IRESTTestLogin)
  protected
    function GetBaseUrl: string; override;
    function GetTestResourcesUrl: string; override;
    function GetRequest(const aResources: TResources = []): IRequest; override;
  end;

  IRESTTestRecord = interface(IRESTRecordClient)
    function GetBaseUrl: string;
    function GetTestResourcesUrl: string;
    function GetRequest(const aResources: TResources = []): IRequest;
  end;

  TRESTTestRecord = class(TRESTRecordClient, IRESTTestRecord)
  protected
    function GetBaseUrl: string; override;
    function GetTestResourcesUrl: string; override;
    function GetRequest(const aResources: TResources = []): IRequest; override;
  end;

  IRESTTestDBClient = interface(IRESTDBClient)
    function GetBaseUrl: string;
    function GetTestResourcesUrl: string;
    function GetRequest(const aResources: TResources = []): IRequest;
  end;

  TRESTTestDBClient = class(TRESTDBClient, IRESTTestDBClient)
  protected
    function GetBaseUrl: string; override;
    function GetTestResourcesUrl: string; override;
    function GetRequest(const aResources: TResources = []): IRequest; override;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{ TRESTTestClient }

function TRESTTestClient.GetBaseUrl: string;
begin
  Result := inherited
end;

function TRESTTestClient.GetRequest(const aResources: TResources): IRequest;
begin
  Result := inherited
end;

function TRESTTestClient.GetTestResourcesUrl: string;
begin
  inherited;
end;

{ TRESTTestLogin }

function TRESTTestLogin.GetBaseUrl: string;
begin
  Result := inherited
end;

function TRESTTestLogin.GetRequest(const aResources: TResources): IRequest;
begin
  Result := inherited
end;

function TRESTTestLogin.GetTestResourcesUrl: string;
begin
  Result := inherited;
end;

{ TRESTTestRecord }

function TRESTTestRecord.GetBaseUrl: string;
begin
  Result := inherited
end;

function TRESTTestRecord.GetRequest(const aResources: TResources): IRequest;
begin
  Result := inherited
end;

function TRESTTestRecord.GetTestResourcesUrl: string;
begin
  Result := GetResourcesUrl([URLEncode64(GUID.ToString)])
end;

{ TRESTTestDBClient }

function TRESTTestDBClient.GetBaseUrl: string;
begin
  Result := inherited
end;

function TRESTTestDBClient.GetRequest(const aResources: TResources): IRequest;
begin
  Result := inherited
end;

function TRESTTestDBClient.GetTestResourcesUrl: string;
begin
  Result := GetResourcesUrl([CRestFormat[JanuaDataset.SerializeFormat], JanuaDataset.Params.AsBase64Url]);
end;

end.

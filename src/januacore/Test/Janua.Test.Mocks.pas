unit Janua.Test.Mocks;

interface

uses
  Spring.Mocking, Spring.Collections, Spring, Data.DB, System.JSON,
  Janua.Http.Types, Janua.Orm.Types, Janua.Core.Types,
  System.Classes, System.SysUtils;

type
  // Interface per HTTP Client mockabile
  IJanuaHttpClient = interface
    ['{8F5B5A5A-4E8C-4F7C-9B1E-3A4D2B6C8E9F}']
    function Get(const aUrl: string; const aAuth: TJanuaHttpAuth): string;
    function Post(const aUrl, aBody: string; const aAuth: TJanuaHttpAuth): string;
    function GetStatusCode: Integer;
    function GetHeaders: IDictionary<string, string>;
  end;

  // Interface per Cookie Manager
  IJanuaCookieManager = interface
    ['{A2C4E6F8-1B3D-4A5E-9C7F-2E6A8D9B5F3C}']
    procedure AddCookie(const aCookie: TJWebBrowserCookie);
    function GetCookies(const aDomain, aPath: string): TArray<TJWebBrowserCookie>;
    function GetCookieCount: Integer;
    procedure Clear;
  end;

  // Interface per Dataset operations
  IJanuaDatasetOperations = interface
    ['{D5E7F9FB-2C4E-4A6D-8B9F-1E3A5C7D9F2B}']
    function Open(const aEntityName: string): TDataSet;
    function ExecuteQuery(const aSql: string; const aParams: TArray<Variant>): Integer;
    function GetPaginated(const aEntity: TJanuaEntity; const aPagination: TDatasetPagination): TDataSet;
    procedure ApplyUpdates(const aDataset: TDataSet);
  end;

  // Interface per MIME type resolver
  IJanuaMimeResolver = interface
    ['{F1A3C5E7-9B2D-4E6F-8A1C-3D5E7B9F2A4C}']
    function GetMimeType(const aExtension: string): string;
    function GetMimeTypeEnum(const aExtension: string): TJanuaMimeType;
    function IsSupported(const aExtension: string): Boolean;
  end;

  // Mock Factory class
  TJanuaMockFactory = class
  public
    class function CreateHttpClientMock: Mock<IJanuaHttpClient>;
    class function CreateCookieManagerMock: Mock<IJanuaCookieManager>;
    class function CreateDatasetOperationsMock: Mock<IJanuaDatasetOperations>;
    class function CreateMimeResolverMock: Mock<IJanuaMimeResolver>;
    
    // Helper methods per setup comuni
    class procedure SetupHttpSuccessResponse(const AMock: Mock<IJanuaHttpClient>; 
      const AResponse: string; AStatusCode: Integer = 200);
    class procedure SetupHttpAuthenticatedCall(const AMock: Mock<IJanuaHttpClient>;
      const AAuthType: TJanuaAuthType);
    class procedure SetupDatasetWithRecords(const AMock: Mock<IJanuaDatasetOperations>;
      const AEntity: string; ARecordCount: Integer);
  end;

  // Test Data Builders
  TJanuaTestDataBuilder = class
  public
    class function BuildCookie(const AName, AValue, ADomain: string): TJWebBrowserCookie;
    class function BuildAuth(AType: TJanuaAuthType; const AToken: string = ''): TJanuaHttpAuth;
    class function BuildPagination(AActive: Boolean; APage: Word; ASize: UInt32): TDatasetPagination;
    class function BuildOrderBy(const AField: string; AOrder: TOrderByEnum): TJanuaOrderByField;
    class function BuildJsonResponse(const AData: string): TJsonObject;
  end;

implementation

uses
  FireDAC.Comp.Client, FireDAC.Stan.Def;

{ TJanuaMockFactory }

class function TJanuaMockFactory.CreateHttpClientMock: Mock<IJanuaHttpClient>;
begin
  Result := Mock<IJanuaHttpClient>.Create;
  
  // Setup default behavior
  Result.Setup.WillReturn('').When.Get(It.IsAny<string>, It.IsAny<TJanuaHttpAuth>);
  Result.Setup.WillReturn('').When.Post(It.IsAny<string>, It.IsAny<string>, It.IsAny<TJanuaHttpAuth>);
  Result.Setup.WillReturn(200).When.GetStatusCode;
  
  // Setup headers dictionary
  var Headers := TCollections.CreateDictionary<string, string>;
  Headers.Add('Content-Type', 'application/json');
  Result.Setup.WillReturn(Headers).When.GetHeaders;
end;

class function TJanuaMockFactory.CreateCookieManagerMock: Mock<IJanuaCookieManager>;
begin
  Result := Mock<IJanuaCookieManager>.Create;
  
  // Setup default behavior
  Result.Setup.WillReturn(0).When.GetCookieCount;
  Result.Setup.WillReturn(TArray<TJWebBrowserCookie>.Create()).When.GetCookies(
    It.IsAny<string>, It.IsAny<string>);
end;

class function TJanuaMockFactory.CreateDatasetOperationsMock: Mock<IJanuaDatasetOperations>;
begin
  Result := Mock<IJanuaDatasetOperations>.Create;
  
  // Default empty dataset
  var EmptyDataset := TFDMemTable.Create(nil);
  Result.Setup.WillReturn(EmptyDataset).When.Open(It.IsAny<string>);
  Result.Setup.WillReturn(0).When.ExecuteQuery(It.IsAny<string>, It.IsAny<TArray<Variant>>);
end;

class function TJanuaMockFactory.CreateMimeResolverMock: Mock<IJanuaMimeResolver>;
begin
  Result := Mock<IJanuaMimeResolver>.Create;
  
  // Setup common mime types
  Result.Setup.WillReturn('application/json').When.GetMimeType('.json');
  Result.Setup.WillReturn('text/html').When.GetMimeType('.html');
  Result.Setup.WillReturn('application/pdf').When.GetMimeType('.pdf');
  Result.Setup.WillReturn('application/octet-stream').When.GetMimeType(It.IsAny<string>);
  
  // Setup enum returns
  Result.Setup.WillReturn(TJanuaMimeType.jmtApplicationJson).When.GetMimeTypeEnum('.json');
  Result.Setup.WillReturn(TJanuaMimeType.jmtTextHtml).When.GetMimeTypeEnum('.html');
  Result.Setup.WillReturn(TJanuaMimeType.jmtUnknown).When.GetMimeTypeEnum(It.IsAny<string>);
  
  // Setup supported check
  Result.Setup.WillReturn(True).When.IsSupported(
    It.IsIn<string>(['.json', '.html', '.pdf', '.xml', '.css', '.js']));
  Result.Setup.WillReturn(False).When.IsSupported(It.IsAny<string>);
end;

class procedure TJanuaMockFactory.SetupHttpSuccessResponse(
  const AMock: Mock<IJanuaHttpClient>; const AResponse: string; AStatusCode: Integer);
begin
  AMock.Setup.WillReturn(AResponse).When.Get(It.IsAny<string>, It.IsAny<TJanuaHttpAuth>);
  AMock.Setup.WillReturn(AResponse).When.Post(It.IsAny<string>, It.IsAny<string>, It.IsAny<TJanuaHttpAuth>);
  AMock.Setup.WillReturn(AStatusCode).When.GetStatusCode;
end;

class procedure TJanuaMockFactory.SetupHttpAuthenticatedCall(
  const AMock: Mock<IJanuaHttpClient>; const AAuthType: TJanuaAuthType);
var
  AuthMatcher: TMatcher<TJanuaHttpAuth>;
begin
  // Create a custom matcher for auth type
  AuthMatcher := Match<TJanuaHttpAuth>.When(
    function(const Auth: TJanuaHttpAuth): Boolean
    begin
      Result := Auth.AuthType = AAuthType;
    end);
  
  AMock.Setup.WillReturn('{"authenticated": true}').When.Get(It.IsAny<string>, AuthMatcher);
  AMock.Setup.WillReturn('{"authenticated": true}').When.Post(It.IsAny<string>, It.IsAny<string>, AuthMatcher);
end;

class procedure TJanuaMockFactory.SetupDatasetWithRecords(
  const AMock: Mock<IJanuaDatasetOperations>; const AEntity: string; ARecordCount: Integer);
var
  Dataset: TFDMemTable;
  I: Integer;
begin
  Dataset := TFDMemTable.Create(nil);
  Dataset.FieldDefs.Add('ID', ftInteger);
  Dataset.FieldDefs.Add('Name', ftString, 50);
  Dataset.CreateDataSet;
  
  // Add test records
  for I := 1 to ARecordCount do
  begin
    Dataset.Append;
    Dataset.FieldByName('ID').AsInteger := I;
    Dataset.FieldByName('Name').AsString := Format('Record %d', [I]);
    Dataset.Post;
  end;
  
  Dataset.First;
  
  AMock.Setup.WillReturn(Dataset).When.Open(AEntity);
end;

{ TJanuaTestDataBuilder }

class function TJanuaTestDataBuilder.BuildCookie(const AName, AValue, ADomain: string): TJWebBrowserCookie;
begin
  Result.Name := AName;
  Result.Value := AValue;
  Result.Domain := ADomain;
  Result.Path := '/';
  Result.Expires := Now + 1; // Tomorrow
  Result.Secure := False;
  Result.HTTPOnly := False;
  Result.Session := False;
  {$IFNDEF MACOS}
  Result.SameSite := jsstLax;
  {$ENDIF}
end;

class function TJanuaTestDataBuilder.BuildAuth(AType: TJanuaAuthType; const AToken: string): TJanuaHttpAuth;
begin
  if AToken <> '' then
    Result := TJanuaHttpAuth.Create(AType, AToken)
  else
    Result := TJanuaHttpAuth.Create(AType);
    
  if AType = TJanuaAuthType.Basic then
  begin
    Result.UserName := 'testuser';
    Result.Password := 'testpass';
  end;
end;

class function TJanuaTestDataBuilder.BuildPagination(AActive: Boolean; APage: Word; ASize: UInt32): TDatasetPagination;
begin
  Result.Active := AActive;
  Result.Page := APage;
  Result.Size := ASize;
end;

class function TJanuaTestDataBuilder.BuildOrderBy(const AField: string; AOrder: TOrderByEnum): TJanuaOrderByField;
begin
  Result := TJanuaOrderByField.Create(AField, AOrder, jocDefault);
end;

class function TJanuaTestDataBuilder.BuildJsonResponse(const AData: string): TJsonObject;
begin
  Result := TJsonObject.Create;
  Result.AddPair('success', TJsonBool.Create(True));
  Result.AddPair('data', TJsonString.Create(AData));
  Result.AddPair('timestamp', TJsonString.Create(DateToISO8601(Now)));
end;

end.
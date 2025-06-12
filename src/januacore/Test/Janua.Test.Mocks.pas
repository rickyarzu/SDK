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
    class procedure SetupHttpSuccessResponse(const AMock: Mock<IJanuaHttpClient>; const AResponse: string;
      AStatusCode: Integer = 200);
    class procedure SetupHttpAuthenticatedCall(const AMock: Mock<IJanuaHttpClient>;
      const AAuthType: TJanuaAuthType);
    class procedure SetupDatasetWithRecords(const AMock: Mock<IJanuaDatasetOperations>; const aEntity: string;
      ARecordCount: Integer);
  end;

  // Test Data Builders
  TJanuaTestDataBuilder = class
  public
    class function BuildCookie(const AName, AValue, aDomain: string): TJWebBrowserCookie;
    class function BuildAuth(AType: TJanuaAuthType; const AToken: string = ''): TJanuaHttpAuth;
    class function BuildPagination(AActive: Boolean; APage: Word; ASize: UInt32): TDatasetPagination;
    class function BuildOrderBy(const AField: string; AOrder: TOrderByEnum): TJanuaOrderByField;
    class function BuildJsonResponse(const AData: string): TJsonObject;
  end;

implementation

uses
  FireDAC.Comp.Client, FireDAC.Stan.Def, Janua.Core.Functions, System.DateUtils;

{ TJanuaMockFactory }

class function TJanuaMockFactory.CreateHttpClientMock: Mock<IJanuaHttpClient>;
begin
  Result := Mock<IJanuaHttpClient>.Create();

  // mockFoo.Setup.Returns('hello something').When.Bar(1);
  (*
    IntfMock : Mock<IIntfToMock>;
    begin
    IntfMock := Mock<IIntfToMock>.Create();
    IntfMock.Setup.Returns(True).When.DoSth(Arg.IsAny<IHelper>, Arg.IsAny<TRefFunc>);
  *)

  // Setup default behavior
  Result.Setup.Returns('').When.Get(Arg.IsAny<string>, Arg.IsAny<TJanuaHttpAuth>);
  Result.Setup.Returns('').When.Post(Arg.IsAny<string>, Arg.IsAny<string>, Arg.IsAny<TJanuaHttpAuth>);
  Result.Setup.Returns(200).When.GetStatusCode;

  // Setup headers dictionary
  var
  Headers := TCollections.CreateDictionary<string, string>;
  Headers.Add('Content-Type', 'application/json');
  Result.Setup.Returns(Headers).When.GetHeaders;
end;

class function TJanuaMockFactory.CreateCookieManagerMock: Mock<IJanuaCookieManager>;
begin
  Result := Mock<IJanuaCookieManager>.Create;

  // Setup default behavior
  Result.Setup.Returns(0).When.GetCookieCount;
  {
    Result.Setup.Returns(TArray<TJWebBrowserCookie>.Create()).When.GetCookies(Arg.IsAny<string>,
    Arg.IsAny<string>);
  }
end;

class function TJanuaMockFactory.CreateDatasetOperationsMock: Mock<IJanuaDatasetOperations>;
begin
  Result := Mock<IJanuaDatasetOperations>.Create;

  // Default empty dataset
  var
  EmptyDataset := TFDMemTable.Create(nil);
  Result.Setup.Returns(EmptyDataset).When.Open(Arg.IsAny<string>);
  Result.Setup.Returns(0).When.ExecuteQuery(Arg.IsAny<string>, Arg.IsAny < TArray < Variant >> );
end;

class function TJanuaMockFactory.CreateMimeResolverMock: Mock<IJanuaMimeResolver>;
begin
  Result := Mock<IJanuaMimeResolver>.Create;

  // Setup common mime types
  Result.Setup.Returns('application/json').When.GetMimeType('.json');
  Result.Setup.Returns('text/html').When.GetMimeType('.html');
  Result.Setup.Returns('application/pdf').When.GetMimeType('.pdf');
  Result.Setup.Returns('application/octet-stream').When.GetMimeType(Arg.IsAny<string>);

  // Setup enum returns
  Result.Setup.Returns(TJanuaMimeType.jmtApplicationJson).When.GetMimeTypeEnum('.json');
  Result.Setup.Returns(TJanuaMimeType.jmtTextHtml).When.GetMimeTypeEnum('.html');
  Result.Setup.Returns(TJanuaMimeType.jmtUnknown).When.GetMimeTypeEnum(Arg.IsAny<string>);

  // Setup supported check
  Result.Setup.Returns(True).When.IsSupported(Arg.IsIn<string>(['.json', '.html', '.pdf', '.xml',
    '.css', '.js']));
  Result.Setup.Returns(False).When.IsSupported(Arg.IsAny<string>);
end;

class procedure TJanuaMockFactory.SetupHttpSuccessResponse(const AMock: Mock<IJanuaHttpClient>;
  const AResponse: string; AStatusCode: Integer);
begin
  AMock.Setup.Returns(AResponse).When.Get(Arg.IsAny<string>, Arg.IsAny<TJanuaHttpAuth>);
  AMock.Setup.Returns(AResponse).When.Post(Arg.IsAny<string>, Arg.IsAny<string>, Arg.IsAny<TJanuaHttpAuth>);
  AMock.Setup.Returns(AStatusCode).When.GetStatusCode;
end;

class procedure TJanuaMockFactory.SetupHttpAuthenticatedCall(const AMock: Mock<IJanuaHttpClient>;
  const AAuthType: TJanuaAuthType);
begin
  var
  AuthMatcher := TJanuaHttpAuth.Create(TJanuaAuthType.None);
  AMock.Setup.Returns('{"authenticated": true}').When.Get(Arg.IsAny<string>, AuthMatcher);
  AMock.Setup.Returns('{"authenticated": true}').When.Post(Arg.IsAny<string>, Arg.IsAny<string>, AuthMatcher);
end;

class procedure TJanuaMockFactory.SetupDatasetWithRecords(const AMock: Mock<IJanuaDatasetOperations>;
  const aEntity: string; ARecordCount: Integer);
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

  AMock.Setup.Returns(Dataset).When.Open(aEntity);
end;

{ TJanuaTestDataBuilder }

class function TJanuaTestDataBuilder.BuildCookie(const AName, AValue, aDomain: string): TJWebBrowserCookie;
begin
  Result.Name := AName;
  Result.Value := AValue;
  Result.Domain := aDomain;
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

class function TJanuaTestDataBuilder.BuildPagination(AActive: Boolean; APage: Word; ASize: UInt32)
  : TDatasetPagination;
begin
  Result.Active := AActive;
  Result.Page := APage;
  Result.Size := ASize;
end;

class function TJanuaTestDataBuilder.BuildOrderBy(const AField: string; AOrder: TOrderByEnum)
  : TJanuaOrderByField;
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

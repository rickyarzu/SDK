unit Janua.INPS.RedisRequest;

interface

uses System.IOUtils, System.SysUtils, System.Rtti, System.Classes,
  // Janua
  Janua.Core.Json, Janua.Core.Classes;

type
  TRequestRecord = record
    UserName: string;
    Password: string;
    nomeMicroservizio: string;
    ACL: string;
    Request: string;
  end;

type
  TACLTemplatesRecord = record
    DevTemplate: string;
    TestTemplate: string;
    ProdTemplate: string;

    DevReqTemplate: string;
    TestReqTemplate: string;
    ProdReqTemplate: string;
  end;

  TRequestControllerRecord = record
  private
    PINGPassword: string;
    PINGPasswordSHA: string;
    PINGUser: string;
    PingPasswordBase64: string;
    maxMemoryPolicy: string;
    labelPartOf: string;
    nomeMicroservizio: string;
    areaFunzionale: string;
    labelOrganization: string;
    DevRequest: TRequestRecord;
    TestRequest: TRequestRecord;
    ProdRequest: TRequestRecord;
    Templates: TACLTemplatesRecord;
  end;

  TRedisRequest = class(TJanuaBindableObject)
  private
  public
  end;

  TRequestController = class(TJanuaBindableObject)
    constructor Create; override;
    destructor Destroy; override;
  private
    RequestRecord: TRequestControllerRecord;
    FFileName: TFileName;
    FTemplates: TACLTemplatesRecord;
    DevRequest: TRequestRecord;
    TestRequest: TRequestRecord;
    ProdRequest: TRequestRecord;
    FHeadFields: TStrings;
    FACLFields: TStrings;
    procedure SetACLFields(const Value: TStrings);
    procedure SetHeadFields(const Value: TStrings);
  protected
    procedure SetFileName(const Value: TFileName);
    function GetPINGPasswordBase64: string;
    procedure SetPINGPasswordBase64(const Value: string);
    procedure SetDevReqTemplate(const Value: string);
    procedure SetDevTemplate(const Value: string);
    procedure SetProdReqTemplate(const Value: string);
    procedure SetProdTemplate(const Value: string);
    procedure SetTestReqTemplate(const Value: string);
    procedure SetTestTemplate(const Value: string);
    procedure SetDevnomeMicroservizio(const Value: string);
    procedure SetDevPassword(const Value: string);
    procedure SetDevUserName(const Value: string);
    procedure SetProdnomeMicroservizio(const Value: string);
    procedure SetProdPassword(const Value: string);
    procedure SetProdUserName(const Value: string);
    procedure SetTestnomeMicroservizio(const Value: string);
    procedure SetTestPassword(const Value: string);
    procedure SetTestUserName(const Value: string);
  protected
    procedure SetareaFunzionale(const Value: string);
    procedure SetlabelOrganization(const Value: string);
    procedure SetlabelPartOf(const Value: string);
    procedure SetmaxMemoryPolicy(const Value: string);
    procedure SetnomeMicroservizio(const Value: string);
    procedure SetPINGPassword(const Value: string);
    procedure SetPINGPasswordSHA(const Value: string);
    procedure SetPINGUser(const Value: string);
    function GetareaFunzionale: string;
    function GetlabelOrganization: string;
    function GetlabelPartOf: string;
    function GetmaxMemoryPolicy: string;
    function GetnomeMicroservizio: string;
    function GetPINGPassword: string;
    function GetPINGPasswordSHA: string;
    function GetPINGUser: string;
  public
    procedure SaveToFile(const aFileName: TFileName);
    procedure LoadFromFile(const aFileName: TFileName);
    function ElaborateTemplate(const aRecord: TRequestRecord; const aTemplate: string): string;
    property HeadFields: TStrings read FHeadFields write SetHeadFields;
    property ACLFields: TStrings read FACLFields write SetACLFields;
  public
    property nomeMicroservizio: string read GetnomeMicroservizio write SetnomeMicroservizio;
    property areaFunzionale: string read GetareaFunzionale write SetareaFunzionale;
    property labelOrganization: string read GetlabelOrganization write SetlabelOrganization;
    property labelPartOf: string read GetlabelPartOf write SetlabelPartOf;
    property maxMemoryPolicy: string read GetmaxMemoryPolicy write SetmaxMemoryPolicy;
    property PINGUser: string read GetPINGUser write SetPINGUser;
    property PINGPassword: string read GetPINGPassword write SetPINGPassword;
    property PINGPasswordSHA: string read GetPINGPasswordSHA write SetPINGPasswordSHA;
    property PingPasswordBase64: string read GetPINGPasswordBase64 write SetPINGPasswordBase64;
    property FileName: TFileName read FFileName write SetFileName;
  public
    property DevTemplate: string read FTemplates.DevTemplate write SetDevTemplate;
    property TestTemplate: string read FTemplates.TestTemplate write SetTestTemplate;
    property ProdTemplate: string read FTemplates.ProdTemplate write SetProdTemplate;
    property DevReqTemplate: string read FTemplates.DevReqTemplate write SetDevReqTemplate;
    property TestReqTemplate: string read FTemplates.TestReqTemplate write SetTestReqTemplate;
    property ProdReqTemplate: string read FTemplates.ProdReqTemplate write SetProdReqTemplate;
  public
    property DevUserName: string read DevRequest.UserName write SetDevUserName;
    property DevPassword: string read DevRequest.Password write SetDevPassword;
    property DevnomeMicroservizio: string read DevRequest.nomeMicroservizio write SetDevnomeMicroservizio;
  public
    property TestUserName: string read TestRequest.UserName write SetTestUserName;
    property TestPassword: string read TestRequest.Password write SetTestPassword;
    property TestnomeMicroservizio: string read TestRequest.nomeMicroservizio write SetTestnomeMicroservizio;
  public
    property ProdUserName: string read ProdRequest.UserName write SetProdUserName;
    property ProdPassword: string read ProdRequest.Password write SetProdPassword;
    property ProdnomeMicroservizio: string read ProdRequest.nomeMicroservizio write SetProdnomeMicroservizio;
  end;

implementation

{ TRequestController }

constructor TRequestController.Create;
var
  rtype: TRTTIType;
  fields: TArray<TRttiField>;
  i: Integer;
begin
  inherited;
  FHeadFields := TStringList.Create;
  FACLFields := TStringList.Create;

  rtype := TRTTIContext.Create.GetType(TypeInfo(TRequestControllerRecord));
  fields := rtype.GetFields;
  for i := 0 to High(fields) do
    FHeadFields.Add('$$' + (fields[i].Name) + '$$');

  rtype := TRTTIContext.Create.GetType(TypeInfo(TRequestRecord));
  fields := rtype.GetFields;
  for i := 0 to High(fields) do
    FACLFields.Add('$$' + (fields[i].Name) + '$$');

end;

destructor TRequestController.Destroy;
begin
  FHeadFields.Free;
  FACLFields.Free;
  inherited;
end;

function TRequestController.ElaborateTemplate(const aRecord: TRequestRecord; const aTemplate: string): string;
var
  rtype: TRTTIType;
  fields: TArray<TRttiField>;
  i: Integer;
begin

  rtype := TRTTIContext.Create.GetType(TypeInfo(TRequestControllerRecord));
  fields := rtype.GetFields;

  { RequestRecord, aRecord }
  for i := 0 to High(fields) do
    StringReplace(aTemplate, '$$' + fields[i].Name + '$$', fields[i].GetValue(@RequestRecord).ToString,
      [rfReplaceAll]);

  rtype := TRTTIContext.Create.GetType(TypeInfo(TRequestRecord));
  fields := rtype.GetFields;
  for i := 0 to High(fields) do
    StringReplace(aTemplate, '$$' + fields[i].Name + '$$', fields[i].GetValue(@aRecord).ToString,
      [rfReplaceAll]);

end;

function TRequestController.GetareaFunzionale: string;
begin
  Result := RequestRecord.areaFunzionale
end;

function TRequestController.GetlabelOrganization: string;
begin
  Result := RequestRecord.labelOrganization
end;

function TRequestController.GetlabelPartOf: string;
begin
  Result := RequestRecord.labelPartOf
end;

function TRequestController.GetmaxMemoryPolicy: string;
begin
  Result := RequestRecord.maxMemoryPolicy
end;

function TRequestController.GetnomeMicroservizio: string;
begin
  Result := RequestRecord.nomeMicroservizio
end;

function TRequestController.GetPINGPassword: string;
begin
  Result := RequestRecord.PINGPassword
end;

function TRequestController.GetPINGPasswordBase64: string;
begin
  Result := RequestRecord.PingPasswordBase64
end;

function TRequestController.GetPINGPasswordSHA: string;
begin
  Result := RequestRecord.PINGPasswordSHA
end;

function TRequestController.GetPINGUser: string;
begin
  Result := RequestRecord.PINGUser
end;

procedure TRequestController.LoadFromFile(const aFileName: TFileName);
begin
  var
  lStr := TJanuaJson.SerializeSimple<TRequestControllerRecord>(RequestRecord);
  TFile.WriteAllText(aFileName, lStr);
end;

procedure TRequestController.SaveToFile(const aFileName: TFileName);
begin
  var
  lStr := TFile.ReadAllText(aFileName);
  RequestRecord := TJanuaJson.DeserializeSimple<TRequestControllerRecord>(lStr);
end;

procedure TRequestController.SetACLFields(const Value: TStrings);
begin
  FACLFields.Assign(Value);
end;

procedure TRequestController.SetareaFunzionale(const Value: string);
begin
  if RequestRecord.areaFunzionale <> Value then
  begin
    RequestRecord.areaFunzionale := Value;
    Notify('areaFunzionale');
  end;
end;

procedure TRequestController.SetDevnomeMicroservizio(const Value: string);
begin
  DevRequest.nomeMicroservizio := Value;
end;

procedure TRequestController.SetDevPassword(const Value: string);
begin
  DevRequest.Password := Value;
end;

procedure TRequestController.SetDevReqTemplate(const Value: string);
begin
  FTemplates.DevReqTemplate := Value;
end;

procedure TRequestController.SetDevTemplate(const Value: string);
begin
  FTemplates.DevTemplate := Value;
end;

procedure TRequestController.SetDevUserName(const Value: string);
begin
  DevRequest.UserName := Value;
end;

procedure TRequestController.SetFileName(const Value: TFileName);
begin
  FFileName := Value;
end;

procedure TRequestController.SetHeadFields(const Value: TStrings);
begin
  FHeadFields := Value;
end;

procedure TRequestController.SetlabelOrganization(const Value: string);
begin
  if RequestRecord.areaFunzionale <> Value then
  begin
    RequestRecord.labelOrganization := Value;
    Notify('labelOrganization');
  end;
end;

procedure TRequestController.SetlabelPartOf(const Value: string);
begin
  if RequestRecord.labelPartOf <> Value then
  begin
    RequestRecord.labelPartOf := Value;
    Notify('labelPartOf');
  end;
end;

procedure TRequestController.SetmaxMemoryPolicy(const Value: string);
begin
  if RequestRecord.maxMemoryPolicy <> Value then
  begin
    RequestRecord.maxMemoryPolicy := Value;
    Notify('maxMemoryPolicy');
  end;
end;

procedure TRequestController.SetnomeMicroservizio(const Value: string);
begin
  if RequestRecord.nomeMicroservizio <> Value then
  begin
    RequestRecord.nomeMicroservizio := Value;
    Notify('nomeMicroservizio');
  end;
end;

procedure TRequestController.SetPINGPassword(const Value: string);
begin
  if RequestRecord.PINGPassword <> Value then
  begin
    RequestRecord.PINGPassword := Value;
    Notify('PINGPassword');
  end;
end;

procedure TRequestController.SetPINGPasswordBase64(const Value: string);
begin
  if RequestRecord.PINGPasswordSHA <> Value then
  begin
    RequestRecord.PingPasswordBase64 := Value;
    Notify('PingPasswordBase64');
  end;
end;

procedure TRequestController.SetPINGPasswordSHA(const Value: string);
begin
  if RequestRecord.PINGPasswordSHA <> Value then
  begin
    RequestRecord.PINGPasswordSHA := Value;
    Notify('PINGPasswordSHA');
  end;
end;

procedure TRequestController.SetPINGUser(const Value: string);
begin
  if RequestRecord.PINGUser <> Value then
  begin
    RequestRecord.PINGUser := Value;
    Notify('PINGUser');
  end;
end;

procedure TRequestController.SetProdnomeMicroservizio(const Value: string);
begin
  ProdRequest.nomeMicroservizio := Value;
end;

procedure TRequestController.SetProdPassword(const Value: string);
begin
  ProdRequest.Password := Value;
end;

procedure TRequestController.SetProdReqTemplate(const Value: string);
begin
  FTemplates.ProdReqTemplate := Value;
end;

procedure TRequestController.SetProdTemplate(const Value: string);
begin
  FTemplates.ProdTemplate := Value;
end;

procedure TRequestController.SetProdUserName(const Value: string);
begin
  ProdRequest.UserName := Value;
end;

procedure TRequestController.SetTestnomeMicroservizio(const Value: string);
begin
  TestRequest.nomeMicroservizio := Value;
end;

procedure TRequestController.SetTestPassword(const Value: string);
begin
  TestRequest.Password := Value;
end;

procedure TRequestController.SetTestReqTemplate(const Value: string);
begin
  FTemplates.TestReqTemplate := Value;
end;

procedure TRequestController.SetTestTemplate(const Value: string);
begin
  FTemplates.TestTemplate := Value;
end;

procedure TRequestController.SetTestUserName(const Value: string);
begin
  TestRequest.UserName := Value;
end;

end.

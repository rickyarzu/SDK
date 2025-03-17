unit Janua.INPS.RedisRequest;

interface

uses System.IOUtils, System.SysUtils, System.Rtti, System.Classes,
  // Hash
  DECHashBase, DECFormatBase,
  // Janua
  Janua.Core.Json, Janua.Core.Classes;

type
  TACLTemplateRecord = record
  public
    AdminUser: string;
    AdminPassword: string;
    AdminPasswordSHA: string;
    AdminPasswordBase64: string;

    PINGPassword: string;
    PINGPasswordSHA: string;
    PINGUser: string;
    PingPasswordBase64: string;

  end;

  TTemplatesRecord = record
  public
    DevACL: TACLTemplateRecord;
    TestACL: TACLTemplateRecord;
    ProdACL: TACLTemplateRecord;

    DevACLTemplate: string;
    TestACLTemplate: string;
    ProdACLTemplate: string;

    DevReqTemplate: string;
    TestReqTemplate: string;
    ProdReqTemplate: string;
  end;

  TRequestRecord = record
  public
    UserName: string;
    Password: string;
    PasswordSHA256: string;
    PasswordBase64: string;
    nomeMicroservizio: string;
    maxMemoryPolicy: string;
    labelPartOf: string;
    areaFunzionale: string;
    labelOrganization: string;
    ACL: string;
    ACLBase64: string;
  end;

  TRequestControllerRecord = record
    DevRequest: TRequestRecord;
    TestRequest: TRequestRecord;
    ProdRequest: TRequestRecord;
    Templates: TTemplatesRecord;
    DevText: string;
    TestText: string;
    ProdText: string;
  end;

  TRedisRequest = class(TJanuaBindableObject)
  private
  public
  end;

  TRedisTemplateController = class(TJanuaBindablePersistent)
    constructor Create; override;
    destructor Destroy; override;
  private
    FTemplate: TACLTemplateRecord;
    FReqTemplate: string;
    FACLTemplate: string;
    FRequest: TStrings;
    FACLModel: TSTrings;
    procedure SetACLTemplate(const Value: string);
    procedure SetReqTemplate(const Value: string);
    function GetAdminPassword: string;
    function GetAdminPasswordBase64: string;
    function GetAdminPasswordSHA: string;
    function GetAdminUser: string;
    procedure SetACLModel(const Value: TSTrings);
    procedure SetAdminPassword(const Value: string);
    procedure SetAdminPasswordBase64(const Value: string);
    procedure SetAdminPasswordSHA(const Value: string);
    procedure SetAdminUser(const Value: string);
    procedure SetRequest(const Value: TStrings);
  protected
    function GetPINGPasswordBase64: string;
    procedure SetPINGPasswordBase64(const Value: string);
    procedure SetPINGPassword(const Value: string);
    procedure SetPINGPasswordSHA(const Value: string);
    procedure SetPINGUser(const Value: string);
    function GetPINGPassword: string;
    function GetPINGPasswordSHA: string;
    function GetPINGUser: string;
  published
    property PINGUser: string read GetPINGUser write SetPINGUser;
    property PINGPassword: string read GetPINGPassword write SetPINGPassword;
    property PINGPasswordSHA: string read GetPINGPasswordSHA write SetPINGPasswordSHA;
    property PingPasswordBase64: string read GetPINGPasswordBase64 write SetPINGPasswordBase64;

    property AdminUser: string read GetAdminUser write SetAdminUser;
    property AdminPassword: string read GetAdminPassword write SetAdminPassword;
    property AdminPasswordSHA: string read GetAdminPasswordSHA write SetAdminPasswordSHA;
    property AdminPasswordBase64: string read GetAdminPasswordBase64 write SetAdminPasswordBase64;

    property ACLModel: TSTrings read FACLModel write SetACLModel;
    property Request: TStrings read FRequest write SetRequest;
  public
    property ACLTemplate: string read FACLTemplate write SetACLTemplate;
    property ReqTemplate: string read FReqTemplate write SetReqTemplate;
  end;

  TRedisTemplatesController = class(TJanuaBindableObject)
  private
    FTemplates: TTemplatesRecord;
    FTemplatesFileName: TFileName;
    procedure SetTemplates(const Value: TTemplatesRecord);
    procedure SetTemplatesFileName(const Value: TFileName);
  public
    property Templates: TTemplatesRecord read FTemplates write SetTemplates;
  published
    property TemplatesFileName: TFileName read FTemplatesFileName write SetTemplatesFileName;
  end;

  TRequestController = class(TJanuaBindablePersistent)
    constructor Create; override;
    destructor Destroy; override;
  private
    RequestRecord: TRequestRecord;
    FRequest: TRequestRecord;
    FHeadFields: TStrings;
    FACLFields: TStrings;
    FTemplatesController: TRedisTemplateController;
    procedure SetACLFields(const Value: TStrings);
    procedure SetHeadFields(const Value: TStrings);
    procedure SetTemplatesController(const Value: TRedisTemplateController);
  protected
    procedure SetNomeMicroservizio(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetUserName(const Value: string);
  protected
    procedure SetareaFunzionale(const Value: string);
    procedure SetlabelOrganization(const Value: string);
    procedure SetlabelPartOf(const Value: string);
    procedure SetmaxMemoryPolicy(const Value: string);
    procedure SetnomeMicroservizio(const Value: string);
    function GetareaFunzionale: string;
    function GetlabelOrganization: string;
    function GetlabelPartOf: string;
    function GetmaxMemoryPolicy: string;
    function GetnomeMicroservizio: string;
  public
    function ElaborateTemplate(const aRecord: TRequestRecord; const aTemplate: string): string;
    property HeadFields: TStrings read FHeadFields write SetHeadFields;
    property ACLFields: TStrings read FACLFields write SetACLFields;
  published
    property nomeMicroservizio: string read GetnomeMicroservizio write SetNomeMicroservizio;
    property areaFunzionale: string read GetareaFunzionale write SetareaFunzionale;
    property labelOrganization: string read GetlabelOrganization write SetlabelOrganization;
    property labelPartOf: string read GetlabelPartOf write SetlabelPartOf;
    property maxMemoryPolicy: string read GetmaxMemoryPolicy write SetmaxMemoryPolicy;
    property UserName: string read FRequest.UserName write SetUserName;
    property Password: string read FRequest.Password write SetPassword;
  public
    property TemplatesController: TRedisTemplateController read FTemplatesController
      write SetTemplatesController;
  end;

implementation

{ TRequestController }

constructor TRequestController.Create;
var
  rtype: TRTTIType;
  fields: TArray<TRttiField>;
begin
  inherited;
  FHeadFields := TStringList.Create;
  FACLFields := TStringList.Create;

  rtype := TRTTIContext.Create.GetType(TypeInfo(TACLTemplateRecord));
  fields := rtype.GetFields;

  for var aField in fields do
    FHeadFields.Add('$$' + (aField.Name) + '$$');

  rtype := TRTTIContext.Create.GetType(TypeInfo(TRedisRequest));
  fields := rtype.GetFields;

  for var aField in fields do
    FACLFields.Add('$$' + (aField.Name) + '$$');

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

procedure TRequestController.SetPassword(const Value: string);
begin

end;

procedure TRequestController.SetTemplatesController(const Value: TRedisTemplateController);
begin
  FTemplatesController := Value;
end;

procedure TRequestController.SetUserName(const Value: string);
begin

end;

{ TRedisTemplateController }

constructor TRedisTemplateController.Create;
begin
  inherited;

end;

destructor TRedisTemplateController.Destroy;
begin

  inherited;
end;

procedure TRedisTemplateController.SetPINGPasswordBase64(const Value: string);
begin
  if FTemplate.PINGPasswordSHA <> Value then
  begin
    FTemplate.PingPasswordBase64 := Value;
    Notify('PingPasswordBase64');
  end;
end;

function TRedisTemplateController.GetPINGPasswordBase64: string;
begin
  Result := FTemplate.PingPasswordBase64
end;

function TRedisTemplateController.GetAdminPassword: string;
begin
  Result := FTemplate.AdminPassword
end;

function TRedisTemplateController.GetAdminPasswordBase64: string;
begin
  Result := FTemplate.AdminPasswordBase64
end;

function TRedisTemplateController.GetAdminPasswordSHA: string;
begin
  Result := FTemplate.AdminPasswordSHA
end;

function TRedisTemplateController.GetAdminUser: string;
begin
  Result := FTemplate.AdminUser
end;

function TRedisTemplateController.GetPINGPassword: string;
begin
  Result := FTemplate.PINGPassword
end;

function TRedisTemplateController.GetPINGPasswordSHA: string;
begin
  Result := FTemplate.PINGPasswordSHA
end;

function TRedisTemplateController.GetPINGUser: string;
begin
  Result := FTemplate.PINGUser
end;

procedure TRedisTemplateController.SetACLModel(const Value: TSTrings);
begin
  FACLModel := Value;
end;

procedure TRedisTemplateController.SetACLTemplate(const Value: string);
begin
  FACLTemplate := Value;
end;

procedure TRedisTemplateController.SetAdminPassword(const Value: string);
begin

end;

procedure TRedisTemplateController.SetAdminPasswordBase64(const Value: string);
begin

end;

procedure TRedisTemplateController.SetAdminPasswordSHA(const Value: string);
begin

end;

procedure TRedisTemplateController.SetAdminUser(const Value: string);
begin

end;

procedure TRedisTemplateController.SetPINGPassword(const Value: string);
begin
  if FTemplate.PINGPassword <> Value then
  begin
    FTemplate.PINGPassword := Value;
    Notify('PINGPassword');
  end;
end;

procedure TRedisTemplateController.SetPINGPasswordSHA(const Value: string);
begin
  if FTemplate.PINGPasswordSHA <> Value then
  begin
    FTemplate.PINGPasswordSHA := Value;
    Notify('PINGPasswordSHA');
  end;
end;

procedure TRedisTemplateController.SetPINGUser(const Value: string);
begin
  if FTemplate.PINGUser <> Value then
  begin
    FTemplate.PINGUser := Value;
    Notify('PINGUser');
  end;
end;

procedure TRedisTemplateController.SetReqTemplate(const Value: string);
begin

end;

procedure TRedisTemplateController.SetRequest(const Value: TStrings);
begin
  FRequest := Value;
end;

{ TRedisTemplatesController }

procedure TRedisTemplatesController.SetTemplates(const Value: TTemplatesRecord);
begin
  FTemplates := Value;
end;

procedure TRedisTemplatesController.SetTemplatesFileName(const Value: TFileName);
begin
  FTemplatesFileName := Value;
end;

end.

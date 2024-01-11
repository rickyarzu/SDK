unit Janua.System.Settings.Model.Impl;

interface

uses System.SysUtils, Spring.Collections, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Core.DB.Intf,
  Janua.System.Settings.ViewModel.Intf, Janua.Controls.Forms.Intf, JOrm.System.Settings.Intf,
  Janua.ViewModels.Intf, Janua.Core.Classes;

type

  TJanuaSettingModelTemplate = class(TJanuaInterfacedBindableObject, IJanuaSettingModel, IJanuaInterface)
  strict private
    FDisplayName: string;
    FIconID: integer;
    FSection: string;
    FMasterSettings: IJanuaSettingsModel;
    FSettings: ISetting;
    FFrameIntf: TGUID;
  strict protected
    function GetDisplayName: string;
    function GetIconID: integer;
    function GetSection: string;
    function GetMasterSettings: IJanuaSettingsModel;
    procedure SetMasterSettings(const Value: IJanuaSettingsModel);
    function GetSettings: ISetting;
    function GetFrameIntf: TGUID;
    function GetState: TJanuaModelState;
  protected
    procedure SetItems(Index: String; const Value: IJanuaField);
    function GetItems(Index: String): IJanuaField;
  public
    /// <summary> saves all modified Settings locally or remotely </summary>
    procedure Save(const aStore: boolean = False);
    /// <summary>Invoked by the Creator (or just the Owner) to read Settings from local file or DB </summary>
    procedure LoadSettings(aSettings: ISetting);
  public
    property IconID: integer read GetIconID;
    property DisplayName: string read GetDisplayName;
    property MasterSettings: IJanuaSettingsModel read GetMasterSettings write SetMasterSettings;
    property Section: string read GetSection;
    property Settings: ISetting read GetSettings;
    /// <summary>Gets a Field according to its Key Value (an uppercase string) </summary>
    property Items[Index: String]: IJanuaField read GetItems write SetItems; default;
    /// <summary>This property is used to connect a Setting Section (App) to its Frame using an Intf</summary>
    property FrameIntf: TGUID read GetFrameIntf;
    /// <summary> Default when Created Empty, New when inserted, Saved after posting and Modified when edited </summary>
    property State: TJanuaModelState read GetState;
  end;

  TJanuaSettingsModelTemplate = class(TJanuaInterfacedBindableObject, IJanuaSettingsModel, IJanuaInterface)
  strict private
    FModels: IList<IJanuaSettingModel>;
  protected
    function GetSettings: IList<IJanuaSettingModel>;
    function GetModels: IList<IJanuaSettingModel>;
  public
    property Models: IList<IJanuaSettingModel> read GetModels;
  public // public procedures
    constructor Create; override;
    /// <summary> Adds a 'Setting Model' to the List. Catching it from the 'enabled' features </summary>
    procedure AddModel(const aModel: IJanuaSettingModel); overload;
    /// <summary> Having registered a List of Models/ViewModels we can handle a List in a DB </summary>
    procedure AddModel(const aModelGUID: TGUID); overload;
    /// <summary> saves all modified Settings locally or remotely </summary>
    procedure SaveSettings;
    /// <summary>Invoked by the Creator (or just the Owner) to read Settings from local file or DB </summary>
    procedure LoadSettings(aSettings: ISettings);
    /// <summary> Stores a Setting from a Model </summary>
    procedure SaveSetting(const aModel: IJanuaSettingModel);
  end;

  /// <summary>  Implementation Class for Local Setting </summary>
  /// <remarks>Should Support ILocalSetting and ISetting Interfaces </remarks>
  TJanuaLocalSetting = class(TJanuaSettingModelTemplate)

  end;

  /// <summary>  Implementation Class for Local Setting </summary>
  /// <remarks>Should Support ILocalSetting and ISetting Interfaces </remarks>
  TJanuaLocalSettings = class(TJanuaSettingsModelTemplate)

  end;

implementation

{ TJanuaSettingModelTemplate }

function TJanuaSettingModelTemplate.GetDisplayName: string;
begin
  Result := FDisplayName
end;

function TJanuaSettingModelTemplate.GetIconID: integer;
begin
  Result := FIconID
end;

function TJanuaSettingModelTemplate.GetItems(Index: String): IJanuaField;
var
  bFound: boolean;
begin
  bFound := False;
  if FSettings.RecordCount > 0 then
  begin
    FSettings.KeyValues.First;
    while not(FSettings.KeyValues.eof or bFound) do
      bFound := FSettings.KeyValues.Key.AsString.ToLower = Index.ToLower;
  end;
end;

function TJanuaSettingModelTemplate.GetMasterSettings: IJanuaSettingsModel;
begin
  Result := FMasterSettings
end;

function TJanuaSettingModelTemplate.GetSection: string;
begin
  Result := FSection
end;

function TJanuaSettingModelTemplate.GetFrameIntf: TGUID;
begin
  Result := FFrameIntf;
end;

function TJanuaSettingModelTemplate.GetSettings: ISetting;
begin
  Result := FSettings;
end;

function TJanuaSettingModelTemplate.GetState: TJanuaModelState;
begin

end;

procedure TJanuaSettingModelTemplate.LoadSettings(aSettings: ISetting);
begin
  FSettings.Assign(aSettings);
end;

procedure TJanuaSettingModelTemplate.Save(const aStore: boolean = False);
begin
  if Assigned(FSettings) then
    FMasterSettings.SaveSetting(Self as IJanuaSettingModel);
end;

procedure TJanuaSettingModelTemplate.SetItems(Index: String; const Value: IJanuaField);
begin

end;

procedure TJanuaSettingModelTemplate.SetMasterSettings(const Value: IJanuaSettingsModel);
begin
  FMasterSettings := Value;
end;

{ TJanuaSettingsModelTemplate }

procedure TJanuaSettingsModelTemplate.AddModel(const aModel: IJanuaSettingModel);

begin

end;

procedure TJanuaSettingsModelTemplate.AddModel(const aModelGUID: TGUID);

begin

end;

constructor TJanuaSettingsModelTemplate.Create;
begin
  inherited;

end;

function TJanuaSettingsModelTemplate.GetModels: IList<IJanuaSettingModel>;
begin

end;

function TJanuaSettingsModelTemplate.GetSettings: IList<IJanuaSettingModel>;
begin

end;

procedure TJanuaSettingsModelTemplate.LoadSettings(aSettings: ISettings);
begin

end;

procedure TJanuaSettingsModelTemplate.SaveSetting(const aModel: IJanuaSettingModel);
begin

end;

procedure TJanuaSettingsModelTemplate.SaveSettings;
var
  LModel: IJanuaSettingModel;
begin
  for LModel in FModels do
    if LModel.State in [jmsEdit, jmsInsert] then
      LModel.Save;

end;

end.

unit JOrm.Cms.Arguments.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Cms.Arguments.Intf, Janua.Orm.Types;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TArgument = class(TJanuaRecord, IArgument)
  private
    FMainArgumentId: IJanuaField;
    FMainArgumentIdIndex: Integer;
    FArgumentId: IJanuaField;
    FArgumentIdIndex: Integer;
    FArgumentDes: IJanuaField;
    FArgumentDesIndex: Integer;
    FCode: IJanuaField;
    FCodeIndex: Integer;
    FPos: IJanuaField;
    FPosIndex: Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex: Integer;
    FLeagueId: IJanuaField;
    FLeagueIdIndex: Integer;
    FUrl: IJanuaField;
    FICon: IJanuaField;
    FUrlIndex: Integer;
    FIconIndex: Integer;
    FSelected: IJanuaField;
    FSelectedIndex: Integer;
  private
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    function GetArgument_des: IJanuaField;
    procedure SetArgument_des(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    function GetIcon: IJanuaField;
    procedure SetIcon(const Value: IJanuaField);
    function GetUrl: IJanuaField;
    procedure SetUrl(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetSelected: IJanuaField;
    procedure SetSelected(const Value: IJanuaField);
  protected
    procedure CalcFields(Sender: TObject);
  public
    constructor Create; override;
    /// <summary>
    /// CalcUrl Generates the Link url to an argument for an Html List or Menu
    /// it points to its main Arguments, its ID and footaball league page (if set) ;
    /// <summary>
    function CalcUrl: string;
  public
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    property Argument_des: IJanuaField read GetArgument_des write SetArgument_des;
    property Code: IJanuaField read GetCode write SetCode;
    property Pos: IJanuaField read GetPos write SetPos;
    property Url: IJanuaField read GetUrl write SetUrl;
    property Icon: IJanuaField read GetIcon write SetIcon;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property Selected: IJanuaField read GetSelected write SetSelected;
  end;

  TArguments = class(TJanuaRecordSet, IJanuaRecordSet, IArguments)
  private
    FMain_argument_id: Integer;
    FArgument_id: Integer;
    FArgument_des: Integer;
    FCode: Integer;
    FPos: Integer;
  private
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    function GetArgument_des: IJanuaField;
    procedure SetArgument_des(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    function GetArgument: IArgument;
    procedure SetArgument(const Value: IArgument);
    function GetIcon: IJanuaField;
    procedure SetIcon(const Value: IJanuaField);
    function GetUrl: IJanuaField;
    procedure SetUrl(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
  public
    constructor Create; override;
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    property Argument_des: IJanuaField read GetArgument_des write SetArgument_des;
    property Code: IJanuaField read GetCode write SetCode;
    property Pos: IJanuaField read GetPos write SetPos;
    property Argument: IArgument read GetArgument write SetArgument;
    property Url: IJanuaField read GetUrl write SetUrl;
    property Icon: IJanuaField read GetIcon write SetIcon;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
  end;

  TArgumentsFactory = class
    class function CreateRecord(const aKey: string): IArgument; overload;
    class function CreateRecordset(aName, aTableName: string): IJanuaRecordSet; overload;
  end;

implementation

uses System.SysUtils, System.StrUtils;

// ------------------------------------------ Impl TArguments -------------------------------

{ TArguments }
procedure TArgument.CalcFields(Sender: TObject);
begin
  self.Icon.AsString := 'fa fa-soccer-ball-o';
  self.Url.AsString := self.CalcUrl;
end;

function TArgument.CalcUrl: string;
begin
  Result := '?page=category' + IfThen(FMainArgumentId.AsInteger > 0, '&main=' + FMainArgumentId.AsString, '') +
    IfThen(FArgumentId.AsInteger > 0, '&arg=' + FArgumentId.AsString, '') + IfThen(FLeagueId.AsInteger > 0,
    '&league_id=' + FLeagueId.AsString, '');
end;

(*
  constructor TArgument.Create(const aName: string; const aEntity: TJanuaEntity = None);
  begin
  Create;
  Name := aName;
  end;
*)

constructor TArgument.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.CmsArguments);
  FPrefix := 'carg';
  FMainArgumentId := TJanuaOrmFactory.CreateSmallintField('main_argument_id', 'main_argument_id');
  FMainArgumentIdIndex := AddField(FMainArgumentId);
  FArgumentId := TJanuaOrmFactory.CreateSmallintField('argument_id', 'argument_id');
  FArgumentIdIndex := AddField(FArgumentId);
  FArgumentDes := TJanuaOrmFactory.CreateStringField('argument_des', 'argument_des');
  FArgumentDesIndex := AddField(FArgumentDes);
  FCode := TJanuaOrmFactory.CreateStringField('code', 'code');
  FCodeIndex := AddField(FCode);
  FPos := TJanuaOrmFactory.CreateSmallintField('pos', 'pos');
  FPosIndex := AddField(FPos);
  FDbSchemaId := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
  FDbSchemaIdIndex := AddField(FDbSchemaId);
  FLeagueId := TJanuaOrmFactory.CreateSmallintField('league_id', 'league_id');
  FLeagueIdIndex := AddField(FLeagueId);
  FUrl := TJanuaOrmFactory.CreateStringField('url', 'url');
  FUrlIndex := AddField(FUrl);
  self.Url.Calculated := True;
  FICon := TJanuaOrmFactory.CreateStringField('icon', 'icon');
  FIconIndex := AddField(FICon);
  self.Icon.Calculated := True;

  self.FSelected := TJanuaOrmFactory.CreateBoolField('selected', 'selected');
  self.FSelectedIndex := AddField(FSelected);

  self.OnCalcFields := self.CalcFields;
  self.FOnChangeActive := True;

end;

function TArgument.GetMain_argument_id: IJanuaField;
begin
  Result := FMainArgumentId;
end;

procedure TArgument.SetMain_argument_id(const Value: IJanuaField);
begin
  FMainArgumentId := Value;
end;

function TArgument.GetArgument_id: IJanuaField;
begin
  Result := FArgumentId;
end;

procedure TArgument.SetArgument_id(const Value: IJanuaField);
begin
  FArgumentId := Value;
end;

function TArgument.GetArgument_des: IJanuaField;
begin
  Result := FArgumentDes;
end;

procedure TArgument.SetArgument_des(const Value: IJanuaField);
begin
  FArgumentDes := Value;
end;

function TArgument.GetCode: IJanuaField;
begin
  Result := FCode;
end;

function TArgument.GetIcon: IJanuaField;
begin
  Result := FICon;
end;

function TArgument.GetLeagueId: IJanuaField;
begin
  Result := self.FLeagueId
end;

procedure TArgument.SetCode(const Value: IJanuaField);
begin
  FCode := Value;
end;

procedure TArgument.SetIcon(const Value: IJanuaField);
begin
  FICon := Value;
end;

procedure TArgument.SetLeagueId(const Value: IJanuaField);
begin
  self.FLeagueId := Value;
end;

function TArgument.GetPos: IJanuaField;
begin
  Result := FPos;
end;

function TArgument.GetSelected: IJanuaField;
begin
  Result := self.FSelected
end;

function TArgument.GetUrl: IJanuaField;
begin
  Result := FUrl;
end;

procedure TArgument.SetPos(const Value: IJanuaField);
begin
  FPos := Value;
end;

procedure TArgument.SetSelected(const Value: IJanuaField);
begin
  self.FSelected := Value
end;

procedure TArgument.SetUrl(const Value: IJanuaField);
begin
  FUrl := Value;
end;

{ TArgumentss }
constructor TArguments.Create;
begin
  inherited;
  self.FRecord := TArgumentsFactory.CreateRecord('Arguments')
end;

function TArguments.GetMain_argument_id: IJanuaField;
begin
  Result := self.Argument.Main_argument_id;
end;

procedure TArguments.SetMain_argument_id(const Value: IJanuaField);
begin
  self.Argument.Main_argument_id := Value;
end;

function TArguments.GetArgument_id: IJanuaField;
begin
  Result := self.Argument.Argument_id;
end;

procedure TArguments.SetArgument_id(const Value: IJanuaField);
begin
  self.Argument.Argument_id := Value;
end;

function TArguments.GetArgument_des: IJanuaField;
begin
  Result := self.Argument.Argument_des;
end;

procedure TArguments.SetArgument_des(const Value: IJanuaField);
begin
  self.Argument.Argument_des := Value;
end;

function TArguments.GetCode: IJanuaField;
begin
  Result := self.Argument.Code;
end;

function TArguments.GetIcon: IJanuaField;
begin
  Result := self.Argument.Icon
end;

function TArguments.GetLeagueId: IJanuaField;
begin
  Result := self.Argument.LeagueId
end;

procedure TArguments.SetCode(const Value: IJanuaField);
begin
  self.Argument.Code := Value;
end;

procedure TArguments.SetIcon(const Value: IJanuaField);
begin
  self.Argument.Icon := Value
end;

procedure TArguments.SetLeagueId(const Value: IJanuaField);
begin
  self.Argument.LeagueId := Value
end;

function TArguments.GetPos: IJanuaField;
begin
  Result := self.Argument.Pos;
end;

function TArguments.GetUrl: IJanuaField;
begin
  Result := self.Argument.Url
end;

procedure TArguments.SetPos(const Value: IJanuaField);
begin
  self.Argument.Pos := Value;
end;

procedure TArguments.SetUrl(const Value: IJanuaField);
begin
  self.Argument.Url := Value
end;

function TArguments.GetArgument: IArgument;
begin
  Result := self.FRecord as IArgument;
end;

procedure TArguments.SetArgument(const Value: IArgument);
begin
  self.FRecord := Value;
end;

{ TArgumentsFactory }

class function TArgumentsFactory.CreateRecord(const aKey: string): IArgument;
begin
  Result := TArgument.Create('argument');
end;

class function TArgumentsFactory.CreateRecordset(aName, aTableName: string): IJanuaRecordSet;
begin
  Result := TArguments.Create(aName, nil, nil);
end;

end.

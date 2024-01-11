unit JOrm.Cms.MainArguments.Impl;

interface

uses JOrm.Cms.Arguments.Intf, Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Cms.MainArguments.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TMainArgument = class(TJanuaRecord, IJanuaRecord, IMainArgument)
  private
    FSelected: IJanuaField;
    FMain_argument_id: IJanuaField;
    FMain_argument_des: IJanuaField;
    FPos: IJanuaField;
    FArgumentsIndex: Integer;
    FArguments: IArguments; // indice della sotto-tabella Arguments (solitamente indice = 0) per 1 subset
    // Campo Calcolato url dipende dai Campi FMainArgumentID
    FUrl: IJanuaField;
    FIconField: IJanuaField; // Campo Calcolato (per ora).
  private
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    function GetMain_argument_des: IJanuaField;
    procedure SetMain_argument_des(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    function GetSelected: IJanuaField;
    procedure SetSelected(const Value: IJanuaField);
    // sub-dataset
    function GetArguments: IArguments;
    procedure SetArguments(const Value: IArguments);
    // Calc Fields
    function GetUrl: IJanuaField;
    procedure setUrl(const Value: IJanuaField);
    function GetIcon: IJanuaField;
    procedure setIcon(const Value: IJanuaField);
    function CalcUrl: string;
  protected
    procedure CalcFields(Sender: TObject);
  public
    property Selected: IJanuaField read GetSelected write SetSelected;
    constructor Create; override;
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    property Main_argument_des: IJanuaField read GetMain_argument_des write SetMain_argument_des;
    property Pos: IJanuaField read GetPos write SetPos;
    // sub Dataset
    property Arguments: IArguments read GetArguments write SetArguments;
  end;

  TMainArguments = class(TJanuaRecordSet, IJanuaRecordSet, IMainArguments)
  private
    FMain_argument_id: Integer;
    FMain_argument_des: Integer;
  private
    function GetMain_argument_id: IJanuaField;
    procedure SetMain_argument_id(const Value: IJanuaField);
    function GetMain_argument_des: IJanuaField;
    procedure SetMain_argument_des(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    function GetMainArgument: IMainArgument;
    procedure SetMainArgument(const Value: IMainArgument);
    // Main Argument Impiegherebbe quindi un sub-Dataset che è poi arguments ....................................
    function GetArguments: IArguments;
    procedure SetArguments(const Value: IArguments);
    // Calc Fields
    function GetUrl: IJanuaField;
    procedure setUrl(const Value: IJanuaField);
    function GetIcon: IJanuaField;
    procedure setIcon(const Value: IJanuaField);

  public
    constructor Create; override;
    property Main_argument_id: IJanuaField read GetMain_argument_id write SetMain_argument_id;
    property Main_argument_des: IJanuaField read GetMain_argument_des write SetMain_argument_des;
    property Pos: IJanuaField read GetPos write SetPos;
    property MainArgument: IMainArgument read GetMainArgument write SetMainArgument;
    property Arguments: IArguments read GetArguments write SetArguments;
  end;

  TMainArgumentsFactory = class
  public
    class function CreateRecord(const aKey: string): IMainArgument; overload;
    class function CreateRecordset(aName, aTableName: string): IJanuaRecordSet; overload;
    class function CreateRecordset(aName, aTableName: string; aLocal, aRemote: IJanuaRecordSetStorage)
      : IJanuaRecordSet; overload;
  end;

implementation

uses Janua.Orm.Types, System.StrUtils, JOrm.Cms.Arguments.Impl;

// ------------------------------------------ Impl TMainArgumens -------------------------------

{ TMainArgumens }

procedure TMainArgument.CalcFields(Sender: TObject);
begin
  self.FUrl.AsString := self.CalcUrl
end;

function TMainArgument.CalcUrl: string;
begin
  Result := '?main=' + self.FMain_argument_id.AsString;
  // Aggiungere la LeagueID al main Menu oltre che ai sub-menu.
  // + IfThen(FLeagueId.AsInteger > 0,  '&league_id=' + FLeagueId.AsString, '');
end;

constructor TMainArgument.Create;
var
  i: Integer;
begin
  inherited;
  SetEntity(TJanuaEntity.CmsMainArguments);
  FMain_argument_id := TJanuaOrmFactory.CreateSmallintField('main_argument_id', 'Main_argument_id');
  self.FItemIndex := AddField(FMain_argument_id);
  FMain_argument_des := TJanuaOrmFactory.CreateStringField('main_argument_des', 'Main_argument_des');
  FItemIndex := AddField(FMain_argument_des);
  FPos := TJanuaOrmFactory.CreateSmallintField('pos', 'Pos');
  FItemIndex := AddField(FPos);
  FUrl := TJanuaOrmFactory.CreateStringField('url', 'Url');
  FItemIndex := AddCalcField(FUrl);
  FIconField := TJanuaOrmFactory.CreateStringField('icon', 'Icon');
  FItemIndex := AddCalcField(FIconField);
  self.FSelected := TJanuaOrmFactory.CreateBoolField('selected', 'selected');
  // FSelectedIndex
  self.FItemIndex := AddField(FSelected);
  // creazione dle SubRecordSet con funzione AddRecordSet che in modo che abbiamo 1 sub-recordset ad indice 0
  FArguments := AddRecordSet(TArgumentsFactory.CreateRecordset('arguments', 'arguments')) as IArguments;
  FArguments.CurrentRecord.MasterRecord := self as IJanuaRecord;
  FArguments.CurrentRecord.AddMasterField(Main_argument_id, FArguments.Argument.Main_argument_id);

  // Attivazione del campo calcolato dell'URL.
  self.OnCalcFields := self.CalcFields;
  self.FOnChangeActive := True;
end;

function TMainArgument.GetMain_argument_id: IJanuaField;
begin
  Result := FMain_argument_id;
end;

procedure TMainArgument.SetMain_argument_id(const Value: IJanuaField);
begin
  FMain_argument_id := Value;
end;

function TMainArgument.GetArguments: IArguments;
begin
  Result := FArguments
end;

function TMainArgument.GetIcon: IJanuaField;
begin
  Result := self.FIconField
end;

function TMainArgument.GetMain_argument_des: IJanuaField;
begin
  Result := FMain_argument_des;
end;

procedure TMainArgument.SetArguments(const Value: IArguments);
begin
  FArguments := Value
end;

procedure TMainArgument.setIcon(const Value: IJanuaField);
begin

end;

procedure TMainArgument.SetMain_argument_des(const Value: IJanuaField);
begin
  FMain_argument_des := Value;
end;

function TMainArgument.GetPos: IJanuaField;
begin
  Result := FPos;
end;

function TMainArgument.GetSelected: IJanuaField;
begin
  Result := self.FSelected
end;

function TMainArgument.GetUrl: IJanuaField;
begin
  Result := self.FUrl
end;

procedure TMainArgument.SetPos(const Value: IJanuaField);
begin
  FPos := Value;
end;

procedure TMainArgument.SetSelected(const Value: IJanuaField);
begin
  self.FSelected := Value;
end;

procedure TMainArgument.setUrl(const Value: IJanuaField);
begin
  FUrl := Value
end;

{ TMainArguments }
constructor TMainArguments.Create;
begin
  inherited;
  self.FRecord := TMainArgumentsFactory.CreateRecord('MainArgument');
end;

function TMainArguments.GetMain_argument_id: IJanuaField;
begin
  Result := self.MainArgument.Main_argument_id;
end;

procedure TMainArguments.SetMain_argument_id(const Value: IJanuaField);
begin
  self.MainArgument.Main_argument_id := Value;
end;

function TMainArguments.GetMain_argument_des: IJanuaField;
begin
  Result := self.MainArgument.Main_argument_des;
end;

procedure TMainArguments.SetMain_argument_des(const Value: IJanuaField);
begin
  self.MainArgument.Main_argument_des := Value;
end;

function TMainArguments.GetPos: IJanuaField;
begin
  Result := self.MainArgument.Pos;
end;

function TMainArguments.GetUrl: IJanuaField;
begin
  Result := self.MainArgument.Url
end;

procedure TMainArguments.SetPos(const Value: IJanuaField);
begin
  self.MainArgument.Pos := Value;
end;

procedure TMainArguments.setUrl(const Value: IJanuaField);
begin
  self.MainArgument.Url := Value
end;

function TMainArguments.GetArguments: IArguments;
begin
  Result := (FRecord as IMainArgument).Arguments
end;

function TMainArguments.GetIcon: IJanuaField;
begin
  Result := self.MainArgument.Icon
end;

function TMainArguments.GetMainArgument: IMainArgument;
begin
  Result := self.FRecord as IMainArgument;
end;

procedure TMainArguments.SetArguments(const Value: IArguments);
begin
  (FRecord as IMainArgument).Arguments := Value
end;

procedure TMainArguments.setIcon(const Value: IJanuaField);
begin
  self.MainArgument.Icon := Value
end;

procedure TMainArguments.SetMainArgument(const Value: IMainArgument);
begin
  self.FRecord := Value;
end;

{ TMainArgumentFactory }

class function TMainArgumentsFactory.CreateRecord(const aKey: string): IMainArgument;
begin
  Result := TMainArgument.Create;
end;

class function TMainArgumentsFactory.CreateRecordset(aName, aTableName: string): IJanuaRecordSet;
begin
  Result := TMainArguments.Create(aName, nil, nil);
end;

class function TMainArgumentsFactory.CreateRecordset(aName, aTableName: string; aLocal, aRemote: IJanuaRecordSetStorage)
  : IJanuaRecordSet;
begin
  Result := TMainArguments.Create(aName, aLocal, aRemote);
end;

end.

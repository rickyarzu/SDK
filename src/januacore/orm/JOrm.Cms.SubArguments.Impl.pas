unit JOrm.Cms.SubArguments.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Cms.SubArguments.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TSubArgument = class(TJanuaRecord, ISubArgument)
  private
    FArgument_id: Integer;
    FSub_argument_id: Integer;
    FSub_argument_des: Integer;
  private
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    function GetSub_argument_des: IJanuaField;
    procedure SetSub_argument_des(const Value: IJanuaField);
  public
    constructor Create; override;
    // Constructor Create(const aName: string); overload; override;
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    property Sub_argument_des: IJanuaField read GetSub_argument_des write SetSub_argument_des;

  end;

  TSubArguments = class(TJanuaRecordSet, IJanuaRecordSet, ISubArguments)
  private
    function GetArgument_id: IJanuaField;
    procedure SetArgument_id(const Value: IJanuaField);
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    function GetSub_argument_des: IJanuaField;
    procedure SetSub_argument_des(const Value: IJanuaField);
    function GetSubArgument: ISubArgument;
    procedure SetSubArgument(const Value: ISubArgument);
  public
    constructor Create; override;
    property Argument_id: IJanuaField read GetArgument_id write SetArgument_id;
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    property Sub_argument_des: IJanuaField read GetSub_argument_des write SetSub_argument_des;
    property SubArgument: ISubArgument read GetSubArgument write SetSubArgument;
  end;

  TSubArgumentsFactory = class
    class function CreateRecord(const aKey: string): IJanuaRecord; overload;
    class function CreateRecordset(aName, aTableName: string): ISubArguments; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TSubArguments -------------------------------

{ TSubArguments }
(*
  constructor TSubArgument.Create(const aName: string);
  begin
  Create;
  self.Name := aName;
  end;
*)

constructor TSubArgument.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.CmsSubArguments);
  FArgument_id := AddField(TJanuaOrmFactory.CreateSmallintField('argument_id', 'Argument_id'));
  FSub_argument_id := AddField(TJanuaOrmFactory.CreateSmallintField('sub_argument_id', 'Sub_argument_id'));
  FSub_argument_des := AddField(TJanuaOrmFactory.CreateStringField('sub_argument_des', 'Sub_argument_des'));
end;

function TSubArgument.GetArgument_id: IJanuaField;
begin
  Result := self.Fields[FArgument_id];
end;

procedure TSubArgument.SetArgument_id(const Value: IJanuaField);
begin
  self.Fields[FArgument_id] := Value;
end;

function TSubArgument.GetSub_argument_id: IJanuaField;
begin
  Result := self.Fields[FSub_argument_id];
end;

procedure TSubArgument.SetSub_argument_id(const Value: IJanuaField);
begin
  self.Fields[FSub_argument_id] := Value;
end;

function TSubArgument.GetSub_argument_des: IJanuaField;
begin
  Result := self.Fields[FSub_argument_des];
end;

procedure TSubArgument.SetSub_argument_des(const Value: IJanuaField);
begin
  self.Fields[FSub_argument_des] := Value;
end;

{ TSubArgumentss }
constructor TSubArguments.Create;
begin
  inherited;
  self.FRecord := TSubArgumentsFactory.CreateRecord('SubArguments')
end;

function TSubArguments.GetArgument_id: IJanuaField;
begin
  Result := self.SubArgument.Argument_id;
end;

procedure TSubArguments.SetArgument_id(const Value: IJanuaField);
begin
  self.SubArgument.Argument_id := Value;
end;

function TSubArguments.GetSub_argument_id: IJanuaField;
begin
  Result := self.SubArgument.Sub_argument_id;
end;

procedure TSubArguments.SetSub_argument_id(const Value: IJanuaField);
begin
  self.SubArgument.Sub_argument_id := Value;
end;

function TSubArguments.GetSub_argument_des: IJanuaField;
begin
  Result := self.SubArgument.Sub_argument_des;
end;

procedure TSubArguments.SetSub_argument_des(const Value: IJanuaField);
begin
  self.SubArgument.Sub_argument_des := Value;
end;

function TSubArguments.GetSubArgument: ISubArgument;
begin
  Result := self.FRecord as ISubArgument;
end;

procedure TSubArguments.SetSubArgument(const Value: ISubArgument);
begin
  self.FRecord := Value;
end;

{ TSubArgumentsFactory }

class function TSubArgumentsFactory.CreateRecord(const aKey: string): IJanuaRecord;
begin
  Result := TSubArgument.Create;
end;

class function TSubArgumentsFactory.CreateRecordset(aName, aTableName: string): ISubArguments;
begin
  Result := TSubArguments.Create(aName, nil, nil);
end;

end.

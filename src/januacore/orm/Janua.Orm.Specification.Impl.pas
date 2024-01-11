unit Janua.Orm.Specification.Impl;

interface

uses Janua.Orm.Types, Janua.Orm.Intf, Janua.Orm.Impl, Janua.Orm.Specifications.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TSpecification = class(TJanuaRecord, ISpecification)
  private
    FSpecification_id: Integer;
    FSub_argument_id: Integer;
    FSpecification_des: Integer;
  private
    function GetSpecification_id: IJanuaField;
    procedure SetSpecification_id(const Value: IJanuaField);
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    function GetSpecification_des: IJanuaField;
    procedure SetSpecification_des(const Value: IJanuaField);
  public
    constructor Create; override;
    Constructor Create(const aName: string); overload; override;
    property Specification_id: IJanuaField read GetSpecification_id write SetSpecification_id;
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    property Specification_des: IJanuaField read GetSpecification_des write SetSpecification_des;

  end;

  TSpecifications = class(TJanuaRecordSet, IJanuaRecordSet, ISpecifications)
  private
    FSpecification_id: Integer;
    FSub_argument_id: Integer;
    FSpecification_des: Integer;
  private
    function GetSpecification_id: IJanuaField;
    procedure SetSpecification_id(const Value: IJanuaField);
    function GetSub_argument_id: IJanuaField;
    procedure SetSub_argument_id(const Value: IJanuaField);
    function GetSpecification_des: IJanuaField;
    procedure SetSpecification_des(const Value: IJanuaField);
    function GetSpecification: ISpecification;
    procedure SetSpecification(const Value: ISpecification);
  public
    constructor Create; override;
    Constructor Create(aName, aTableName: string); overload;
    Constructor Create(const aName: string; aRecord: IJanuaRecord); overload;
    property Specification_id: IJanuaField read GetSpecification_id write SetSpecification_id;
    property Sub_argument_id: IJanuaField read GetSub_argument_id write SetSub_argument_id;
    property Specification_des: IJanuaField read GetSpecification_des write SetSpecification_des;
    property Specification: ISpecification read GetSpecification write SetSpecification;
  end;

  TSpecificationFactory = class
    class function CreateRecord(const aKey: string): ISpecification; overload;
    class function CreateRecordset(aName, aTableName: string): ISpecifications; overload;
  end;

implementation

// ------------------------------------------ Impl TSpecification -------------------------------

{ TSpecification }
constructor TSpecification.Create(const aName: string);
begin
  Create;
  self.Name := aName;
end;

constructor TSpecification.Create;
begin

  FSpecification_id := AddField(TJanuaOrmFactory.CreateSmallintField('specification_id', 'Specification_id'));
  FSub_argument_id := AddField(TJanuaOrmFactory.CreateSmallintField('sub_argument_id', 'Sub_argument_id'));
  FSpecification_des := AddField(TJanuaOrmFactory.CreateStringField('specification_des', 'Specification_des'));
end;

function TSpecification.GetSpecification_id: IJanuaField;
begin
  Result := self.Fields[FSpecification_id];
end;

procedure TSpecification.SetSpecification_id(const Value: IJanuaField);
begin
  self.Fields[FSpecification_id] := Value;
end;

function TSpecification.GetSub_argument_id: IJanuaField;
begin
  Result := self.Fields[FSub_argument_id];
end;

procedure TSpecification.SetSub_argument_id(const Value: IJanuaField);
begin
  self.Fields[FSub_argument_id] := Value;
end;

function TSpecification.GetSpecification_des: IJanuaField;
begin
  Result := self.Fields[FSpecification_des];
end;

procedure TSpecification.SetSpecification_des(const Value: IJanuaField);
begin
  self.Fields[FSpecification_des] := Value;
end;

{ TSpecifications }
constructor TSpecifications.Create;
begin
  inherited;
end;

constructor TSpecifications.Create(const aName: string; aRecord: IJanuaRecord);
begin
  Create;
  self.FRecord := aRecord;
end;

constructor TSpecifications.Create(aName, aTableName: string);
begin
  Create;
  self.Create(aName, TSpecificationFactory.CreateRecord('Specification'));
end;

function TSpecifications.GetSpecification_id: IJanuaField;
begin
  Result := self.Specification.Specification_id;
end;

procedure TSpecifications.SetSpecification_id(const Value: IJanuaField);
begin
  self.Specification.Specification_id := Value;
end;

function TSpecifications.GetSub_argument_id: IJanuaField;
begin
  Result := self.Specification.Sub_argument_id;
end;

procedure TSpecifications.SetSub_argument_id(const Value: IJanuaField);
begin
  self.Specification.Sub_argument_id := Value;
end;

function TSpecifications.GetSpecification_des: IJanuaField;
begin
  Result := self.Specification.Specification_des;
end;

procedure TSpecifications.SetSpecification_des(const Value: IJanuaField);
begin
  self.Specification.Specification_des := Value;
end;

function TSpecifications.GetSpecification: ISpecification;
begin
  Result := self.FRecord as ISpecification;
end;

procedure TSpecifications.SetSpecification(const Value: ISpecification);
begin
  self.FRecord := Value;
end;

{ TSpecificationFactory }

class function TSpecificationFactory.CreateRecord(const aKey: string): ISpecification;
begin
  Result := TSpecification.Create;
end;

class function TSpecificationFactory.CreateRecordset(aName, aTableName: string): ISpecifications;
begin
  Result := TSpecifications.Create(aName, aTableName);
end;

end.

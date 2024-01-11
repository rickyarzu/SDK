unit JanuaDBRow;

interface

uses
  SysUtils, Classes, DB;

type
  TJanuaDBRow = class(TComponent)
  private
    FFieldCount: integer;
    { Private declarations }
  protected
    { Protected declarations }
    FDataset: TDataset;
    procedure SetDataset(const Value: TDataset);
    procedure SetFields; Virtual;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure DoAfterScroll(Dataset: TDataset); virtual; Abstract;
    procedure DoCalcFields(Dataset: TDataset); virtual; Abstract;
    procedure DoBeforePost(Dataset: TDataset); virtual; Abstract;
    procedure DoBeforeInsert(Dataset: TDataset); virtual; Abstract;
  published
    { Published declarations }
    procedure Search;  virtual; abstract;
    property Dataset: TDataset read FDataset write SetDataset;
    property FieldCount: integer read FFieldCount default 0;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaDBRow]);
end;

{ TJanuaDBRow }

constructor TJanuaDBRow.Create(AOwner: TComponent);
begin
  inherited;
  self.FFieldCount := 0;
end;

procedure TJanuaDBRow.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

procedure TJanuaDBRow.SetFields;
begin
  if Assigned (FDataset) then self.SetFields else self.FFieldCount := 0;
end;

end.

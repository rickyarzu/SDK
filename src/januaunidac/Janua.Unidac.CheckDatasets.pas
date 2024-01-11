unit Janua.Unidac.CheckDatasets;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes;

type
  TJanuaUnidacCheckDatasets = class(TJanuaCoreComponent)
  private
    FErrorList: TStringList;
    function GetErrorList: TStringList;
    procedure SetErrorList(const Value: TStringList);
    { Private declarations }
  protected
    { Protected declarations }
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: boolean; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property ErrorList: TStringList read GetErrorList write SetErrorList;
    { Published declarations }

  end;

procedure Register;

implementation

uses Janua.Uni.Intf, Uni, DBAccess, Janua.Uni.Framework;

procedure Register;
begin
  RegisterComponents('Janua System', [TJanuaUnidacCheckDatasets]);
end;

constructor TJanuaUnidacCheckDatasets.Create(AOwner: TComponent);
begin
  inherited;
  FErrorList := TStringList.Create;
end;

destructor TJanuaUnidacCheckDatasets.Destroy;
begin
  FErrorList.Free;
  inherited;
end;

function TJanuaUnidacCheckDatasets.GetErrorList: TStringList;
begin
  Result := FErrorList;
end;

{ TJanuaCoreComponent1 }

function TJanuaUnidacCheckDatasets.InternalActivate: boolean;
var
  I: integer;
begin
  for I := 0 to Owner.ComponentCount - 1 do
  begin
    if Owner.Components[I] is TUniQuery then
      try
        TUniFramework.PgDatasetFunctions.OpenDataset(Owner.Components[I] as TUniQuery);
      except
        on e: exception do
        begin
           FErrorList.Add(Owner.Components[I].Name);
           FErrorList.Add(e.Message);
        end;
      end;
  end;
  Result := True;
end;

procedure TJanuaUnidacCheckDatasets.SetErrorList(const Value: TStringList);
begin
  FErrorList := Value;
end;

end.

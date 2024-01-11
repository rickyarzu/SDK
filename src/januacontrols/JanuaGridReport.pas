unit JanuaGridReport;

interface

uses
  SysUtils, Classes, ufrmGridReport, DBGrids, CRGrid;

type
  TJanuaGridReport = class(TComponent)
  private
     frmGridReport: TGridReport;
     FGrid:TDBGrid;
     FCRGrid:TCRDBGrid;
    FRows: Integer;
    procedure SetRows(const Value: Integer);
    { Private declarations }
  strict private
    function GetGrid :  TDBGrid;
    function GetCRGrid : TCRDBGrid;

    { Protected declarations }
  public
    procedure Preview;
  published
    property Grid :  TDBGrid read FGrid write FGrid;
    property CRGrid : TCRDBGrid read FCRGrid write FCRGrid;
    property Rows: Integer read FRows;

  { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaGridReport]);
end;

procedure TJanuaGridReport.Preview;
begin
  try
    frmGridReport := TGridReport.Create(nil);
    if assigned(FCRGrid) then frmGridReport.Preview(FCRGrid)
       else if assigned(FGrid) then frmGridReport.Preview(FCRGrid);
         
  finally
    FreeAndNil(frmGridReport);
  end;
end;

procedure TJanuaGridReport.SetRows(const Value: Integer);
begin
  FRows := Value;
end;

function TJanuaGridReport.GetGrid:  TDBGrid;
begin
  Result := FGrid;
end;



function TJanuaGridReport.GetCRGrid: TCRDBGrid;
begin
  Result := FCRGrid;
end;


end.

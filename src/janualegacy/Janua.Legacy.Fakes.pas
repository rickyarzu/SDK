unit Janua.Legacy.Fakes;

interface

uses System.Classes, System.Variants;

type
  TFlexcelImport = class(TComponent)
  private
    { Private declarations }
    function GetCellValue(const r, c: integer): variant;
  public
    { Public declarations }
    property CellValue[const r, c: integer]: variant read GetCellValue;
  end;

implementation

{ TFlexcelImport }

function TFlexcelImport.GetCellValue(const r, c: integer): variant;
begin
  Result := System.Variants.Null
end;

end.

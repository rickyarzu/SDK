unit Janua.DBGrids.Intf;

{$mode objfpc}{$H+}

interface

uses
  Classes, Generics.Collections,  SysUtils;

type

  { IJanuaDBGrid }

  TJanuaColumns = TList<IJanuaGridColumn>;

  IJanuaDBGrid = interface
    function GetColumunCount: integer;
    procedure SetColumunCount(AValue: integer);

    property ColumunCount: integer read GetColumunCount write SetColumunCount;
    property Columuns: TJanuaColumns;
  end;

implementation



end.


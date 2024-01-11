// PivotGrid = Grids
unit GridsPivotGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, uniDBPivotGrid;

type
  TUniGridsPivotGrid = class(TUniFrame)
    UniDBPivotGrid1: TUniDBPivotGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



initialization
  RegisterClass(TUniGridsPivotGrid);
end.

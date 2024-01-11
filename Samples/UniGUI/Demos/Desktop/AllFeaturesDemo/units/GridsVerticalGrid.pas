// VerticalGrid = Grids
unit GridsVerticalGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniSpinEdit, uniPanel,
  uniDBNavigator, uniBasicGrid, uniDBGrid, uniDBVerticalGrid, uniGUIBaseClasses;

type
  TUniGridsVerticalGrid = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBVerticalGrid1: TUniDBVerticalGrid;
    UniDBNavigator1: TUniDBNavigator;
    UniHiddenPanel1: TUniHiddenPanel;
    UniSpinEdit1: TUniSpinEdit;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniGridsVerticalGrid);
end.

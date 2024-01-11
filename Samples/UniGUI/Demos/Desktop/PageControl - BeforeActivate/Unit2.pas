unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBNavigator, uniPanel, uniSplitter,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses;

type
  TUniFrame2 = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniSplitter1: TUniSplitter;
    UniPanel1: TUniPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniDBGrid3: TUniDBGrid;
    UniDBGrid4: TUniDBGrid;
    UniSplitter2: TUniSplitter;
    UniPanel2: TUniPanel;
    UniDBNavigator2: TUniDBNavigator;
    UniSplitter3: TUniSplitter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  MainModule;

{$R *.dfm}



end.

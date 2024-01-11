unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPageControl, uniBasicGrid,
  uniDBGrid, uniDBNavigator, uniPanel, uniSplitter;

type
  TUniFrame1 = class(TUniFrame)
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniSplitter1: TUniSplitter;
    UniPanel1: TUniPanel;
    UniDBNavigator1: TUniDBNavigator;
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

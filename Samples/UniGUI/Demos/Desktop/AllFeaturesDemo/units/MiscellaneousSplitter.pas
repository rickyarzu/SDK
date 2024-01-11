//Splitter = Miscellaneous
unit MiscellaneousSplitter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniSplitter, uniGUIBaseClasses, uniPanel;

type
  TUniMiscellaneousSplitter = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniPanel5: TUniPanel;
    UniSplitter1: TUniSplitter;
    UniSplitter2: TUniSplitter;
    UniSplitter3: TUniSplitter;
    UniSplitter4: TUniSplitter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniMiscellaneousSplitter);

end.

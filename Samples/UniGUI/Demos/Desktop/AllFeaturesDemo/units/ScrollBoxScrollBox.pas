//ScrollBox = ScrollBox
unit ScrollBoxScrollBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBitBtn, uniBasicGrid, uniDBGrid, uniButton,
  uniScrollBox, uniGUIBaseClasses, uniPanel;

type
  TUniScrollBoxScrollBox = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniScrollBox1: TUniScrollBox;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniDBGrid1: TUniDBGrid;
    UniScrollBox2: TUniScrollBox;
    UniBitBtn1: TUniBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniScrollBoxScrollBox);

end.

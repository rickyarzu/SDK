//ScrollBox = ScrollBox
unit ScrollBoxScrollBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, unimEdit, uniBitBtn, unimBitBtn, uniEdit,
  uniMultiItem, unimSelect, uniButton, unimButton, uniLabel, unimLabel,
  unimScrollBox, uniGUIBaseClasses, uniGUImJSForm, unimPanel;

type
  TUniScrollBoxScrollBox = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimScrollBox1: TUnimScrollBox;
    UnimLabel1: TUnimLabel;
    UnimButton1: TUnimButton;
    UnimSelect1: TUnimSelect;
    UnimScrollBox2: TUnimScrollBox;
    UnimNumberEdit1: TUnimNumberEdit;
    UnimBitBtn1: TUnimBitBtn;
    UnimEdit1: TUnimEdit;
    UnimLabel2: TUnimLabel;
    UnimLabel3: TUnimLabel;
    UnimPanel1: TUnimPanel;
    UnimPanel2: TUnimPanel;
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

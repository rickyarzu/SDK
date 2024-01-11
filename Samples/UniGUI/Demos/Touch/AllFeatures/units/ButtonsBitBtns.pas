// BitBtns  = Buttons
unit ButtonsBitBtns;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniBitBtn, unimBitBtn,
  uniGUIBaseClasses, uniGUImJSForm, unimScrollBox;

type
  TUniButtonsBitBtns = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
    UnimBitBtn3: TUnimBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniButtonsBitBtns);

end.

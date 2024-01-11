//Pack & Align = Clientside Alignment
unit ClientsideAlignmentPackAlign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniBitBtn, unimBitBtn, uniButton, unimButton,
  uniGUIBaseClasses, uniGUImJSForm;

type
  TUniClientsideAlignmentPackAlign = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimContainerPanel4: TUnimContainerPanel;
    UnimContainerPanel5: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimButton3: TUnimButton;
    UnimButton4: TUnimButton;
    UnimButton5: TUnimButton;
    UnimButton6: TUnimButton;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniClientsideAlignmentPackAlign);

end.

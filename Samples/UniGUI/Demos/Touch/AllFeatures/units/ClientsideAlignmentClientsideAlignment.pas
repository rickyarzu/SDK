//Clientside Alignment = Clientside Alignment
unit ClientsideAlignmentClientsideAlignment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, jpeg, uniImage, unimImage, uniBitBtn,
  unimBitBtn, unimPanel, uniButton, unimButton, uniGUIBaseClasses, uniGUImJSForm;

type
  TUniClientsideAlignmentClientsideAlignment = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimPanel1: TUnimPanel;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimBitBtn1: TUnimBitBtn;
    UnimImage1: TUnimImage;
    UnimBitBtn2: TUnimBitBtn;
    UnimContainerPanel4: TUnimContainerPanel;
    UnimButton2: TUnimButton;
    UnimContainerPanel5: TUnimContainerPanel;
    UnimContainerPanel6: TUnimContainerPanel;
    UnimImage2: TUnimImage;
    UnimContainerPanel7: TUnimContainerPanel;
    UnimButton3: TUnimButton;
    UnimButton4: TUnimButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniClientsideAlignmentClientsideAlignment);

end.

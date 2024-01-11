// UniMask = Mask
unit MaskUniMask;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniScreenMask, uniBasicGrid,
  uniDBGrid, uniButton, uniPanel;

type
  TUniMaskUniMask = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniButton2: TUniButton;
    UniButton1: TUniButton;
    UniDBGrid1: TUniDBGrid;
    UniButton4: TUniButton;
    UniButton3: TUniButton;
    UniButton5: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



{ TUniMaskDemo }


procedure TUniMaskUniMask.UniButton1Click(Sender: TObject);
begin
  Sleep(3000);
end;

initialization
  RegisterClass(TUniMaskUniMask);
end.

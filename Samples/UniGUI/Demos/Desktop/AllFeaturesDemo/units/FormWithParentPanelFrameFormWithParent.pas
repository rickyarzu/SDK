// Panel-Frame Form With Parent = Form With Parent
unit FormWithParentPanelFrameFormWithParent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UnitFrameContainer, uniGUIBaseClasses, uniPanel,
  UnitFrame, UnitPanel;

type
  TUniFormWithParentPanelFrameFormWithParent = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniFrame31: TUniFrame3;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


 procedure TUniFormWithParentPanelFrameFormWithParent.UniFrameCreate(Sender: TObject);
begin
 UniPanelForm.Parent := UniPanel1;
 UniPanelForm.Show();

 UniFrameForm.Parent := UniFrame31;
 UniFrameForm.Show();
end;

initialization
  RegisterClass(TUniFormWithParentPanelFrameFormWithParent);
end.

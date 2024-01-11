// Form in Frame = Form With Parent
unit FormWithParentFormInFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UnitFormWithParentFrame;

type
  TUniFormWithParentFormInFrame = class(TUniFrame)
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormWithParentFormInFrame.UniFrameCreate(Sender: TObject);
begin
 UniFormFrame.Parent := Self;
 UniFormFrame.Show();
end;


initialization
  RegisterClass(TUniFormWithParentFormInFrame);
end.

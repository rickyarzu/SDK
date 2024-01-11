// Fit Form With Parent = Form With Parent
unit FormWithParentFitFormWithParent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UnitFitForm, uniGUIBaseClasses, uniPanel;

type
  TUniFormWithParentFitFormWithParent = class(TUniFrame)
    UniPanel1: TUniPanel;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormWithParentFitFormWithParent.UniFrameCreate(Sender: TObject);
begin
   UniFitForm.Parent := UniPanel1;
   UniFitForm.Show();
end;

initialization
  RegisterClass(TUniFormWithParentFitFormWithParent);
end.

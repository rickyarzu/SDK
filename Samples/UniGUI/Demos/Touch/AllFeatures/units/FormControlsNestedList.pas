//Nested List   = Form Controls
unit FormControlsNestedList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTreeView, unimNestedList, uniGUIBaseClasses,
  uniGUImJSForm;

type
  TUniFormControlsNestedList = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimNestedList1: TUnimNestedList;
    procedure UnimNestedList1LeafClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsNestedList.UnimNestedList1LeafClick(Sender: TObject);
begin
  if UnimNestedList1.Items.FindNodeByCaption('First''s Sub Item 1').Selected then
    ShowMessage('Have a nice day.')
  else if UnimNestedList1.Items.FindNodeByCaption('First''s Sub Item 2').Selected then
     ShowMessage('You''re brilliant!')
  else if UnimNestedList1.Items.FindNodeByCaption('Second''s Sub Item 1').Selected then
     ShowMessage('Thank you for reading me.')
  else if UnimNestedList1.Items.FindNodeByCaption('Second''s Sub Item 2').Selected  then
     ShowMessage('We''re glad to meet you.')
end;

initialization
  RegisterClass(TUniFormControlsNestedList);

end.

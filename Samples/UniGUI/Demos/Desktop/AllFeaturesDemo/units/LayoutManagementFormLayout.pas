// Form Layout = Layout Management
unit LayoutManagementFormLayout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniMemo, UniHTMLMemo, uniEdit,
  uniPanel, uniGUIBaseClasses;

type
  TUniLayoutManagementFormLayout = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniHTMLMemo1: TUniHTMLMemo;
    UniContainerPanel2: TUniContainerPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

  initialization
  RegisterClass(TUniLayoutManagementFormLayout);

end.

// HBox Layout Percentage = Layout Management
unit LayoutManagementHBoxLayoutPercentage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniGUIBaseClasses;

type
  TUniLayoutManagementHBoxLayoutPercentage = class(TUniFrame)
    UniSimplePanel1: TUniSimplePanel;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniPanel5: TUniPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

 initialization
  RegisterClass(TUniLayoutManagementHBoxLayoutPercentage);

end.

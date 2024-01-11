 //Syntax Edit = Form Controls
unit FormControlsSyntaxEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMultiItem, uniComboBox, uniSyntaxEditor,
  uniGUIBaseClasses, uniPanel, ServerModule, uniPageControl, uniSyntaxEditorBase;

type
  TUniFormControlsSyntaxEdit = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    UniTabSheet5: TUniTabSheet;
    UniTabSheet9: TUniTabSheet;
    UniTabSheet10: TUniTabSheet;
    UniTabSheet11: TUniTabSheet;
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniSyntaxEdit2: TUniSyntaxEdit;
    UniSyntaxEdit3: TUniSyntaxEdit;
    UniSyntaxEdit4: TUniSyntaxEdit;
    UniSyntaxEdit5: TUniSyntaxEdit;
    UniSyntaxEdit9: TUniSyntaxEdit;
    UniSyntaxEdit10: TUniSyntaxEdit;
    UniSyntaxEdit11: TUniSyntaxEdit;
  private
    { Private declarations }
  public

    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}



initialization
  RegisterClass(TUniFormControlsSyntaxEdit);
end.

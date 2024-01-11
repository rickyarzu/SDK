unit Janua.UniGUI.frameDBUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniCheckBox, uniEdit, uniLabel, uniGUIBaseClasses, uniPanel;

type
  TframeUniGUIDBUser = class(TUniFrame)
    cntUserSettings: TUniContainerPanel;
    cntEmail: TUniContainerPanel;
    lbProfileEmail: TUniLabel;
    edtProfileEmail: TUniEdit;
    cntPassword: TUniContainerPanel;
    cntLabelPassword: TUniContainerPanel;
    ckbShowPwdRegister: TUniCheckBox;
    lbProfilePassword: TUniLabel;
    edtProfilePassword: TUniEdit;
    cntPasswordRepeat: TUniContainerPanel;
    lbProfilePasswordRepeat: TUniLabel;
    edtProfilePasswordRepeat: TUniEdit;
    cntUserLastName: TUniContainerPanel;
    lbLastName: TUniLabel;
    edtLastName: TUniEdit;
    cntUserFirstName: TUniContainerPanel;
    lbProfileFirstName: TUniLabel;
    edtFirstName: TUniEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



end.

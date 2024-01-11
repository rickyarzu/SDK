//AllFeatures: Miscellaneous,Basic JQuery,icon-ajax-tabs
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, Spin, UniSpinEdit,
  DBCtrls, UniDBMemo, UniButton, ExtCtrls, UniDBNavigator, Mask,
  UniEdit, Grids, DBGrids, uniDBGrid, DB, UniHTMLFrame, UniLabel,
  uniGUIRegClasses,  uniguiclasses, UniPanel, uniGUIBaseClasses;

type
  TMainForm = class(TUniForm)
    UniHTMLFrame1: TUniHTMLFrame;
    UniLabel1: TUniLabel;
    UniHTMLFrame2: TUniHTMLFrame;
    UniLabel2: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

initialization
  RegisterMainFormClass(TMainForm);

end.

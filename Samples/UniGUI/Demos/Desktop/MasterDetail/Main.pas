//AllFeatures: Grid,Master Detail,icon-outline-pivot-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid, uniDBGrid,
  ExtCtrls, uniSplitter, MidasLib, uniButton, uniPanel, uniDBNavigator, uniEdit,
  uniDBEdit;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniSplitter1: TUniSplitter;
    UniDBNavigator1: TUniDBNavigator;
    UniPanel1: TUniPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

initialization
  RegisterMainFormClass(TMainForm);

end.

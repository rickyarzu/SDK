//AllFeatures: Grid,DBLookupCombo,icon-locale-dutch
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, Grids, DBGrids, uniDBGrid,
  DB, StdCtrls, UniLabel, DBCtrls, UniDBLookupComboBox,
  ExtCtrls, UniDBNavigator, DBClient, ComCtrls, UniStatusBar,
  UniBasicGrid, uniGUIRegClasses,  uniguiclasses, UniPanel, UniListBox, UniDBListBox, uniMultiItem,
  UniComboBox, UniDBComboBox, uniGUIBaseClasses, uniButton, uniDBLookupListBox;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniDBNavigator1: TUniDBNavigator;
    UniStatusBar1: TUniStatusBar;
    UniDBGrid1: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
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

//AllFeatures: DBLookupComboBox,DBLookup - Basic Demo,icon-combo-boxes
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, Grids, DBGrids, uniDBGrid,
  DB, StdCtrls, UniLabel, DBCtrls, UniDBLookupComboBox,
  UniDBLookupListBox, ExtCtrls, UniDBNavigator, DBClient, ComCtrls, UniStatusBar,
  UniBasicGrid, uniGUIRegClasses,  uniguiclasses, UniPanel, UniListBox, UniDBListBox, uniMultiItem,
  UniComboBox, UniDBComboBox, uniGUIBaseClasses, uniButton;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniDBLookupListBox1: TUniDBLookupListBox;
    UniLabel3: TUniLabel;
    UniDBNavigator1: TUniDBNavigator;
    UniDBGrid2: TUniDBGrid;
    UniLabel4: TUniLabel;
    UniStatusBar1: TUniStatusBar;
    UniDBGrid1: TUniDBGrid;
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

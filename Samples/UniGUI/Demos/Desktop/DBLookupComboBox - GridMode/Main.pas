//AllFeatures: DBLookupComboBox,DBLookupComboBox - Grid Mode,icon-combo-boxes
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, Grids, DBGrids, uniDBGrid,
  DB, StdCtrls, UniLabel, DBCtrls, UniDBLookupComboBox,
  UniDBLookupListBox, ExtCtrls, UniDBNavigator, DBClient, ComCtrls, UniStatusBar,
  UniBasicGrid, uniGUIRegClasses,  uniGUIClasses, UniPanel, UniListBox, UniDBListBox,
  uniMultiItem, UniComboBox, UniDBComboBox, uniGUIBaseClasses, uniButton, uniMemo,
  uniDateTimePicker;

type
  TMainForm = class(TUniForm)
    UniDBNavigator1: TUniDBNavigator;
    UniLabel3: TUniLabel;
    UniDBGrid4: TUniDBGrid;
    UniHiddenPanel4: TUniHiddenPanel;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, uniGUIAbstractClasses;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

initialization
  RegisterMainFormClass(TMainForm);

end.

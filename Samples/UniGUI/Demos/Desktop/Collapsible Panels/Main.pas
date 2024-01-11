//AllFeatures: Panel,Collapsible Panels,icon-panel-collapsible
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniPanel, uniGUIBaseClasses,
  uniSplitter, uniBasicGrid, uniDBGrid, DB, DBClient, uniMemo;

type
  TMainForm = class(TUniForm)
    UniSplitter1: TUniSplitter;
    UniSplitter2: TUniSplitter;
    UniSplitter3: TUniSplitter;
    UniSplitter4: TUniSplitter;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniPanel4: TUniPanel;
    UniDBGrid1: TUniDBGrid;
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
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

initialization
  RegisterMainFormClass(TMainForm);

end.

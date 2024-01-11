//AllFeatures: Grid,Memo and Image,icon-view-options-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, DB, DBClient, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid, uniMemo, uniPanel;

type
  TMainForm = class(TUniForm)
    ClientDataSet: TClientDataSet;
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    ClientDataSetSpeciesNo: TFloatField;
    ClientDataSetCategory: TStringField;
    ClientDataSetCommon_Name: TStringField;
    ClientDataSetSpeciesName: TStringField;
    ClientDataSetLengthcm: TFloatField;
    ClientDataSetLength_In: TFloatField;
    ClientDataSetNotes: TMemoField;
    ClientDataSetGraphic: TGraphicField;
    UniHiddenPanel1: TUniHiddenPanel;
    UniMemo1: TUniMemo;
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

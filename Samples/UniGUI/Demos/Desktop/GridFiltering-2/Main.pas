//AllFeatures: Grid,Filtering - 2,icon-grid-filtering
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes,
  ToolWin, ComCtrls, UniToolBar, ExtCtrls, UniSplitter, Grids, DBGrids,
  uniDBGrid, StdCtrls, UniMemo, UniStatusBar, ImgList, UniTreeView, UniPanel,
  DBCtrls, UniDBNavigator, UniBasicGrid, uniGUIRegClasses, uniGUIClasses,
  uniGUIBaseClasses, UniGUIAbstractClasses, uniMultiItem, uniComboBox, uniEdit,
  uniButton, uniDBComboBox, uniDBLookupComboBox, uniLabel;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniDBGrid1: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniHiddenPanel1: TUniHiddenPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
    UniEdit5: TUniEdit;
    UniEdit6: TUniEdit;
    UniEdit7: TUniEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBGrid1ColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
    procedure UniDBGrid1ClearFilters(Sender: TObject);
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

procedure TMainForm.UniDBGrid1ClearFilters(Sender: TObject);
var
  I : Integer;
begin
  if UniMainModule.ADOQuery1.Active then
  begin
    for I := 0 to UniMainModule.ADOQuery1.Parameters.Count-1 do
      UniMainModule.ADOQuery1.Parameters[I].Value:='%%';

    UniMainModule.ADOQuery1.Requery;
  end;
end;

procedure TMainForm.UniDBGrid1ColumnFilter(Sender: TUniDBGrid; const Column: TUniDBGridColumn; const Value: Variant);
var
  V : Variant;
  I : Integer;
begin
  if UniMainModule.ADOQuery1.Active then
  begin
    for I := 0 to Sender.Columns.Count - 1  do
      if Sender.Columns[I].Filtering.Enabled then
      begin
        V := Sender.Columns[I].Filtering.VarValue;
        UniMainModule.ADOQuery1.Parameters.ParamByName(Sender.Columns[I].FieldName).Value := '%'+V+'%';
      end;
    UniMainModule.ADOQuery1.Requery;
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniMainModule.ADOQuery1.Open;
  UniMainModule.ADOQuery2.Open;

end;

initialization
  RegisterMainFormClass(TMainForm);
                                                          
end.                                                      

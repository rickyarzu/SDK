// Filter 2= Grids
unit GridsFilter2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniEdit, uniPanel, uniBasicGrid, uniDBGrid, uniLabel,
  uniDBNavigator, uniGUIBaseClasses, MainModule;

type
  TUniGridsFilter2 = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniPanel2: TUniPanel;
    UniLabel1: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniEdit4: TUniEdit;
    UniEdit5: TUniEdit;
    UniEdit6: TUniEdit;
    UniEdit7: TUniEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBNavigator1: TUniDBNavigator;
    procedure UniDBGrid1ColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure UniDBGrid1ClearFilters(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}



procedure TUniGridsFilter2.UniDBGrid1ClearFilters(Sender: TObject);
var
  I : Integer;
begin
 if UniMainModule.ADOQuery3.Active then
 begin
  for I := 0 to UniMainModule.ADOQuery1.Parameters.Count -1  do
    UniMainModule.ADOQuery3.Parameters[I].Value := '%%';
   UniMainModule.ADOQuery3.Requery;
 end;
end;

procedure TUniGridsFilter2.UniDBGrid1ColumnFilter(Sender: TUniDBGrid;
  const Column: TUniDBGridColumn; const Value: Variant);
var
  V : Variant;
  I : Integer;
begin
  if UniMainModule.ADOQuery3.Active then
  begin
    for I := 0 to Sender.Columns.Count - 1  do
      if Sender.Columns[I].Filtering.Enabled then
      begin
        V := Sender.Columns[I].Filtering.VarValue;
        UniMainModule.ADOQuery3.Parameters.ParamByName(Sender.Columns[I].FieldName).Value := '%'+V+'%';
      end;
    UniMainModule.ADOQuery3.Requery;
  end;
end;

procedure TUniGridsFilter2.UniFrameCreate(Sender: TObject);
var
  I : Integer;
begin
  UniMainModule.InitCacheFiles;

  for I := 0 to UniMainModule.ADOQuery3.Parameters.Count -1  do
    UniMainModule.ADOQuery3.Parameters[I].Value := '%%';
  UniMainModule.ADOQuery3.Open;
  UniMainModule.ADOQuery4.Open;

  (OwnerForm as TUniForm).ActiveControl := UniEdit1;
end;

procedure TUniGridsFilter2.UniFrameDestroy(Sender: TObject);
begin
  UniMainModule.ADOQuery3.Close;
  UniMainModule.ADOQuery4.Close;
end;

initialization
  RegisterClass(TUniGridsFilter2);
end.

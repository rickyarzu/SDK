// Filter = Grids
unit GridsFilter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBNavigator, uniButton, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniEdit, uniPanel,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, MainModule;

type
  TUniGridsFilter = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
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
    UniButton1: TUniButton;
    UniDBNavigator1: TUniDBNavigator;
    procedure UniButton1Click(Sender: TObject);
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



procedure TUniGridsFilter.UniButton1Click(Sender: TObject);
begin
  UniMainModule.ADOQuery1.Active := not UniMainModule.ADOQuery1.Active;
end;

procedure TUniGridsFilter.UniDBGrid1ClearFilters(Sender: TObject);
var
  I : Integer;
begin
 if UniMainModule.ADOQuery1.Active then
 begin
  for I := 0 to UniMainModule.ADOQuery1.Parameters.Count -1  do
    UniMainModule.ADOQuery1.Parameters[I].Value := '%%';
   UniMainModule.ADOQuery1.Requery;
 end;
end;

procedure TUniGridsFilter.UniDBGrid1ColumnFilter(Sender: TUniDBGrid;
  const Column: TUniDBGridColumn; const Value: Variant);
begin
 if UniMainModule.ADOQuery1.Active then
 begin
   UniMainModule.ADOQuery1.Parameters.ParamByName(Column.FieldName).Value := '%'+Value+'%';
   UniMainModule.ADOQuery1.Requery;
 end;
end;

procedure TUniGridsFilter.UniFrameCreate(Sender: TObject);
var
  I : Integer;
begin
  UniMainModule.InitCacheFiles;

  for I := 0 to UniMainModule.ADOQuery1.Parameters.Count -1  do
    UniMainModule.ADOQuery1.Parameters[I].Value := '%%';

  UniMainModule.ADOQuery1.Open;
  UniMainModule.ADOQuery2.Open;

  (OwnerForm as TUniForm).ActiveControl := UniEdit1;
end;

procedure TUniGridsFilter.UniFrameDestroy(Sender: TObject);
begin
  UniMainModule.ADOQuery1.Close;
  UniMainModule.ADOQuery2.Close;
end;

initialization
  RegisterClass(TUniGridsFilter);
end.

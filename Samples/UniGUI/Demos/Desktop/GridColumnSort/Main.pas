//AllFeatures: Grid,Column Locking - Header Grouping,icon-multi-sort-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, DB, DBClient,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    procedure UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
      Direction: Boolean);
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

procedure TMainForm.UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  UniMainModule.SortColumn(Column.FieldName, Direction);
end;

initialization
  RegisterMainFormClass(TMainForm);

end.

//AllFeatures: Grid,RetainCursorOnSort,icon-framing-buttons
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, DB, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid;

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
  RegisterAppFormClass(TMainForm);

end.

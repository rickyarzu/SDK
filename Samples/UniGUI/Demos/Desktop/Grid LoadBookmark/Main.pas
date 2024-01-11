//AllFeatures: Grid,Load Bookmark,icon-address-book
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid;

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

procedure TMainForm.UniDBGrid1ColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
begin
  UniMainModule.SortColumn(Column.FieldName, Direction);

  // Go to first row of current dataset
  UniMainModule.ClientDataSet1.First;

  // Set Grid.LoadBookmark to current row, so regardless of current page/row grid will always focus on first row of dataset after each sort.
  UniDBGrid1.LoadBookmark := UniMainModule.ClientDataSet1.GetBookMark;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

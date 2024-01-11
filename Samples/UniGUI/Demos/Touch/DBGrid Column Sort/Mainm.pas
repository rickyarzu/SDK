unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, unimDBGrid, unimDBListGrid;

type
  TMainmForm = class(TUnimForm)
    UnimDBGrid1: TUnimDBGrid;
    procedure UnimDBGrid1ColumnSort(Column: TunimDBGridColumn;
      Direction: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimDBGrid1ColumnSort(Column: TunimDBGridColumn; Direction: Boolean);
begin
  UniMainModule.SortColumn(Column.FieldName, Direction);
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.

unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniLabel, unimLabel, DB, uniBasicGrid, uniDBGrid, unimDBListGrid,
  unimDBGrid, uniGUIBaseClasses, uniDBNavigator, unimDBNavigator;

type
  TMainmForm = class(TUnimForm)
    UnimDBNavigator1: TUnimDBNavigator;
    UnimDBGrid1: TUnimDBGrid;
    DataSource1: TDataSource;
    UnimLabel1: TUnimLabel;
    procedure UnimDBGrid1ColumnResize(Sender: TUniBaseDBGridColumn;
      NewSize: Integer);
    procedure UnimDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TunimDBGridColumn; Attribs: TUniCellAttribs);
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

procedure TMainmForm.UnimDBGrid1ColumnResize(Sender: TUniBaseDBGridColumn;
  NewSize: Integer);
begin
  ShowMessage(Sender.FieldName + ' New Size: '+ IntToStr(NewSize));
end;

procedure TMainmForm.UnimDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TunimDBGridColumn; Attribs: TUniCellAttribs);
begin
  if Column.FieldName = 'Company' then
    Attribs.Font.Color := clBlue;

end;

initialization
  RegisterAppFormClass(TMainmForm);

end.

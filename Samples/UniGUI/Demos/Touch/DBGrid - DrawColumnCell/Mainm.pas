unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, Datasnap.DBClient, uniGUIBaseClasses, uniBasicGrid, uniDBGrid,
  unimDBListGrid, unimDBGrid;

type
  TMainmForm = class(TUnimForm)
    UnimDBGrid1: TUnimDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1EmpNo: TIntegerField;
    ClientDataSet1LastName: TStringField;
    ClientDataSet1FirstName: TStringField;
    ClientDataSet1PhoneExt: TStringField;
    ClientDataSet1HireDate: TDateTimeField;
    ClientDataSet1Salary: TFloatField;
    ClientDataSet1Shift: TBooleanField;
    ClientDataSet1ShiftStart: TTimeField;
    ClientDataSet1City: TStringField;
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

procedure TMainmForm.UnimDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TunimDBGridColumn; Attribs: TUniCellAttribs);
begin
  if Column.FieldName = 'HireDate' then
    if ClientDataSet1HireDate.AsDateTime < StrToDate('01/01/1990', FmtSettings) then
    begin
      Attribs.Color := $DFDFFF;
      Attribs.Font.Style := [fsItalic, fsBold];
    end
    else if ClientDataSet1HireDate.AsDateTime < StrToDate('01/01/1992', FmtSettings) then
      Attribs.Color := $DFFFDF
    else
      Attribs.Color := $DFFFFF;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.

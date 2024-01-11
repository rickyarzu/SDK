//AllFeatures: DBLookupComboBox,DBLookupComboBox - Custom Remote Query,icon-combo-boxes
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniMemo, uniLabel, uniPanel, uniDBNavigator, uniButton,
  DBClient, ExtCtrls;

type
  TMainForm = class(TUniForm)
    FDQuery1: TFDQuery;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniMemo1: TUniMemo;
    UniDBGrid1: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    UniLabel1: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBNavigator1: TUniDBNavigator;
    UniMemo2: TUniMemo;
    UniLabel2: TUniLabel;
    procedure UniDBLookupComboBox1RemoteQuery(const QueryString: string;
      Result: TStrings);
    procedure UniDBLookupComboBox1GetKeyValue(const Value: string;
      var KeyValue: Variant);
    procedure UniDBLookupComboBox1Select(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniStrUtils;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniDBLookupComboBox1GetKeyValue(const Value: string;
  var KeyValue: Variant);
const
  F_SQL = 'select emp_no from employees where (emp_no = :empno)';
var
  S : string;
  i : Integer;
begin
  S := Value;
  KeyValue := Null;
  if S <> '' then
  begin
    FDQuery1.SQL.Text := F_SQL;

    i := Pos(',', S);
    if i > 0 then
      S := Copy(S, 1, i - 1);

    FDQuery1.ParamByName('empno').AsString := S;
    FDQuery1.Open;
    try
      if FDQuery1.RecordCount > 0 then
        KeyValue := FDQuery1.FieldByName('emp_no').Value;
    finally
      FDQuery1.Close;
    end;
  end;
end;

procedure TMainForm.UniDBLookupComboBox1RemoteQuery(const QueryString: string; Result: TStrings);
const
  F_SQL_1 = 'select emp_no,first_name,last_name from employees '+
          'where (first_name like :firstname) [-] (last_name like :lastname)';

  F_SQL_2 = 'select emp_no,first_name,last_name from employees '+
          'where (emp_no like :empno)';
var
  fs, fSQL, fName, lName, fempno : string;
  i : Integer;
begin
  fs := Trim(QueryString);
  if fs <> '' then
  begin
    fName := '';
    lName := '';

    if uniIsDigit(fs) then
    begin
      fSQL := F_SQL_2;
      fempno := fs;
      FDQuery1.SQL.Text := fSQL;
      FDQuery1.ParamByName('empno').AsString := '%' + fempno + '%';
    end
    else
    begin
      fSQL := F_SQL_1;
      i := Pos(' ', fs);
      if i > 0 then
      begin
        fName := Copy(fs, 1 , i - 1);
        lName := Copy(fs, i + 1, MaxInt);
        fSQL := StringReplace(fSQL, '[-]', 'AND', []);
      end
      else
      begin
        fName := fs;
        lName := fs;
        fSQL := StringReplace(fSQL, '[-]', 'OR', []);
      end;
      FDQuery1.SQL.Text := fSQL;
      FDQuery1.ParamByName('firstname').AsString := '%' + fName + '%';
      FDQuery1.ParamByName('lastname').AsString := '%' + lName + '%';
    end;

    FDQuery1.Open;
    try
      while not FDQuery1.Eof do
      begin
        Result.Add(
          FDQuery1.FieldByName('emp_no').AsString + ', '+
          FDQuery1.FieldByName('first_name').AsString + ', '+
          FDQuery1.FieldByName('last_name').AsString
        );
        FDQuery1.Next;
      end;
    finally
      FDQuery1.Close;
    end;
  end;
end;

procedure TMainForm.UniDBLookupComboBox1Select(Sender: TObject);
begin
  UniMemo1.Lines.Add( UniDBLookupComboBox1.KeyValueStr );
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

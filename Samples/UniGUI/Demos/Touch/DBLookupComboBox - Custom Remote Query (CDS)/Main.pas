//AllFeatures: DBLookupComboBox,DBLookupComboBox - Custom Remote Query (CDS),icon-combo-boxes
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniMemo, uniLabel, uniPanel, uniDBNavigator, unimLabel,
  unimDBNavigator, unimMemo, unimComboBox;

type
  TMainForm = class(TUnimForm)
    UniDBLookupComboBox1: TUnimDBLookupComboBox;
    UniMemo1: TUnimMemo;
    UniMemo2: TUnimMemo;
    UniLabel2: TUnimLabel;
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

procedure TMainForm.UniDBLookupComboBox1GetKeyValue(const Value: string; var KeyValue: Variant);
var
  S : string;
  I : Integer;
begin
  S := Value;
  KeyValue := Null;
  if S <> '' then
  begin
    I := Pos(',', S);
    if I > 0 then
      S := Copy(S, 1, I - 1)
    else
      Exit;

    UniMainModule.ClientDataSet2.Filtered := False;
    UniMainModule.ClientDataSet2.SetKey;
    UniMainModule.ClientDataSet2.FieldByName('emp_no').AsString := S;
    if UniMainModule.ClientDataSet2.GotoKey then
      KeyValue := UniMainModule.ClientDataSet2.FieldByName('emp_no').Value;
  end;
end;

procedure TMainForm.UniDBLookupComboBox1RemoteQuery(const QueryString: string; Result: TStrings);
const
  Filter_1 = '(first_name like ''[firstname]'') [-] (last_name like ''[lastname]'')';
var
  fs, fFilter, fName, lName : string;
  i, n : Integer;
begin
  fs := Trim(QueryString);
  if fs <> '' then
  begin
    fName := '';
    lName := '';

    UniMainModule.ClientDataSet2.Filtered := False;

    fFilter := Filter_1;
    i := Pos(' ', fs);
    if i > 0 then
    begin
      fName := Copy(fs, 1 , i - 1);
      lName := Copy(fs, i + 1, MaxInt);
      fFilter := StringReplace(fFilter, '[-]', 'AND', []);
    end
    else
    begin
      fName := fs;
      lName := fs;
      fFilter := StringReplace(fFilter, '[-]', 'OR', []);
    end;
    fFilter := StringReplace(fFilter, '[firstname]', '%' + fName + '%', []);
    fFilter := StringReplace(fFilter, '[lastname]', '%' + lName + '%', []);
    UniMainModule.ClientDataSet2.Filter := fFilter;
    UniMainModule.ClientDataSet2.Filtered := True;

    N := 0;
    while not UniMainModule.ClientDataSet2.Eof do
    begin
      Result.Add(
        UniMainModule.ClientDataSet2.FieldByName('emp_no').AsString + ', '+
        UniMainModule.ClientDataSet2.FieldByName('first_name').AsString + ', '+
        UniMainModule.ClientDataSet2.FieldByName('last_name').AsString
      );
      UniMainModule.ClientDataSet2.Next;
      Inc(N);
      if N > 2500 then Break;
    end;
  end;
end;

procedure TMainForm.UniDBLookupComboBox1Select(Sender: TObject);
var
  S : string;
begin
  S := UniDBLookupComboBox1.KeyValueStr;
  if S <> '' then
    UniMemo1.Lines.Add('> ' +  S );
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

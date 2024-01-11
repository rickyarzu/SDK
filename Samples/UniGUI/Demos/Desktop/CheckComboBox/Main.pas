unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniMemo, uniGUIBaseClasses,
  uniMultiItem, uniComboBox, uniButton, uniPanel, Data.DB, Datasnap.DBClient,
  uniBasicGrid, uniDBGrid, uniDBComboBox, uniDBNavigator;

type
  TMainForm = class(TUniForm)
    UniCheckComboBox1: TUniCheckComboBox;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniDBGrid1: TUniDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    UniHiddenPanel1: TUniHiddenPanel;
    UniCheckComboBox2: TUniCheckComboBox;
    UniDBGrid2: TUniDBGrid;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    ClientDataSet2Id: TIntegerField;
    ClientDataSet2Data: TStringField;
    UniHiddenPanel2: TUniHiddenPanel;
    UniCheckComboBox3: TUniCheckComboBox;
    UniDBCheckComboBox1: TUniDBCheckComboBox;
    UniDBNavigator1: TUniDBNavigator;
    procedure UniCheckComboBox1Select(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniDBGrid1ColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
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

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniCheckComboBox1.ClearSelection;
  UniCheckComboBox1.Selected[1] := True;
  UniCheckComboBox1.Selected[3] := True;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniCheckComboBox1.Text := 'Banana;Apple';
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  UniCheckComboBox1.ClearSelection;
end;

procedure TMainForm.UniCheckComboBox1Select(Sender: TObject);
begin
  UniMemo1.Lines.Add(UniCheckComboBox1.Text);
end;

procedure TMainForm.UniDBGrid1ColumnFilter(Sender: TUniDBGrid;
  const Column: TUniDBGridColumn; const Value: Variant);
var
  S : string;
  L : TStrings;
  I: Integer;
begin
  S := Value;

  L := TStringList.Create;
  try
    L.StrictDelimiter := True;
    L.Delimiter := ';';
    L.DelimitedText := S;
    if L.Count > 0 then
    begin
      S := '';
      for I := 0 to L.Count - 1 do
        S := S + ' Category=' + QuoteStr(L[I], '''') + 'or';

      System.Delete(S, Length(S) - 1, 2); // delete the extra 'or'
      ClientDataSet1.Filter := Trim(S);
    end
    else
      ClientDataSet1.Filter := '';
    ClientDataSet1.Filtered := True;
  finally
    L.Free;
  end;

end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniMemo1.Clear;
  UniCheckComboBox1.Selected[0] := True;
  UniCheckComboBox1.Selected[2] := True;

  UniCheckComboBox2.Items.Add('Triggerfish');
  UniCheckComboBox2.Items.Add('Wrasse');
  UniCheckComboBox2.Items.Add('Cod');
  UniCheckComboBox2.Items.Add('Shark');
  UniDBCheckComboBox1.Items.Assign(UniCheckComboBox3.Items);

  with ClientDataSet2 do
  begin
    Append;
    FieldByName('Id').AsInteger := 1;
    FieldByName('Data').AsString := '';
    Post;

    Append;
    FieldByName('Id').AsInteger := 1;
    FieldByName('Data').AsString := 'A;C;E';
    Post;

    Append;
    FieldByName('Id').AsInteger := 1;
    FieldByName('Data').AsString := 'B;E';
    Post;
  end;

end;

initialization
  RegisterAppFormClass(TMainForm);

end.

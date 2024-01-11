// CheckCombobox = Form Controls
unit FormControlsCheckComboBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, DB,
  DBClient, uniDBNavigator, uniDBComboBox, uniBasicGrid, uniDBGrid,
  uniButton, uniMemo, uniMultiItem, uniComboBox, uniStrUtils;

type
  TUniFormControlsCheckComboBox = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniCheckComboBox1: TUniCheckComboBox;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniDBGrid1: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    UniCheckComboBox2: TUniCheckComboBox;
    UniDBGrid2: TUniDBGrid;
    UniHiddenPanel2: TUniHiddenPanel;
    UniCheckComboBox3: TUniCheckComboBox;
    UniDBCheckComboBox1: TUniDBCheckComboBox;
    UniDBNavigator1: TUniDBNavigator;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet2: TClientDataSet;
    ClientDataSet2Id: TIntegerField;
    ClientDataSet2Data: TStringField;
    DataSource2: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBGrid1ColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
    procedure UniCheckComboBox1Select(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniFormControlsCheckComboBox.UniButton1Click(Sender: TObject);
begin
  UniCheckComboBox1.ClearSelection;
  UniCheckComboBox1.Selected[1] := True;
  UniCheckComboBox1.Selected[3] := True;
end;

procedure TUniFormControlsCheckComboBox.UniButton2Click(Sender: TObject);
begin
  UniCheckComboBox1.Text := 'Banana;Apple';
end;

procedure TUniFormControlsCheckComboBox.UniButton3Click(Sender: TObject);
begin
  UniCheckComboBox1.ClearSelection;
end;

procedure TUniFormControlsCheckComboBox.UniCheckComboBox1Select(
  Sender: TObject);
begin
  UniMemo1.Lines.Add(UniCheckComboBox1.Text);
end;

procedure TUniFormControlsCheckComboBox.UniDBGrid1ColumnFilter(
  Sender: TUniDBGrid; const Column: TUniDBGridColumn; const Value: Variant);
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

procedure TUniFormControlsCheckComboBox.UniFrameCreate(Sender: TObject);
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
  RegisterClass(TUniFormControlsCheckComboBox);


end.

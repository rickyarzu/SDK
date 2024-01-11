unit unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, scControls, VCl.Themes,
  scDrawUtils,
  scDBControls, scStyledForm, scStyleManager, Vcl.Mask, scCalendar,
  scExtControls, scImageCollection, MidasLib, scGrids, scDBGrids,
  scAdvancedControls;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    scDBText1: TscDBText;
    scDBEdit1: TscDBEdit;
    scDBComboBox1: TscDBComboBox;
    scDBTimeEdit1: TscDBTimeEdit;
    scDBDateEdit1: TscDBDateEdit;
    scDBCheckBox1: TscDBCheckBox;
    scPanel1: TscPanel;
    scLabel3: TscLabel;
    scComboBox1: TscComboBox;
    scDBSpinEdit1: TscDBSpinEdit;
    scDBProgressBar1: TscDBProgressBar;
    scDBTrackBar1: TscDBTrackBar;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    scDBMemo1: TscDBMemo;
    scDBLookupListBox1: TscDBLookupListBox;
    scLabel1: TscLabel;
    scLabel2: TscLabel;
    scDBLookupComboBox1: TscDBLookupComboBox;
    scImageCollection1: TscImageCollection;
    scLabel4: TscLabel;
    scDBGrid1: TscDBGrid;
    scCheckBox1: TscCheckBox;
    scCheckBox2: TscCheckBox;
    scCheckBox3: TscCheckBox;
    scLabel5: TscLabel;
    scComboBox2: TscComboBox;
    scDBAdvancedComboEdit1: TscDBAdvancedComboEdit;
    scDBNavigator1: TscDBNavigator;
    scCheckBox4: TscCheckBox;
    scCheckBox5: TscCheckBox;
    scCheckBox6: TscCheckBox;
    scPanel4: TscPanel;
    scDBTimeEdit2: TscDBTimeEdit;
    procedure FormCreate(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
    procedure scCheckBox1Click(Sender: TObject);
    procedure scCheckBox2Click(Sender: TObject);
    procedure scCheckBox3Click(Sender: TObject);
    procedure scComboBox2Click(Sender: TObject);
    procedure scCheckBox4Click(Sender: TObject);
    procedure scCheckBox5Click(Sender: TObject);
    procedure scCheckBox6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  I, J, K, H: Integer;
  B: Boolean;
  FDate: TDateTime;
  Item: TscAdvancedListItem;
begin
  if IsWindowsXP then
    scCheckBox6.Visible := False;
  ClientDataSet1.CreateDataSet;
  ClientDataSet2.CreateDataSet;
  ClientDataSet1.Open;
  ClientDataSet2.Open;
  B := True;
  scDBAdvancedComboEdit1.BeginUpdateItems;
  K := 1;
  H := 0;
  for I := 1 to 50 do
  begin
    scDBComboBox1.AddItem('Item' + IntToStr(I), nil);
    if K = 1 then
    begin
      Inc(H);
      Item := scDBAdvancedComboEdit1.Items.Add;
      Item.Header := True;
      Item.Caption := 'Header #' + IntToStr(H);
    end;
    Inc(K);
    if K = 11 then K := 1;
    Item := scDBAdvancedComboEdit1.Items.Add;
    Item.Caption := 'Item' + IntToStr(I);
  end;
  scDBAdvancedComboEdit1.EndUpdateItems;
  FDate := Now;
  for I := 1 to 50 do
  begin
    B := not B;
    J := Random(100);
    ClientDataSet1.InsertRecord(['Item' + IntToStr(I), J, B, FDate, FDate, 'Memo' + IntToStr(I)]);
    ClientDataSet2.InsertRecord(['Item' + IntToStr(I), J, FDate]);
  end;
  ClientDataSet1.First;
  scComboBox1.Items.Clear;
  scComboBox1.Items.AddStrings(TStyleManager.StyleNames);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  if scCheckBox1.Checked then
    scDBGrid1.BackgroundStyle := scgbTransparent
  else
    scDBGrid1.BackgroundStyle := scgbColor;
end;

procedure TForm1.scCheckBox2Click(Sender: TObject);
begin
  if scCheckBox2.Checked then
    scDBGrid1.Options := scDBGrid1.Options + [scdgRowSelect]
  else
    scDBGrid1.Options := scDBGrid1.Options - [scdgRowSelect] + [scdgEditing];
end;

procedure TForm1.scCheckBox3Click(Sender: TObject);
begin
  scDbGrid1.ShowFocusRect := scCheckBox3.Checked;
  scDBLookupListBox1.ShowFocusRect := scCheckBox3.Checked;
end;

procedure TForm1.scCheckBox4Click(Sender: TObject);
begin
  scDBNavigator1.Flat := scCheckBox4.Checked;
end;

procedure TForm1.scCheckBox5Click(Sender: TObject);
begin
  scDBNavigator1.TabStop := scCheckBox5.Checked;
end;

procedure TForm1.scCheckBox6Click(Sender: TObject);
begin
  scDBNavigator1.Animation := scCheckBox6.Checked;
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
end;

procedure TForm1.scComboBox2Click(Sender: TObject);
begin
  scDBGrid1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scDBComboBox1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scDBLookUpComboBox1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  scDBLookUpListBox1.SelectionStyle := TscSelectionStyle(scComboBox2.ItemIndex);
  case scComboBox2.ItemIndex  of
    0: scDBAdvancedComboEdit1.ListBoxSelectionStyle := scastStyled;
    1: scDBAdvancedComboEdit1.ListBoxSelectionStyle := scastColor;
  end;
end;

end.

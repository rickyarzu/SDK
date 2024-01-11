unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, scDevExStyleAdapter, Vcl.StdCtrls, scControls, Vcl.Themes,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, scStyledForm, scStyleManager, MidasLib,
  dxSkinsCore, cxDataControllerConditionalFormattingRulesManagerDialog;
type

  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    scLabel3: TscLabel;
    scComboBox1: TscComboBox;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxGrid1DBTableView1Field1: TcxGridDBColumn;
    cxGrid1DBTableView1Field2: TcxGridDBColumn;
    cxGrid1DBTableView1Field3: TcxGridDBColumn;
    cxGrid1DBTableView1Field4: TcxGridDBColumn;
    scLabel1: TscLabel;
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    procedure FormCreate(Sender: TObject);
    procedure scComboBox1Click(Sender: TObject);
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
  I: Integer;
  B: Boolean;
begin
  ClientDataSet1.Open;
  B := True;
  for I := 100 downto 1 do
  begin
    B := not B;
    ClientDataSet1.InsertRecord(['Item' + IntToStr(I), IntToStr(I), B, Now]);
  end;
  scComboBox1.Items.Clear;
  scComboBox1.Items.AddStrings(TStyleManager.StyleNames);
  scComboBox1.ItemIndex := scComboBox1.Items.IndexOf(TStyleManager.ActiveStyle.Name);
end;

procedure TForm1.scComboBox1Click(Sender: TObject);
begin
  TStyleManager.SetStyle(scComboBox1.Items[scComboBox1.ItemIndex]);
  if TStyleManager.ActiveStyle.Name = 'Windows' then
  begin
    cxGrid1.LookAndFeel.NativeStyle := True;
    cxLookAndFeelController1.NativeStyle := True;
  end
  else
  begin
    cxGrid1.LookAndFeel.NativeStyle := False;
    cxLookAndFeelController1.NativeStyle := False;
  end;
end;

end.

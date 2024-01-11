unit ufrmJanuaCoreFunctions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Samples.Spin, Janua.Core.Functions, Data.DB, AdvMemo, CRGrid, Vcl.Grids, Vcl.DBGrids,
  DBAccess, Uni, MemDS, VirtualTable, PgDacVcl, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  TfrmJanuaCoreFunctions = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tabDatasetFunctions: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    edInputString: TLabeledEdit;
    GroupBox1: TGroupBox;
    btnTestPadding: TSpeedButton;
    rgOperation: TRadioGroup;
    ckbIsNumber: TCheckBox;
    edStringPadding: TLabeledEdit;
    TabSheet5: TTabSheet;
    spinPadding: TSpinEdit;
    Label1: TLabel;
    edPadChar: TEdit;
    Label2: TLabel;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    edtEntry: TEdit;
    CRDBGrid1: TCRDBGrid;
    AdvMemo1: TAdvMemo;
    VirtualTable1: TVirtualTable;
    DataSource1: TDataSource;
    PgTable1: TUniTable;
    PgTable1number: TSmallintField;
    PgTable1image_url: TStringField;
    PgTable1target_url: TStringField;
    PgTable1visions: TLargeintField;
    PgTable1clicks: TLargeintField;
    PgTable1customer_id: TIntegerField;
    PgTable1ads_domain_id: TIntegerField;
    PgDataSource1: TUniDataSource;
    PgConnection1: TJanuaUniConnection;
    PgConnectDialog1: TUniConnectDialog;
    grpJsonStringToFloat: TGroupBox;
    CalcEdit1: TJvCalcEdit;
    CalcEdit2: TJvCalcEdit;
    CalcEdit3: TJvCalcEdit;
    lbJs1: TLabel;
    lbJs2: TLabel;
    lbJs3: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure btnTestPaddingClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJanuaCoreFunctions: TfrmJanuaCoreFunctions;

implementation

{$R *.dfm}

procedure TfrmJanuaCoreFunctions.btnTestPaddingClick(Sender: TObject);
var
  aString: string;
begin
  aString := self.edInputString.Text;

  case self.rgOperation.ItemIndex of
    0:
      begin
        self.edStringPadding.Text := Janua.Core.Functions.LPad(aString, self.spinPadding.Value,
          self.edPadChar.Text);
      end;
    1:
      begin

        self.edStringPadding.Text := Janua.Core.Functions.RPad(aString, self.spinPadding.Value,
          self.edPadChar.Text);

      end;
    2:
      begin
        if not Janua.Core.Functions.IsNumeric(self.edInputString.Text) then
          ShowMessage('Input non Numerico')
        else
          self.edStringPadding.Text := Janua.Core.Functions.LPad(aString.ToInt64, self.spinPadding.Value,
            self.edPadChar.Text);
      end;
    3:
      begin
        if not Janua.Core.Functions.IsNumeric(self.edInputString.Text) then
          ShowMessage('Input non Numerico')
        else
          self.edStringPadding.Text := Janua.Core.Functions.RPad(aString.ToInt64, self.spinPadding.Value,
            self.edPadChar.Text);
      end;
  end;
end;

procedure TfrmJanuaCoreFunctions.SpeedButton3Click(Sender: TObject);
begin
  self.lbJs1.Caption := Janua.Core.Json.JsonFloatToStr(self.CalcEdit1.Value, 4);
  self.lbJs2.Caption := Janua.Core.Json.JsonFloatToStr(self.CalcEdit2.Value, 4);
  self.lbJs3.Caption := Janua.Core.Json.JsonFloatToStr(self.CalcEdit3.Value, 4);
end;

end.

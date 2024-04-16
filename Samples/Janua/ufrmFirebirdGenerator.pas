unit ufrmFirebirdGenerator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.CheckLst, AdvEdit, AdvEdBtn, AdvDirectoryEdit, AdvMemo, AdvmPS;

type
  TfrmVCLFirebirdGenerator = class(TForm)
    PageControl1: TPageControl;
    tabCustomIntf: TTabSheet;
    tabCustomImpl: TTabSheet;
    tabIntf: TTabSheet;
    tabImpl: TTabSheet;
    tbDataModuleContainer: TTabSheet;
    pnlMain: TPanel;
    adeSourceDirectory: TAdvDirectoryEdit;
    pnlTabList: TPanel;
    CRDBGrid1: TCRDBGrid;
    CheckListBox1: TCheckListBox;
    memCustoIntf: TAdvMemo;
    memCustoImpl: TAdvMemo;
    btnOpenTables: TButton;
    ckbOnlyCustom: TCheckBox;
    edSchema: TEdit;
    btnGenerate: TButton;
    tabDetails: TTabSheet;
    tabModelIntf: TTabSheet;
    edMemIntf: TAdvMemo;
    edMemImpl: TAdvMemo;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    procedure btnOpenTablesClick(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLFirebirdGenerator: TfrmVCLFirebirdGenerator;

implementation

{$R *.dfm}

uses UdmFirebirdOrmGenerator;

procedure TfrmVCLFirebirdGenerator.btnGenerateClick(Sender: TObject);
begin
  dmFirebirdOrmGenerator.SchemaName := edSchema.Text;
  dmFirebirdOrmGenerator.TargetDirectory := adeSourceDirectory.Text;
  dmFirebirdOrmGenerator.Generate;
  memCustoIntf.Lines.Text := dmFirebirdOrmGenerator.CustomMasterIntf;
  memCustoImpl.Lines.Text := dmFirebirdOrmGenerator.CustomMasterImpl;
end;

procedure TfrmVCLFirebirdGenerator.btnOpenTablesClick(Sender: TObject);
begin
  dmFirebirdOrmGenerator.qryTables.Open;
end;

end.

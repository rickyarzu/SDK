unit ufrmFirebirdGenerator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.CheckLst, AdvEdit, AdvEdBtn, AdvDirectoryEdit, AdvMemo;

type
  TfrmVCLFirebirdGenerator = class(TForm)
    PageControl1: TPageControl;
    tabCustomIntf: TTabSheet;
    tabCustomImpl: TTabSheet;
    tabIntf: TTabSheet;
    tabImpl: TTabSheet;
    tbDataModuleContainer: TTabSheet;
    pnlMain: TPanel;
    AdvDirectoryEdit1: TAdvDirectoryEdit;
    pnlTabList: TPanel;
    CRDBGrid1: TCRDBGrid;
    CheckListBox1: TCheckListBox;
    memCustoIntf: TAdvMemo;
    memCustoImpl: TAdvMemo;
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

end.

unit Janua.VCL.dlgPgTablesList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, Data.DB, VCL.ExtCtrls, VCL.Grids, VCL.DBGrids, CRGrid, VCL.StdCtrls,
  VCL.Buttons;

type
  TdlgVCLPgTablesList = class(TForm)
    CRDBGrid1: TCRDBGrid;
    pnlTablesGrid: TPanel;
    dsTablesList: TDataSource;
    btnClose: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVCLPgTablesList: TdlgVCLPgTablesList;

implementation

{$R *.dfm}

end.

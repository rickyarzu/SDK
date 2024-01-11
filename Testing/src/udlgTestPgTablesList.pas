unit udlgTestPgTablesList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.StdCtrls, Vcl.Buttons;

type
  TdlgVCLTestPgTablesList = class(TForm)
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
  dlgVCLTestPgTablesList: TdlgVCLTestPgTablesList;

implementation

{$R *.dfm}

end.

unit udlgGeneraliVisualCallScript;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, CRGrid, AdvMemo, DBAdvMemo, Vcl.Buttons, AdvmSQLS;

type
  TdlgGeneraliVisualCallScript = class(TForm)
    DataSource1: TDataSource;
    pnlTop: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    CRDBGrid1: TCRDBGrid;
    AdvMemoSource1: TAdvMemoSource;
    DBAdvMemo1: TDBAdvMemo;
    DBNavigator1: TDBNavigator;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgGeneraliVisualCallScript: TdlgGeneraliVisualCallScript;

implementation

{$R *.dfm}

uses Janua.Oracle.dmVisualCall;

end.

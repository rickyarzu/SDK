unit uTestUniDACFireBird;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, Uni, MemDS, Vcl.Grids, Vcl.DBGrids, CRGrid;

type
  TForm1 = class(TForm)
    UniTable1: TUniTable;
    UniConnection1: TUniConnection;
    CRDBGrid1: TCRDBGrid;
    UniDataSource1: TUniDataSource;
    UniTable1JGUID: TGuidField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.


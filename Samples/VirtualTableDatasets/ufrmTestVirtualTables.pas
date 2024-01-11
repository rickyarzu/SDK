unit ufrmTestVirtualTables;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, DBAccess, Uni, MemDS, AdvMemo, Janua.Core.Functions, CRGrid, VirtualTable;

type
  TForm3 = class(TForm)
    PgDataSource1: TUniDataSource;
    PgTable1: TUniTable;
    PgTable1number: TSmallintField;
    PgTable1image_url: TStringField;
    PgTable1target_url: TStringField;
    PgTable1visions: TLargeintField;
    PgTable1clicks: TLargeintField;
    PgTable1customer_id: TIntegerField;
    PgTable1ads_domain_id: TIntegerField;
    PgConnection1: TJanuaUniConnection;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    edtEntry: TEdit;
    DBGrid1: TDBGrid;
    AdvMemo1: TAdvMemo;
    VirtualTable1: TVirtualTable;
    DataSource1: TDataSource;
    CRDBGrid1: TCRDBGrid;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  Janua.Core.Functions.CloneDataset(self.PgTable1, self.VirtualTable1);
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
  ExportDatasetToXMLMemo(self.PgTable1, self.AdvMemo1.Lines)
end;

end.

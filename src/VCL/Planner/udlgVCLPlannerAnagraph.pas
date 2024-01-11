unit udlgVCLPlannerAnagraph;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Janua.VCL.EnhDBGrid, Vcl.StdCtrls, Vcl.Mask;

type
  TdlgVCLPlannerAnagraph = class(TForm)
    DBNavigator1: TDBNavigator;
    grdAnagraph: TEnhDBGrid;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    btnOk: TButton;
    lbNome: TLabel;
    Cognome: TLabel;
    lbPostalCode: TLabel;
    lbTown: TLabel;
    lbAddress: TLabel;
    Telefono: TLabel;
    DBEdit6: TDBEdit;
    lbEmail: TLabel;
    DBEdit7: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVCLPlannerAnagraph: TdlgVCLPlannerAnagraph;

implementation

{$R *.dfm}

uses udmPgPlannerStorage;

end.

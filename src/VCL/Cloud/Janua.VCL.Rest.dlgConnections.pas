unit Janua.VCL.Rest.dlgConnections;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons;

type
  TdlgVCLRestConnections = class(TForm)
    DBNavigator1: TDBNavigator;
    pnlBottom: TPanel;
    DBGrid1: TDBGrid;
    dsUrl: TDataSource;
    btnOK: TBitBtn;
    edUrl: TDBEdit;
    edResource: TDBEdit;
    DBEdit1: TDBEdit;
    lbUrl: TLabel;
    lbResource: TLabel;
    lbPort: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBText1: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgVCLRestConnections: TdlgVCLRestConnections;

implementation

{$R *.dfm}

uses Janua.Rest.Fdac.dmMemUrlSettings;

end.

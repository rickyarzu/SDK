unit udlgFilesUploadConverterVCL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvProgressBar, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.VCL.EnhCRDBGrid;

type
  TForm2 = class(TForm)
    AdvProgressBar1: TAdvProgressBar;
    CRDBGrid1: TEnhCRDBGrid;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses udmCMSViewModel;

end.

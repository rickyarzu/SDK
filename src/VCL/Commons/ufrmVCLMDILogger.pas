unit ufrmVCLMDILogger;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvOfficePager, AdvMemo, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid,
  Janua.VCL.EnhCRDBGrid;

type
  TfrmVCLMDILogger = class(TForm)
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    AdvMemo1: TAdvMemo;
    EnhCRDBGrid1: TEnhCRDBGrid;
    dsLog: TDataSource;
    EnhCRDBGrid2: TEnhCRDBGrid;
    dsDBLog: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLMDILogger: TfrmVCLMDILogger;

implementation

{$R *.dfm}

end.

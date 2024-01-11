unit uframeVCLStatisticQuery;

interface

uses
  // System
  System.SysUtils, System.Variants, System.Classes,
  // Windows Specific
  Winapi.Windows, Winapi.Messages,
  // Janua Project ....................................................................................................
  Janua.VCL.EnhCRDBGrid,
  // DB  - Devart
  MemDS, VirtualTable, CRGrid, Data.DB,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.Grids, VCL.DBGrids, VCL.ExtCtrls,
  // Frames
  uframeVCLDBNavigatorSmall,
  // TMS ..............................................................................................................
  Shader, AdvOfficePager, AdvOfficePagerStylers, AdvAppStyler;

type
  TframeVCLStatisticQuery = class(TFrame)
    frameVCLDBNavigatorSmall1: TframeVCLDBNavigatorSmall;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    EnhCRDBGrid1: TEnhCRDBGrid;
    dsStats: TDataSource;
    VTableStats: TVirtualTable;
    Shader1: TShader;
    AdvFormStyler1: TAdvFormStyler;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

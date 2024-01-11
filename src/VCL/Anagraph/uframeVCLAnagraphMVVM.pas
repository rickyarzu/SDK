unit uframeVCLAnagraphMVVM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, SVGIconImageList, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid,
  Janua.VCL.EnhCRDBGrid, SVGIconImageListBase;

type
  TframeVCLAnagraphMVVM = class(TFrame)
    Panel1: TPanel;
    Panel4: TPanel;
    DBNavigator2: TDBNavigator;
    Panel5: TPanel;
    ButtonedEdit1: TButtonedEdit;
    ToolBar1: TToolBar;
    ckbName: TToolButton;
    ckbTown: TToolButton;
    ImgListEnabled16: TSVGIconImageList;
    ImgListDisabled16: TSVGIconImageList;
    grdAnagraph: TEnhCRDBGrid;
    Panel2: TPanel;
    procedure grdAnagraphCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TframeVCLAnagraphMVVM.grdAnagraphCellClick(Column: TColumn);
begin

end;

end.

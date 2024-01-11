unit ufrmGridsTestings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Actions, Vcl.ActnList,
  Vcl.ImgList, Vcl.Buttons, Vcl.StdCtrls, Janua.Core.Classes, Janua.Vcl.Actions, Vcl.DBCtrls, Vcl.Menus,
  Vcl.ToolWin, Vcl.ComCtrls, Janua.Vcl.ViewModel, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Themes,
  Vcl.DBCGrids, Vcl.Samples.Spin, Vcl.wwdbigrd, Vcl.wwdbgrid,
  // Icon Image List
  System.ImageList, SVGIconImageListBase, SVGIconImageList,
  // TMS
  Lucombo, AdvSplitter, Planner,
  // DB Controls
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Bindings.Intf, Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, Janua.Vcl.EnhCRDBGrid,
  // DataModules
  udmVirtualAnagraph;
// , Vcl.DBCtrls, Vcl.ExtCtrls

type
  TfrmVCLTestGrids = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    pgGrids: TPageControl;
    tabOriginalWoll2Woll: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    pnlOriginalWoll2Woll: TPanel;
    pnlWoll2WollMainGrid: TPanel;
    dbnavWoll2Woll: TDBNavigator;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    grdCustom: TwwDBGrid;
    pnlWoll2WollGridByCode: TPanel;
    DBNavigator2: TDBNavigator;
    pnlWoll2Woll: TPanel;
    DBNavigator3: TDBNavigator;
    wwDBGrid4: TwwDBGrid;
    dsAnagraphTest: TDataSource;
    dsCustomGrid: TDataSource;
    btnWoll2WollSetup: TButton;
    btnWoll2WollCustomizeGrid: TButton;
    btnTrueFalse: TButton;
    btnDatasetGridCode: TButton;
    btnGridIJanuaRecordSet: TButton;
    procedure btnWoll2WollCustomizeGridClick(Sender: TObject);
    procedure btnWoll2WollSetupClick(Sender: TObject);
    procedure btnTrueFalseClick(Sender: TObject);
  private
    { Private declarations }
    FdmAnagraph: TdmVirtualAnagraph;
  public
    { Public declarations }
    procedure test;
  end;

var
  frmVCLTestGrids: TfrmVCLTestGrids;

implementation

{$R *.dfm}

procedure TfrmVCLTestGrids.btnWoll2WollCustomizeGridClick(Sender: TObject);
var
  I : Integer;
  procedure SetColumn(aColumn, aTitle: string; aDisplayWidth: integer = -1);
  begin
      grdCustom.DataSource.DataSet.FieldByName(aColumn).Visible := True;
      grdCustom.ColumnByName(aColumn).DisplayLabel := aTitle;
    if aDisplayWidth > - 1 then
       grdCustom.ColumnByName(aColumn).DisplayWidth := aDisplayWidth;
  end;
begin

  for I := 0 to  Pred(grdCustom.DataSource.DataSet.FieldCount)  do
    grdCustom.DataSource.DataSet.Fields[I].Visible := False;
  grdCustom.LineColors.ShadowColor := clSilver;

  SetColumn('anagraph_id', 'ID');
  SetColumn('an_last_name', 'Business Name', 60);
  SetColumn('an_address', 'Address', 70);
  SetColumn('an_postal_code', 'Zip/Postal Code', 6);
  SetColumn('an_town', 'Town', 40);

  grdCustom.Invalidate;
  grdCustom.RefreshDisplay;
end;

procedure TfrmVCLTestGrids.btnWoll2WollSetupClick(Sender: TObject);
begin
  FdmAnagraph := TdmVirtualAnagraph.Create(self);
  dsCustomGrid.Dataset := FdmAnagraph.vtAnagraphs;
  dsAnagraphTest.Dataset := FdmAnagraph.vtAnagraphs;
end;

procedure TfrmVCLTestGrids.btnTrueFalseClick(Sender: TObject);
var
  T, A, B, C: boolean;
begin
   A := False; B := True; c := True;

   T :=  A and B or C;

   A := True; B := False; c := True;

   T :=  A and B or C;
end;

{ TfrmVCLTestGrids }

procedure TfrmVCLTestGrids.test;
begin

end;

end.

unit ufrmVCLAnagraphNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCGrids,
  SVGIconImageList, Vcl.Grids, Vcl.DBGrids, Janua.Vcl.EnhCRDBGrid, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ToolWin,
  // Januaproject
  uJanuaVCLForm, System.ImageList, Vcl.ImgList, Janua.Anagraph.ViewModel.Intf, CRGrid,
  SVGIconImageListBase;

type
  TfrmVCLAnagraphNavigator = class(TJanuaVCLFormModel)
    Panel1: TPanel;
    Panel2: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    grdAnagraph: TEnhCRDBGrid;
    ButtonedEdit1: TButtonedEdit;
    DBText1: TDBText;
    ToolBar1: TToolBar;
    ckbName: TToolButton;
    ckbTown: TToolButton;
    DBNavigator1: TDBNavigator;
    ImgListEnabled16: TSVGIconImageList;
    ImgListDisabled16: TSVGIconImageList;
    Panel5: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    FViewModel: IJanuaDBAnagraphViewModel;
    procedure SetViewModel(const Value: IJanuaDBAnagraphViewModel);
    { Private declarations }
  public
    { Public declarations }
    property ViewModel: IJanuaDBAnagraphViewModel read FViewModel write SetViewModel;
  end;

var
  frmVCLAnagraphNavigator: TfrmVCLAnagraphNavigator;

implementation

{$R *.dfm}

uses Janua.Core.Functions, Janua.Application.Framework;

procedure TfrmVCLAnagraphNavigator.FormCreate(Sender: TObject);
begin
  inherited;
  {
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphViewModel, FViewModel) then
    raise Exception.Create('TfrmVCLAnagraph.FormCreate IJanuaDBAnagraphViewModel not set');
  }
end;

procedure TfrmVCLAnagraphNavigator.SetViewModel(const Value: IJanuaDBAnagraphViewModel);
begin
  FViewModel := Value;
end;

end.

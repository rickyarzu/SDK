unit ufrmMDCAnagraph;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvOfficePager, AdvAppStyler, Vcl.ExtCtrls, Shader,
  DBAdvGlowNavigator, Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.Vcl.EnhCRDBGrid, Vcl.StdCtrls,
  AdvOfficeImage, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtDlgs, AdvGlowButton, AdvOfficeTabSet,
  AdvOfficeTabSetStylers, AdvOfficePagerStylers, Janua.Core.Cloud, Vcl.DBCGrids, Vcl.Menus,
  AdvMenus, Vcl.ImgList, uJanuaVCLfrmMDCModel;

type
  TfrmMDCParentAnagraph = class(TfrmJanuaMdcModel)
    dsAnagraph: TDataSource;
    DBCtrlGrid1: TDBCtrlGrid;
    EnhCRDBGrid1: TEnhCRDBGrid;
    Shader1: TShader;
    DBAdvGlowNavigator1: TDBAdvGlowNavigator;
    btnSearchAnagraph: TButtonedEdit;
    AdvOfficePager1: TAdvOfficePager;
    advPageAnagraph: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    Shader2: TShader;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    imgLogoAziendale: TAdvOfficeImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    AdvGlowButton1: TAdvGlowButton;
    Shader3: TShader;
    DBText1: TDBText;
    dsGroups: TDataSource;
    popGroups: TAdvPopupMenu;
    mnuAddGroup: TMenuItem;
    mnuDelGroup: TMenuItem;
    N1: TMenuItem;
    mnuManageGroups: TMenuItem;
    AdvOfficePage1: TAdvOfficePage;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    AdvOfficePage2: TAdvOfficePage;
    Label11: TLabel;
    DBMemo1: TDBMemo;
    dsAnagraphPharmacies: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure dsAnagraphDataChange(Sender: TObject; Field: TField);
  private
    FJanuaServerCoud: Janua.Core.Cloud.TJanuaCustomServerCloud;
    FAnagraph_id: int64;
    procedure SetJanuaServerCoud(const Value: Janua.Core.Cloud.TJanuaCustomServerCloud);
    procedure LoadAnagraphImage;
    { Private declarations }
  public
    { Public declarations }
    property JanuaServerCoud: Janua.Core.Cloud.TJanuaCustomServerCloud read FJanuaServerCoud
      write SetJanuaServerCoud;
  end;

var
  frmMDCParentAnagraph: TfrmMDCParentAnagraph;

implementation

{$R *.dfm}

uses udmPgAnagraph, udmPgAnagraphPharmacies;

procedure TfrmMDCParentAnagraph.AdvGlowButton1Click(Sender: TObject);
var
  i: integer;
begin
  i := self.LoadPictureDB;
  if i > 0 then
  begin
    self.imgLogoAziendale.Picture.LoadFromFile(FSelectedPictureFile);
    self.dsAnagraph.DataSet.Edit;
    self.dsAnagraph.DataSet.FieldByName('an_image_id').AsInteger := i;
    self.dsAnagraph.DataSet.Post;
  end;
end;

procedure TfrmMDCParentAnagraph.dsAnagraphDataChange(Sender: TObject; Field: TField);
begin
  if self.dsAnagraph.DataSet.FieldByName('anagraph_id').AsLargeInt <> self.FAnagraph_id then
  begin
    self.FAnagraph_id := self.dsAnagraph.DataSet.FieldByName('anagraph_id').AsLargeInt;
    LoadAnagraphImage
  end;

end;

procedure TfrmMDCParentAnagraph.FormCreate(Sender: TObject);
begin
  if not Assigned(dmPgAnagraph) then
    Application.CreateForm(TdmPgAnagraph, dmPgAnagraph);
  Application.CreateForm(TdmPgAnagraphPharmacies, dmPgAnagraphPharmacies);
  self.dsAnagraph.DataSet.Open;
end;

procedure TfrmMDCParentAnagraph.SetJanuaServerCoud
  (const Value: Janua.Core.Cloud.TJanuaCustomServerCloud);
begin
  FJanuaServerCoud := Value;
  LoadAnagraphImage
end;

procedure TfrmMDCParentAnagraph.LoadAnagraphImage;
begin
  // load anagraph Image
  SetPictureDB(FAnagraph_id, self.imgLogoAziendale.Picture)
end;

end.

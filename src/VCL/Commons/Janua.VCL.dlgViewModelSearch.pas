unit Janua.VCL.dlgViewModelSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.ExtCtrls, VCL.StdCtrls, Data.DB, VCL.Grids, VCL.DBGrids,
  // Januaproject
  Janua.Search.ViewModels.Intf, Janua.Bindings.Intf,
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Search.ViewModels.Engines.Intf,
  // Interposers
  Janua.VCL.Interposers, Vcl.ComCtrls;

type
  TdlgViewModelSearch = class(TJanuaVCLFormModel, ISearchForm, IJanuaForm, IJanuaContainer, IJanuaBindable)
    pnlMainSearch: TPanel;
    edSearchText: TEdit;
    grdSearch: TDBGrid;
    pnlBottom: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    procedure edSearchTextChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FSearchViewModel: ISearchViewModel;
  protected
    { Private declarations }
    function GetViewModel: ISearchViewModel;
    procedure SetViewModel(const Value: ISearchViewModel);
  public
    constructor Create(AOwner: TComponent); override;
  public
    { Public declarations }
    property ViewModel: ISearchViewModel read GetViewModel write SetViewModel;
  end;

var
  dlgViewModelSearch: TdlgViewModelSearch;

implementation

uses Janua.Orm.Types;

{$R *.dfm}

constructor TdlgViewModelSearch.Create(AOwner: TComponent);
begin
  inherited;
end;

procedure TdlgViewModelSearch.edSearchTextChange(Sender: TObject);
begin
  inherited;
  FSearchViewModel.SearchText := edSearchText.Text;
end;

procedure TdlgViewModelSearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  edSearchText.OnChange := nil;

end;

procedure TdlgViewModelSearch.FormShow(Sender: TObject);
var
  lCol: TColumn;
  lGridField: TJanuaGridColumnField;
begin
  inherited;
  if not Assigned(FSearchViewModel) then
    raise Exception.Create('TdlgViewModelSearch.FormShow FSearchViewModel NOT SET');
  begin
    edSearchText.Text := FSearchViewModel.SearchText;
    { FSearchViewModel.Bind('SearchText', edSearchText, 'Text'); }

    if (FSearchViewModel.jdsSearch.GridColumns.Count > 0) and (grdSearch.Columns.Count = 1) then
      for lGridField in FSearchViewModel.jdsSearch.GridColumns do
      begin
        lCol := grdSearch.Columns.Add;
        lCol.Field := lGridField.MappedField;
        lCol.Title.Caption := lGridField.Title;
        lCol.Width := lGridField.GridFieldDef.DisplayWidth;
      end;

    {
      //then you can set its properties as your needs
      Col.Title.Caption := 'MyNewColumn'; }

    grdSearch.DataSource := FSearchViewModel.dsSearch;
    edSearchText.OnChange := edSearchTextChange;
  end;

end;

{ TdlgViewModelSearch }

function TdlgViewModelSearch.GetViewModel: ISearchViewModel;
begin
  Result := FSearchViewModel;
end;

procedure TdlgViewModelSearch.SetViewModel(const Value: ISearchViewModel);
begin
  FSearchViewModel := Value;
end;

end.


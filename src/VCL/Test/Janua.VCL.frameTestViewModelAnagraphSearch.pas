unit Janua.VCL.frameTestViewModelAnagraphSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Janua.Vcl.ViewModel.Search, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  JOrm.Anagraph.Intf, Janua.Search.ViewModels.Engines.Intf, Janua.Vcl.Interposers;

type
  TframeTestViewModelAnagraphSearch = class(TFrame)
    grpTestShippingAddress: TGroupBox;
    lbStreetAddress: TLabel;
    lbPostalCode: TLabel;
    lbTown: TLabel;
    lbStateProvince: TLabel;
    lbNumber: TLabel;
    edCompanyAddress: TEdit;
    edPostalCode: TEdit;
    edTown: TEdit;
    edStateProvince: TEdit;
    edAddressNumber: TEdit;
    edGoogleSearchAddress: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    FAnagraphRecord: IAnagraph;
    FViewModelController: TJanuaVCLSearchController;
    FSearchViewModelAnagraph: ISearchViewModelAnagraph;
    procedure SetAnagraphRecord(const Value: IAnagraph);
    procedure SetSearchViewModelAnagraph(const Value: ISearchViewModelAnagraph);
    { Private declarations }
    property AnagraphRecord: IAnagraph read FAnagraphRecord write SetAnagraphRecord;
  public
    { Public declarations }
    procedure CallBackSearch(aRecordCount: Integer);
  public
    property SearchViewModelAnagraph: ISearchViewModelAnagraph read FSearchViewModelAnagraph
      write SetSearchViewModelAnagraph;
  end;

implementation

uses
  Janua.Application.Framework, Janua.ViewModels.Application, Janua.Orm.Impl;

{$R *.dfm}

procedure TframeTestViewModelAnagraphSearch.Button1Click(Sender: TObject);
begin
  // FAnagraphRecord: IAnagraph
  TJanuaOrmFactory.TryGetRecordIntf(IAnagraph, FAnagraphRecord, 'testanagraph');
  FViewModelController := TJanuaVCLSearchController.Create(self);
  FViewModelController.SearchInput := edGoogleSearchAddress;
  TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelAnagraph, 9, FSearchViewModelAnagraph);
  FViewModelController.SearchViewModel := FSearchViewModelAnagraph;
  FSearchViewModelAnagraph.CallBackSearch := CallBackSearch;
  FViewModelController.Activate;
  edGoogleSearchAddress.Text := FAnagraphRecord.AnLastName.AsString;
  FAnagraphRecord.AnLastName.Bind('AsString', edGoogleSearchAddress, 'Text');
  edCompanyAddress.Text := FAnagraphRecord.AnAddress.AsString;
  FAnagraphRecord.AnAddress.Bind('AsString', edCompanyAddress, 'Text');
  edAddressNumber.Text := FAnagraphRecord.AnAddressNumber.AsString;
  FAnagraphRecord.AnAddressNumber.Bind('AsString', edAddressNumber, 'Text');
  edPostalCode.Text := FAnagraphRecord.AnPostalCode.AsString;
  FAnagraphRecord.AnPostalCode.Bind('AsString', edPostalCode, 'Text');
  edTown.Text := FAnagraphRecord.AnTown.AsString;
  FAnagraphRecord.AnTown.Bind('AsString', edTown, 'Text');
  edStateProvince.Text := FAnagraphRecord.AnStateProvince.AsString;
  FAnagraphRecord.AnStateProvince.Bind('AsString', edStateProvince, 'Text');
end;

{ TFrame5 }

procedure TframeTestViewModelAnagraphSearch.CallBackSearch(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
  begin
    FAnagraphRecord.AnAddress.AsString := FSearchViewModelAnagraph.Anagraph.AnAddress.AsString;
    FAnagraphRecord.AnLastName.AsString := FSearchViewModelAnagraph.Anagraph.AnLastName.AsString;
    FAnagraphRecord.AnAddressNumber.AsString := FSearchViewModelAnagraph.Anagraph.AnAddressNumber.AsString;
    FAnagraphRecord.AnPostalCode.AsString := FSearchViewModelAnagraph.Anagraph.AnPostalCode.AsString;
    FAnagraphRecord.AnTown.AsString := FSearchViewModelAnagraph.Anagraph.AnTown.AsString;
    FAnagraphRecord.AnStateProvince.AsString := FSearchViewModelAnagraph.Anagraph.AnStateProvince.AsString;
  end;
end;

procedure TframeTestViewModelAnagraphSearch.SetAnagraphRecord(const Value: IAnagraph);
begin
  FAnagraphRecord := Value;
end;

procedure TframeTestViewModelAnagraphSearch.SetSearchViewModelAnagraph(const Value: ISearchViewModelAnagraph);
begin
  FSearchViewModelAnagraph := Value;
end;

end.

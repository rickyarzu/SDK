unit uframeTestViewModelLocationSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  // Janua
  JOrm.Anagraph.Intf, Janua.Search.ViewModels.Engines.Intf, Janua.Vcl.Interposers,
  Janua.Vcl.ViewModel.Search, JOrm.Logistic.Locations.Intf;

type
  TframeTestViewModelLocationSearch = class(TFrame)
    grpTestShippingAddress: TGroupBox;
    lbCountry: TLabel;
    lbCode: TLabel;
    lbTown: TLabel;
    lbIataCode: TLabel;
    lbAreaCode: TLabel;
    edCountry: TEdit;
    edCode: TEdit;
    edStateProvinceLocation: TEdit;
    edIATACode: TEdit;
    edAreaCode: TEdit;
    edGoogleSearchAddress: TEdit;
    Button1: TButton;
    Button2: TButton;
    grpMultiTest: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edCountry1: TEdit;
    edCode1: TEdit;
    edTown1: TEdit;
    edSearch1: TEdit;
    btnMultiTest: TButton;
    btnSearch1: TButton;
    Button4: TButton;
    edSearch2: TEdit;
    Label4: TLabel;
    edCode2: TEdit;
    edCountry2: TEdit;
    Label5: TLabel;
    edTown2: TEdit;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure btnMultiTestClick(Sender: TObject);
  public
    { Public declarations }
    procedure CallBackSearch(aRecordCount: Integer);
    procedure CallBackSearch1(aRecordCount: Integer);
    procedure CallBackSearch2(aRecordCount: Integer);
  private
    // unico record di Ricerca per tutti ...................................
    FLogisticLocationRecord: ILogisticLocation;
    FLogisticLocationRecord1: ILogisticLocation;
    FLogisticLocationRecord2: ILogisticLocation;
    // unico ViewModel di Ricerca per tutti ................................
    FSearchViewModelLogisticLocation: ISearchViewModelLocation;
    FSearchViewModelLogisticLocation1: ISearchViewModelLocation;
    FSearchViewModelLogisticLocation2: ISearchViewModelLocation;
    // Multi ViewModel .....................................................
    FViewModelController: TJanuaVCLSearchController;
    FViewModelController1: TJanuaVCLSearchController;
    FViewModelController2: TJanuaVCLSearchController;
    procedure SetLogisticLocationRecord(const Value: ILogisticLocation);
    procedure SetSearchViewModelLogisticLocation(const Value: ISearchViewModelLocation);
  public
    property SearchViewModelLogisticLocation: ISearchViewModelLocation read FSearchViewModelLogisticLocation
      write SetSearchViewModelLogisticLocation;
    property LogisticLocationRecord: ILogisticLocation read FLogisticLocationRecord write SetLogisticLocationRecord;
  end;

implementation

uses
  Janua.Application.Framework, Janua.ViewModels.Application;

{$R *.dfm}

procedure TframeTestViewModelLocationSearch.Button1Click(Sender: TObject);
begin
  // FLogisticLocationRecord: ILogisticLocation
  if not TJanuaOrmFactory.TryGetRecordIntf(ILogisticLocation, FLogisticLocationRecord, 'testLogisticLocation')
  then
    raise Exception.Create('ILogisticLocation not set');
  Assert(Assigned(FLogisticLocationRecord), 'FLogisticLocationRecord not assigned');
  FViewModelController := TJanuaVCLSearchController.Create(self);
  FViewModelController.SearchInput := edGoogleSearchAddress;

  if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelLocation, 0, FSearchViewModelLogisticLocation)
  then
    raise Exception.Create('ISearchViewModelLocation not set');

  FViewModelController.SearchViewModel := FSearchViewModelLogisticLocation;
  FSearchViewModelLogisticLocation.CallBackSearch := CallBackSearch;
  FViewModelController.Activate;

  edGoogleSearchAddress.Text := FLogisticLocationRecord.Name.AsString;
  FLogisticLocationRecord.Name.Bind('AsString', edGoogleSearchAddress, 'Text');

  edCountry.Text := FLogisticLocationRecord.Country.AsString;
  FLogisticLocationRecord.Country.Bind('AsString', edCountry, 'Text');

  edAreaCode.Text := FLogisticLocationRecord.AreaCode.AsString;
  FLogisticLocationRecord.AreaCode.Bind('AsString', edAreaCode, 'Text');

  edCode.Text := FLogisticLocationRecord.Code.AsString;
  FLogisticLocationRecord.Code.Bind('AsString', edCode, 'Text');

  edStateProvinceLocation.Text := FLogisticLocationRecord.StateProvince.AsString;
  FLogisticLocationRecord.StateProvince.Bind('AsString', edStateProvinceLocation, 'Text');

  edIATACode.Text := FLogisticLocationRecord.IataCode.AsString;
  FLogisticLocationRecord.IataCode.Bind('AsString', edIATACode, 'Text');
end;

procedure TframeTestViewModelLocationSearch.btnMultiTestClick(Sender: TObject);
begin
  // FLogisticLocationRecord: ILogisticLocation
  // Mantengo Logistic Record unico ma uso diversi SearchViewModelLogistiLocations
  if not Assigned(FLogisticLocationRecord1) then
  begin
    if not TJanuaOrmFactory.TryGetRecordIntf(ILogisticLocation, FLogisticLocationRecord1, 'testLogisticLocation')
    then
      raise Exception.Create('ILogisticLocation not set');
    Assert(Assigned(FLogisticLocationRecord1), 'FLogisticLocationRecord not assigned');
  end;

  if not Assigned(FLogisticLocationRecord2) then
  begin
    if not TJanuaOrmFactory.TryGetRecordIntf(ILogisticLocation, FLogisticLocationRecord2, 'testLogisticLocation')
    then
      raise Exception.Create('ILogisticLocation not set');
    Assert(Assigned(FLogisticLocationRecord2), 'FLogisticLocationRecord not assigned');
  end;

  FViewModelController1 := TJanuaVCLSearchController.Create(self);
  FViewModelController1.SearchInput := edSearch1;
  FViewModelController1.CustomCallBackSearch := CallBackSearch1;

  FViewModelController2 := TJanuaVCLSearchController.Create(self);
  FViewModelController2.SearchInput := edSearch2;
  FViewModelController2.CustomCallBackSearch := CallBackSearch2;

  if not Assigned(FSearchViewModelLogisticLocation1) then
  begin
    if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelLocation, 0,
      FSearchViewModelLogisticLocation1) then
      raise Exception.Create('ISearchViewModelLocation not set');
  end;

  if not Assigned(FSearchViewModelLogisticLocation2) then
  begin
    if not TJanuaViewModelApplication.TryGetSearchViewModel(ISearchViewModelLocation, 0,
      FSearchViewModelLogisticLocation2) then
      raise Exception.Create('ISearchViewModelLocation not set');
  end;

  FViewModelController1.SearchViewModel := FSearchViewModelLogisticLocation1;
  FViewModelController2.SearchViewModel := FSearchViewModelLogisticLocation2;

  FSearchViewModelLogisticLocation.CallBackSearch := CallBackSearch;
  FViewModelController1.Activate;
  FViewModelController2.Activate;

  edSearch1.Text := FLogisticLocationRecord1.Name.AsString;
  FLogisticLocationRecord1.Name.Bind('AsString', edSearch1, 'Text');

  edCountry1.Text := FLogisticLocationRecord1.Country.AsString;
  FLogisticLocationRecord1.Country.Bind('AsString', edCountry1, 'Text');

  edCode1.Text := FLogisticLocationRecord1.Code.AsString;
  FLogisticLocationRecord1.Code.Bind('AsString', edCode1, 'Text');

  edTown1.Text := FLogisticLocationRecord1.StateProvince.AsString;
  FLogisticLocationRecord1.StateProvince.Bind('AsString', edTown1, 'Text');

  edSearch2.Text := FLogisticLocationRecord2.Name.AsString;
  FLogisticLocationRecord2.Name.Bind('AsString', edSearch2, 'Text');

  edCountry2.Text := FLogisticLocationRecord2.Country.AsString;
  FLogisticLocationRecord2.Country.Bind('AsString', edCountry2, 'Text');

  edCode2.Text := FLogisticLocationRecord2.Code.AsString;
  FLogisticLocationRecord2.Code.Bind('AsString', edCode2, 'Text');

  edTown2.Text := FLogisticLocationRecord2.StateProvince.AsString;
  FLogisticLocationRecord2.StateProvince.Bind('AsString', edTown2, 'Text');

end;

procedure TframeTestViewModelLocationSearch.CallBackSearch(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FLogisticLocationRecord.Assign(FSearchViewModelLogisticLocation.Location);
  {
    FAnagraphRecord.AnLastName.AsString := FSearchViewModelAnagraph.Anagraph.AnLastName.AsString;
    FAnagraphRecord.AnAddressNumber.AsString := FSearchViewModelAnagraph.Anagraph.AnAddressNumber.AsString;
    FAnagraphRecord.AnPostalCode.AsString := FSearchViewModelAnagraph.Anagraph.AnPostalCode.AsString;
    FAnagraphRecord.AnTown.AsString := FSearchViewModelAnagraph.Anagraph.AnTown.AsString;
    FAnagraphRecord.AnStateProvince.AsString := FSearchViewModelAnagraph.Anagraph.AnStateProvince.AsString;
    edIATACode.Text := FLogisticLocationRecord.IataCode.AsString;
    edStateProvinceLocation.Text := FLogisticLocationRecord.StateProvince.AsString;
    edCode.Text := FLogisticLocationRecord.Code.AsString;
    edCountry.Text := FLogisticLocationRecord.Country.AsString;
    edGoogleSearchAddress.Text := FLogisticLocationRecord.Name.AsString;
    edAreaCode.Text := FLogisticLocationRecord.AreaCode.AsString;
  }
end;

procedure TframeTestViewModelLocationSearch.CallBackSearch1(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FLogisticLocationRecord1.Assign(FSearchViewModelLogisticLocation1.Location);
end;

procedure TframeTestViewModelLocationSearch.CallBackSearch2(aRecordCount: Integer);
begin
  if aRecordCount > 0 then
    FLogisticLocationRecord2.Assign(FSearchViewModelLogisticLocation2.Location);
end;

procedure TframeTestViewModelLocationSearch.SetLogisticLocationRecord(const Value: ILogisticLocation);
begin
  FLogisticLocationRecord := Value;
end;

procedure TframeTestViewModelLocationSearch.SetSearchViewModelLogisticLocation(const Value: ISearchViewModelLocation);
begin
  FSearchViewModelLogisticLocation := Value;
end;

end.

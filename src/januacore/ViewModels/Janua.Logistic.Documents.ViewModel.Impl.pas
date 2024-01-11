unit Janua.Logistic.Documents.ViewModel.Impl;

interface

uses System.SysUtils, System.Classes, Data.DB, {udmJanuaPgDocumentsStorage,} Janua.Core.Types,
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf, Janua.Orm.Intf, JOrm.Documents.Intf, JOrm.Documents.Types.Intf,
  Janua.ViewModels.Intf, Janua.ViewModels.Templates, Janua.Logistic.Types, Janua.Documents.ViewModel.Impl,
  Janua.Anagraph.ViewModel.Intf, Janua.Documents.ViewModel.Intf, Janua.Search.ViewModels.Engines.Intf;

type
  /// <summary>TLogisticDocRowsViewModel(TDocRowsViewModel) custom ViewModel for Commodities Rows in Receipts </summary>
  TLogisticDocRowsViewModel = class(TDocRowsViewModel, IJanuaDocRowsViewModel, IJanuaDBViewModel)
  public
    constructor Create; override;
  end;

  TLogisticDocChargesViewModel = class(TDocRowsViewModel, IJanuaDocRowsViewModel, IJanuaDBViewModel)
  public
    constructor Create; override;
  end;

  TJanuaLogisticDocumentsViewModel = class(TJanuaDBDocumentsViewModel, IJanuaDBDocumentsViewModel, IJanuaDBViewModel)
  public
    constructor Create; override;
  end;

implementation

{ TJanuaLogisticDocumentsViewModel }

constructor TJanuaLogisticDocumentsViewModel.Create;
begin
  inherited;
  FCarriersID := Ord(agCarriers);
  FHoldersID := Ord(agShippers);
  FLocationsID := Ord(agLocations);
  FDocAnagraphID := Ord(agWarehouses);
end;

{ TLogisticDocRowsViewModel }

constructor TLogisticDocRowsViewModel.Create;
begin
  inherited;
  // Custom Settings and Definitions;
  FShippersGroupID := Ord(agShippers);
end;

{ TLogisticDocChargesViewModel }

constructor TLogisticDocChargesViewModel.Create;
begin
  inherited;

end;

end.

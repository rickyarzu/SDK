unit Janua.Items.ViewModel.Impl;

interface

uses
  // cxClasses
  Data.DB, System.SysUtils,
  // Janua
  Janua.Core.Classes, Janua.Models.Templates, Janua.Logistic.Types,
  Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf,
  Janua.ViewModels.Intf, Janua.ViewModels.Templates,
  Janua.Search.ViewModels.Engines.Intf,
  // JOrm
  Janua.Orm.Intf, JOrm.Items.Intf, JOrm.Logistic.Locations.Intf, JOrm.Anagraph.Intf,
  JOrm.Shipping.Intf,
  // JanuaDataModule
  Janua.Items.ViewModel.Intf;

type
  TJanuaDBItemsViewModel = class(TJanuaViewModelDBTemplate, IJanuaDBItemsViewModel)
  private
    FItemsModel: IJanuaDBItemsModel;
  strict protected // virtual methods
    procedure InternalCheck; override;
    function FactoryGetDBModel: IJanuaDBItemsModel; virtual;
    /// <summary> This methods (in the descendant) must set the correct model for the VM </summary>
    function CreateDBModel: IJanuaDBModel; override;
    function InternalActivate: boolean; override;
  protected
    function GetCurrentRecord: IItemDefinition;
    procedure SetCurrentRecord(const Value: IItemDefinition);
    function GetjdsItems: IJanuaDBDataset;
    function GetjdsGroups: IJanuaDBDataset;
    procedure SetjdsGroups(Value: IJanuaDBDataset);
    function GetdsItems: TDataSource;
    function GetdsGroups: TDataSource;
  public
    property dsGroups: TDataSource read GetdsGroups;
    property CurrentRecord: IItemDefinition read GetCurrentRecord write SetCurrentRecord;
    property dsItems: TDataSource read GetdsItems;
    property jdsItems: IJanuaDBDataset read GetjdsItems;
    property jdsGroups: IJanuaDBDataset read GetjdsGroups;
  public
    { Public declarations }
    procedure OpenAll(const aThreaded: boolean = False); override;
    procedure StartSearch; override;
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaDBItemsViewModel }

procedure TJanuaDBItemsViewModel.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaDBItemsViewModel.BeforeDestruction;
begin
  inherited;

end;

constructor TJanuaDBItemsViewModel.Create;
begin
  inherited;

end;

function TJanuaDBItemsViewModel.CreateDBModel: IJanuaDBModel;
begin

end;

destructor TJanuaDBItemsViewModel.Destroy;
begin

  inherited;
end;

function TJanuaDBItemsViewModel.FactoryGetDBModel: IJanuaDBItemsModel;
begin

end;

function TJanuaDBItemsViewModel.GetCurrentRecord: IItemDefinition;
begin

end;

function TJanuaDBItemsViewModel.GetdsGroups: TDataSource;
begin
  Result := FItemsModel.jdsGroups.DataSource

end;

function TJanuaDBItemsViewModel.GetdsItems: TDataSource;
begin
  Result := FItemsModel.jdsItems.DataSource
end;

function TJanuaDBItemsViewModel.GetjdsGroups: IJanuaDBDataset;
begin
  { TODO:  Result := FItemsModel.jdsItems }
end;

function TJanuaDBItemsViewModel.GetjdsItems: IJanuaDBDataset;
begin
  Result := self.FItemsModel.jdsItems
end;

function TJanuaDBItemsViewModel.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := True;
      end;
    except
      on e: exception do
        RaiseException('InternalActivate', e, self);
    end;

end;

procedure TJanuaDBItemsViewModel.InternalCheck;
begin
  inherited;

end;

procedure TJanuaDBItemsViewModel.OpenAll(const aThreaded: boolean);
begin
  inherited;

end;

procedure TJanuaDBItemsViewModel.SetCurrentRecord(const Value: IItemDefinition);
begin

end;

procedure TJanuaDBItemsViewModel.SetjdsGroups(Value: IJanuaDBDataset);
begin

end;

procedure TJanuaDBItemsViewModel.StartSearch;
begin
  inherited;

end;

end.

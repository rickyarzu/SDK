unit Janua.FMX.AnagraphSearch;

interface

uses
  // system
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Janua
  Janua.Core.Functions, Janua.Core.Cloud, Janua.Core.System, Janua.Core.Servers,
  Janua.Core.Classes,
  // db & devart
  Data.DB, DBAccess, VirtualTable,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
  FMX.TabControl, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TAnagraphSearchThread = class(TThread)
  private
    { Private declarations }
    // FList: string;
    FSearchString: string;
    FListView: TListView;
    FSearchDataset: TJanuaJsonDacDataset;
    FSession: TJanuaServerSession;
    // External Data Procedures ........................................
    // FTempDataSet: TVirtualTable;
    FExternalDataset: TVirtualTable;
    FUseExternalDataset: boolean;
    FCount: Integer;
    // ------------------------------------------------------------------
    procedure SetSearchString(const Value: string);
    procedure SetListView(const Value: TListView);
    procedure SetSearchDataset(const Value: TJanuaJsonDacDataset);
    // procedure SetTargetTable(const Value: TVirtualTable);
    procedure SetSession(const Value: TJanuaServerSession);
    procedure SetExternalDataset(const Value: TVirtualTable);
    procedure SetUseExternalDataset(const Value: boolean);
    procedure SetCount(const Value: Integer);
    function GetCount: Integer;
    function GetExternalDataset: TVirtualTable;
    function GetListView: TListView;
    function GetSearchDataset: TJanuaJsonDacDataset;
    function GetSearchString: string;
    function GetSession: TJanuaServerSession;
    function GetUseExternalDataset: boolean;
  protected
    procedure Execute; override;
    procedure UpdateProgress;
  public
    // External Data Procedures ........................................
    property Count: Integer read GetCount write SetCount;
    property ExternalDataset: TVirtualTable read GetExternalDataset write SetExternalDataset;
    property UseExternalDataset: boolean read GetUseExternalDataset write SetUseExternalDataset;
    // ---------------------------------------------------------------------------------------
    property Session: TJanuaServerSession read GetSession write SetSession;
    property SearchString: string read GetSearchString write SetSearchString;
    property ListView: TListView read GetListView write SetListView;
    property SearchDataset: TJanuaJsonDacDataset read GetSearchDataset write SetSearchDataset;
  end;

Type
  TJanuaFMXAnagraphSearch = class(TJanuaCoreComponent)
  private
    FListView: TListView;
    FSearchString: string;
    FSearchDataset: TJanuaJsonDacDataset;
    FJanuaServerSession: TJanuaServerSession;
    FExternalData: TVirtualTable;
    FUseExternalData: boolean;
    procedure SetListView(const Value: TListView);
    procedure SetSearchString(const Value: string);
    procedure SetSearchDataset(const Value: TJanuaJsonDacDataset);
    procedure SetJanuaServerSession(const Value: TJanuaServerSession);
    procedure SetExternalData(const Value: TVirtualTable);
    procedure SetUseExternalData(const Value: boolean);
    function GetExternalData: TVirtualTable;
    function GetListView: TListView;
    function GetSearchDataset: TJanuaJsonDacDataset;
    function GetSearchString: string;
    function GetUseExternalData: boolean;
    function GetSessionKey: string;
  public
    procedure Execute;
    constructor Create(AOwner: Tcomponent); override;
    destructor Destroy; override;
    property JanuaServerSession: TJanuaServerSession read FJanuaServerSession write SetJanuaServerSession;
    function LocateService(aService: string): boolean;
  published
    property SearchString: string read GetSearchString write SetSearchString;
    property ListView: TListView read GetListView write SetListView;
    property SearchDataset: TJanuaJsonDacDataset read GetSearchDataset write SetSearchDataset;
    property SessionKey: string read GetSessionKey;
    property ExternalData: TVirtualTable read GetExternalData write SetExternalData;
    property UseExternalData: boolean read GetUseExternalData write SetUseExternalData;
  end;

implementation

{ TJanuaFMXAnagraphSearch }

constructor TJanuaFMXAnagraphSearch.Create(AOwner: Tcomponent);
begin
  inherited;

end;

destructor TJanuaFMXAnagraphSearch.Destroy;
begin

  inherited;
end;

procedure TJanuaFMXAnagraphSearch.Execute;
begin

end;

function TJanuaFMXAnagraphSearch.GetExternalData: TVirtualTable;
begin

end;

function TJanuaFMXAnagraphSearch.GetListView: TListView;
begin

end;

function TJanuaFMXAnagraphSearch.GetSearchDataset: TJanuaJsonDacDataset;
begin
  Result := self.FSearchDataset
end;

function TJanuaFMXAnagraphSearch.GetSearchString: string;
begin
  Result := self.FSearchString
end;

function TJanuaFMXAnagraphSearch.GetSessionKey: string;
begin
  Result := self.FJanuaServerSession.Key
end;

function TJanuaFMXAnagraphSearch.GetUseExternalData: boolean;
begin

end;

function TJanuaFMXAnagraphSearch.LocateService(aService: string): boolean;
begin

end;

procedure TJanuaFMXAnagraphSearch.SetExternalData(const Value: TVirtualTable);
begin

end;

procedure TJanuaFMXAnagraphSearch.SetJanuaServerSession(const Value: TJanuaServerSession);
begin

end;

procedure TJanuaFMXAnagraphSearch.SetListView(const Value: TListView);
begin

end;

procedure TJanuaFMXAnagraphSearch.SetSearchDataset(const Value: TJanuaJsonDacDataset);
begin

end;

procedure TJanuaFMXAnagraphSearch.SetSearchString(const Value: string);
begin

end;

procedure TJanuaFMXAnagraphSearch.SetUseExternalData(const Value: boolean);
begin

end;

{ TAnagraphSearchThread }

procedure TAnagraphSearchThread.Execute;
begin
  inherited;

end;

function TAnagraphSearchThread.GetCount: Integer;
begin

end;

function TAnagraphSearchThread.GetExternalDataset: TVirtualTable;
begin

end;

function TAnagraphSearchThread.GetListView: TListView;
begin

end;

function TAnagraphSearchThread.GetSearchDataset: TJanuaJsonDacDataset;
begin

end;

function TAnagraphSearchThread.GetSearchString: string;
begin

end;

function TAnagraphSearchThread.GetSession: TJanuaServerSession;
begin

end;

function TAnagraphSearchThread.GetUseExternalDataset: boolean;
begin

end;

procedure TAnagraphSearchThread.SetCount(const Value: Integer);
begin

end;

procedure TAnagraphSearchThread.SetExternalDataset(const Value: TVirtualTable);
begin

end;

procedure TAnagraphSearchThread.SetListView(const Value: TListView);
begin

end;

procedure TAnagraphSearchThread.SetSearchDataset(const Value: TJanuaJsonDacDataset);
begin

end;

procedure TAnagraphSearchThread.SetSearchString(const Value: string);
begin

end;

procedure TAnagraphSearchThread.SetSession(const Value: TJanuaServerSession);
begin

end;

procedure TAnagraphSearchThread.SetUseExternalDataset(const Value: boolean);
begin

end;

procedure TAnagraphSearchThread.UpdateProgress;
begin

end;

end.

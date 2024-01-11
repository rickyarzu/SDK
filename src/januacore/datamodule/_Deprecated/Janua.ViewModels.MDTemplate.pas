unit Janua.ViewModels.MDTemplate;

interface

uses
  System.SysUtils, System.Classes, System.UITypes, Janua.Forms.Types,
  // Januaproject Framework
  Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Controls.Intf, Janua.ViewModels.Intf,
  Janua.Controls.Forms.Intf, Janua.Core.Classes, Data.DB;

type
  TJanuaViewModelMDTemplate = class(TJanuaInterfacedBindableObject, IJanuaDBViewModel)
  private
    FActionSearch: IJanuaAction;
    FdsDetail: TDataSource;
    FdsMaster: TDataSource;
    FMainActionList: IJanuaActionList;
  strict protected
    FActionDelete: IJanuaAction;
    FActionEdit: IJanuaAction;
    FActionNew: IJanuaAction;
    FActionPost: IJanuaAction;
    FActionPrint: IJanuaAction;
    FActionPreview: IJanuaAction;
    FActionExport: IJanuaAction;
    FActionUndo: IJanuaAction;
    function GetGridRecordActionList: IJanuaActionList;
    function GetDetailActionList: IJanuaActionList;
    function GetdsDetail: TDataSource;
    function GetdsMaster: TDataSource;
    procedure SetdsDetail(const Value: TDataSource);
    procedure SetdsMaster(const Value: TDataSource);
  protected
    { Private declarations }
    function GetMainActionList: IJanuaActionList;
    function GetMainSearchParams: IJanuaParams;
    property MainSearchParams: IJanuaParams read GetMainSearchParams;
    function GetSearchParams: IJanuaParams;
    function GetMainSearchText: string;
    procedure SetMainSearchText(const Value: string);
    function GetActionSearch: IJanuaAction;
    function GetGridMasterActionList: IJanuaActionList;
    function GetGridDetailActionList: IJanuaActionList;
  public
    // On Search Click will be connected both to search buttun and on presskey search
    procedure OnSearchClick(Sender: TObject); virtual;
    constructor Create; override;
  public
    procedure MasterNew(aAction: IJanuaAction);
  public
    property ActionSearch: IJanuaAction read GetActionSearch;
    property MainActionList: IJanuaActionList read GetMainActionList;
    property SearchParams: IJanuaParams read GetSearchParams;
    property MainSearchText: string read GetMainSearchText write SetMainSearchText;
    property dsMaster: TDataSource read FdsMaster write SetdsMaster;
    property dsDetail: TDataSource read FdsDetail write SetdsDetail;

  end;

implementation

uses Janua.Application.Framework;

{ TJanuaViewModelMDTemplate }

constructor TJanuaViewModelMDTemplate.Create;
begin
  inherited;
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaAction, FActionSearch) then
    raise Exception.Create('TJanuaViewModelMDTemplate.Create IJanuaAction not set');

  // 27 = New File, 10 Delete,
  // Add(const aCaption: string; aEnabled: boolean; aProc: TProc<IJanuaAction>)

  FActionNew := MainActionList.Add('New', False,
    procedure(aAction: IJanuaAction)
    begin

    end, 27);

  FActionEdit := MainActionList.Add('Edit', False,
    procedure(aAction: IJanuaAction)
    begin
      // basic and Simple Editing
      if Assigned(FdsMaster.Dataset) then
        FdsMaster.Dataset.Edit;
    end);

  FActionPost := MainActionList.Add('Save', False,
    procedure(aAction: IJanuaAction)
    begin

    end);

  FActionDelete := MainActionList.Add('Delete', False,
    procedure(aAction: IJanuaAction)
    begin

    end); // IJanuaAction;
  FActionPrint := MainActionList.Add('Print', False,
    procedure(aAction: IJanuaAction)
    begin

    end); // IJanuaAction;
  FActionPreview := MainActionList.Add('Preview', False,
    procedure(aAction: IJanuaAction)
    begin

    end); // IJanuaAction;
  FActionExport := MainActionList.Add('Export', False,
    procedure(aAction: IJanuaAction)
    begin

    end); // IJanuaAction;
  FActionUndo := MainActionList.Add('Undo', False,
    procedure(aAction: IJanuaAction)
    begin

    end); // IJanuaAction;
end;

function TJanuaViewModelMDTemplate.GetActionSearch: IJanuaAction;
begin
  Result := FActionSearch;
end;

function TJanuaViewModelMDTemplate.GetDetailActionList: IJanuaActionList;
begin

end;

function TJanuaViewModelMDTemplate.GetdsDetail: TDataSource;
begin
  Result := self.dsInternalDetails
end;

function TJanuaViewModelMDTemplate.GetdsMaster: TDataSource;
begin
  Result := self.dsInternalMaster
end;

function TJanuaViewModelMDTemplate.GetGridDetailActionList: IJanuaActionList;
begin

end;

function TJanuaViewModelMDTemplate.GetGridMasterActionList: IJanuaActionList;
begin

end;

function TJanuaViewModelMDTemplate.GetGridRecordActionList: IJanuaActionList;
begin

end;

function TJanuaViewModelMDTemplate.GetMainActionList: IJanuaActionList;
begin

end;

function TJanuaViewModelMDTemplate.GetMainSearchParams: IJanuaParams;
begin

end;

function TJanuaViewModelMDTemplate.GetMainSearchText: string;
begin

end;

function TJanuaViewModelMDTemplate.GetSearchParams: IJanuaParams;
begin

end;

procedure TJanuaViewModelMDTemplate.MasterNew(aAction: IJanuaAction);
begin

end;

procedure TJanuaViewModelMDTemplate.OnSearchClick(Sender: TObject);
begin

end;

procedure TJanuaViewModelMDTemplate.SetdsDetail(const Value: TDataSource);
begin
  FdsDetail := Value;
end;

procedure TJanuaViewModelMDTemplate.SetdsMaster(const Value: TDataSource);
begin
  FdsMaster := Value;
end;

procedure TJanuaViewModelMDTemplate.SetMainSearchText(const Value: string);
begin

end;

end.

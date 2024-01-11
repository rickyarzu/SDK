unit Janua.Core.AppController;

interface

uses System.Classes, System.ImageList, System.SysUtils, System.Variants, System.Generics.Collections,
  Janua.Core.Classes;

type
  TComponentClass = class of TComponent;

  TJanuaApp = class
  private
    FFormMDC: TComponentClass;
    FExecProc: TProc;
    procedure SetExecProc(const Value: TProc);
    procedure SetFormMDC(const Value: TComponentClass);
  public
    property FormMDC: TComponentClass read FFormMDC write SetFormMDC;
    property ExecProc: TProc read FExecProc write SetExecProc;
  end;

  TJanuaAppGroup = class
  private
    FName: string;
    FTitle: string;
    FApps: TObjectList<TJanuaAppGroup>;
    FImageID: integer;
    procedure SetApps(const Value: TObjectList<TJanuaAppGroup>);
    procedure SetImageID(const Value: integer);
    procedure SetName(const Value: string);
    procedure SetTitle(const Value: string);
  public
    property Title: string read FTitle write SetTitle;
    property Name: string read FName write SetName;
    property ImageID: integer read FImageID write SetImageID;
    property Apps: TObjectList<TJanuaAppGroup> read FApps write SetApps;
  end;

  TJanuaAppsCollection = class(TJanuaCoreComponent)
  private
    FAppGroups: TObjectList<TJanuaAppGroup>;
    FGroupImageList: TBaseImageList;
    FAppsImageList: TBaseImageList;
    FApps: TObjectList<TJanuaApp>;
    FGroupAppsImageList: TBaseImageList;
    procedure SetAppGroups(const Value: TObjectList<TJanuaAppGroup>);
    procedure SetAppsImageList(const Value: TBaseImageList);
    procedure SetGroupImageList(const Value: TBaseImageList);
    procedure SetApps(const Value: TObjectList<TJanuaApp>);
    procedure SetGroupAppsImageList(const Value: TBaseImageList);
  public
    function AddGroup: TJanuaAppGroup;
    function AddApp: TJanuaApp;
  public
    property AppGroups: TObjectList<TJanuaAppGroup> read FAppGroups write SetAppGroups;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property GroupImageList: TBaseImageList read FGroupImageList write SetGroupImageList;
    property AppsImageList: TBaseImageList read FAppsImageList write SetAppsImageList;
    property GroupAppsImageList: TBaseImageList read FGroupAppsImageList write SetGroupAppsImageList;
    property Apps: TObjectList<TJanuaApp> read FApps write SetApps;
  end;

implementation

{ TJanuaAppsController }

function TJanuaAppsCollection.AddApp: TJanuaApp;
begin
  Result := TJanuaApp.Create;
  FApps.Add(Result);
end;

function TJanuaAppsCollection.AddGroup: TJanuaAppGroup;
begin
  Result := TJanuaAppGroup.Create;
  FAppGroups.Add(Result);
end;

constructor TJanuaAppsCollection.Create(AOwner: TComponent);
begin
  inherited;
  FAppGroups := TObjectList<TJanuaAppGroup>.Create;
  FApps := TObjectList<TJanuaApp>.Create;
end;

destructor TJanuaAppsCollection.Destroy;
begin
  FAppGroups.Free;

  inherited;
end;

procedure TJanuaAppsCollection.SetAppGroups(const Value: TObjectList<TJanuaAppGroup>);
begin
  FAppGroups := Value;
end;

procedure TJanuaAppsCollection.SetApps(const Value: TObjectList<TJanuaApp>);
begin
  FApps := Value;
end;

procedure TJanuaAppsCollection.SetAppsImageList(const Value: TBaseImageList);
begin
  FAppsImageList := Value;
end;

procedure TJanuaAppsCollection.SetGroupAppsImageList(const Value: TBaseImageList);
begin
  FGroupAppsImageList := Value;
end;

procedure TJanuaAppsCollection.SetGroupImageList(const Value: TBaseImageList);
begin
  FGroupImageList := Value;
end;

{ IJanuaApp }

procedure TJanuaApp.SetExecProc(const Value: TProc);
begin
  FExecProc := Value;
end;

procedure TJanuaApp.SetFormMDC(const Value: TComponentClass);
begin
  FFormMDC := Value;
end;

{ TJanuaAppGroup }

procedure TJanuaAppGroup.SetApps(const Value: TObjectList<TJanuaAppGroup>);
begin
  FApps := Value;
end;

procedure TJanuaAppGroup.SetImageID(const Value: integer);
begin
  FImageID := Value;
end;

procedure TJanuaAppGroup.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TJanuaAppGroup.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

end.

unit Janua.Reporting.Impl;

interface

uses Spring.Collections, Janua.Reporting.Intf, Janua.Core.Classes, Janua.Core.Classes.Intf;

type
  TJanuaReporter = Class(TJanuaInterfacedBindableObject, IJanuaReporter, IJanuaInterface)
  private
    FTitle: string;
    FImageIndex: Integer;
  protected
    function GetImageIndex: Integer;
    procedure SetImageIndex(const Value: Integer);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
  public
    constructor Create; override;
    procedure Execute(const aPreview: boolean = False); virtual; abstract;
    /// <summary> property Title to be displayed on Screen </Summary>
    property Title: string read GetTitle write SetTitle;
    property ImageIndex: Integer read GetImageIndex write SetImageIndex;
  end;

  TJanuaReportingList = Class(TJanuaInterfacedBindableObject, IJanuaReportingList, IJanuaInterface)
  private
    FActionList: IJanuaActionList;
    FItemIndex: Integer;
    FItems: IList<IJanuaReporter>;
    FPreview: boolean;
    function GetItemIndex: Integer;
    procedure SetItemIndex(const Value: Integer);
  protected
    function GetActionList: IJanuaActionList;
    function GetItems: IList<IJanuaReporter>;
    function GetSelectedItem: IJanuaReporter;
    procedure SetActionList(const Value: IJanuaActionList);
    function GetPreview: boolean;
    procedure SetPreview(const Value: boolean);
  public
    constructor Create; override;
    destructor Destroy; override;
    function Add(aGUID: TGUID; const aImgIndex: Integer = -1; const aTitle: string = ''): IJanuaReporter;
    function SelectReporter: boolean;
  public
    property ActionList: IJanuaActionList read GetActionList write SetActionList;
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    property Items: IList<IJanuaReporter> read GetItems;
    property SelectedItem: IJanuaReporter read GetSelectedItem;
  end;

implementation

uses  System.SysUtils, Janua.Application.Framework;

{ TJanuaReporter }

constructor TJanuaReporter.Create;
begin
  inherited;
  FImageIndex := -1;
end;

function TJanuaReporter.GetImageIndex: Integer;
begin
  Result := self.FImageIndex
end;

function TJanuaReporter.GetTitle: string;
begin
  Result := self.FTitle
end;

procedure TJanuaReporter.SetImageIndex(const Value: Integer);
begin
  if Value <> self.FImageIndex then
  begin
    FImageIndex := Value;
    BindManager.Notify('ImageIndex');
  end;
end;

procedure TJanuaReporter.SetTitle(const Value: string);
begin
  self.FTitle := Value;
end;

{ TJanuaReportingList }

function TJanuaReportingList.Add(aGUID: TGUID; const aImgIndex: Integer; const aTitle: string): IJanuaReporter;
var
  lAction: IJanuaAction;
  lItemIndex: Integer;
begin
  if TJanuaApplicationFactory.TryGetInterface(aGUID, Result) then
  begin
    Result.Title := aTitle;
    Result.ImageIndex := aImgIndex;
    FItems.Add(Result);
    lItemIndex := FItems.Count - 1;

    lAction := FActionList.Add(aTitle, True,
      procedure(aAction: IJanuaAction)
      begin
        ItemIndex := aAction.Tag;
        if ItemIndex > -1 then
          SelectedItem.Execute(FPreview);
      end, jasCustom, aImgIndex);

    lAction.SetTag(lItemIndex);

  end;
end;

constructor TJanuaReportingList.Create;
begin
  inherited;
  FActionList := TJanuaActionList.Create;
  (*
    FActionList: IJanuaActionList;
    FItemIndex: Integer;
    FItems: IList<IJanuaReporter>;
    FPreview: Boolean;
  *)
  FItemIndex := -1;
  FPreview := False;
  FItems := TCollections.CreateList<IJanuaReporter>;
end;

destructor TJanuaReportingList.Destroy;
begin
  try
    FActionList := nil;
    FItems := nil;
  except
    on e: Exception do
      LogException('AfterConstruction', e, self);
  end;
  inherited;
end;

function TJanuaReportingList.GetActionList: IJanuaActionList;
begin
  Result := FActionList;
end;

function TJanuaReportingList.GetItemIndex: Integer;
begin
  Result := FItemIndex;
end;

function TJanuaReportingList.GetItems: IList<IJanuaReporter>;
begin
  Result := self.FItems
end;

function TJanuaReportingList.GetPreview: boolean;
begin
  Result := FPreview
end;

function TJanuaReportingList.GetSelectedItem: IJanuaReporter;
begin
  if FItemIndex > -1 then
    Result := FItems[FItemIndex];
end;

function TJanuaReportingList.SelectReporter: boolean;
var
  lArray: TArray<string>;
  iArray: TArray<Integer>;
  I: Integer;
begin
  SetLength(lArray, self.Items.Count);
  SetLength(iArray, Items.Count);
  for I := 0 to Pred(self.Items.Count) do
  begin
    lArray[I] := self.Items[I].Title;
    iArray[I] := self.Items[I].ImageIndex;
  end;

  FItemIndex := TJanuaApplication.Dialogs.SelectMultiString('Select Report', lArray { choices } , iArray);
  Result := FItemIndex > -1;
end;

procedure TJanuaReportingList.SetActionList(const Value: IJanuaActionList);
begin
  FActionList := Value;
end;

procedure TJanuaReportingList.SetItemIndex(const Value: Integer);
begin
  FItemIndex := Value;
end;

procedure TJanuaReportingList.SetPreview(const Value: boolean);
begin
  FPreview := Value
end;

end.

unit Janua.Core.Cms.GraphicMenu;

interface

uses System.Classes, System.SysUtils,
  // Janua
  Janua.Core.Functions, Janua.Core.Classes,
  // Database
  Data.DB, Janua.Core.Servers;

type
  TJanuaGraphicMenuRow = record
    id: Int64;
    title: string;
    GroupID: integer;
    imgUrl: string;
    imgID: Int64;
    template: string;
    groupslug: string;
  public
    Constructor Create(aDataset: TDataset);
    function AsHtml: string; overload;
    function AsHtml(aTemplate, aGroupslug: string): string; overload;
    function AsJsonObject: string;
    function AsJsonObjetString: string;
    function AsJson: string;
    function AsJsonString: string;
    procedure LoadFromDataset(aDataset: TDataset);
  end;

type
  TJanuaGraphicMenuGroup = record
    id: integer;
    title: string;
    menuID: integer;
    cssClass: string;
    cssColor: string;
    CssTemplate: string;
    HtmlTemplate: string;
    RowTemplate: string;
    Items: array of TJanuaGraphicMenuRow;
  public
    Constructor Create(aDataset, aRow: TDataset);
    function count: integer;
    function AsCSS: string;
    function AsHtml: string;
    function RowsHtml: string;
    function AsJsonObject: string;
    function AsJsonObjetString: string;
    function AsJson: string;
    function AsJsonString: string;
    procedure LoadFromDataset(aDataset, aRow: TDataset);
  end;

type
  TJanuaGraphicRecordMenu = record
    id: integer;
    title: string;
    Items: array of TJanuaGraphicMenuGroup;
    template, TemplateGroup, TemplateCss, TemplateRow: string;
  public
    function count: integer;
    function AsHtml: string;
    function AsJsonObject: string;
    function AsJsonObjetString: string;
    function AsJson: string;
    function AsJsonString: string;
    procedure LoadFromDataset(aDataset, aGroup, aRow: TDataset);
  end;

type
  TJanuaGraphicMenu = class(Janua.Core.Servers.TJanuaServerObject)
  private
    FTitle: string;
    FmdsMenu: TDataset;
    FGroupDatasource: TDataSource;
    FDatasource: TDataSource;
    FRowDataSource: TDataSource;
    FmdsGroups: TDataset;
    FmdsRows: TDataset;
    FJanuaGraphicRecordMenu: TJanuaGraphicRecordMenu;
    procedure SetID(const Value: integer);
    procedure SetTitle(const Value: string);
    procedure SetDatasource(const Value: TDataSource);
    procedure SetGroupDatasource(const Value: TDataSource);
    procedure SetmdsMenu(const Value: TDataset);
    procedure SetRowDataSource(const Value: TDataSource);
    procedure SetmdsGroups(const Value: TDataset);
    procedure SetmdsRows(const Value: TDataset);
    procedure SetJanuaGraphicRecordMenu(const Value: TJanuaGraphicRecordMenu);
    procedure AssignDataSources;
  protected
    FID: integer;
    procedure InternalOpenMenu; virtual; abstract;
  public
    property mdsMenu: TDataset read FmdsMenu write SetmdsMenu;
    property mdsGroups: TDataset read FmdsGroups write SetmdsGroups;
    property mdsRows: TDataset read FmdsRows write SetmdsRows;
    property JanuaGraphicRecordMenu: TJanuaGraphicRecordMenu read FJanuaGraphicRecordMenu
      write SetJanuaGraphicRecordMenu;
    function AsHtml: string;
    procedure OpenMenu(aID: integer); overload;
    procedure OpenMenu; overload;
    function Activate: boolean; override;
  published
    property id: integer read FID write SetID;
    property title: string read FTitle write SetTitle;
    property Datasource: TDataSource read FDatasource write SetDatasource;
    property GroupDatasource: TDataSource read FGroupDatasource write SetGroupDatasource;
    property RowDataSource: TDataSource read FRowDataSource write SetRowDataSource;
  end;

implementation

{ TJanuaGraphicMenuRow }

function TJanuaGraphicMenuRow.AsHtml: string;
begin
  Result := self.template;
  Janua.Core.Functions.HtmlReplace(Result, 'groupslug', self.groupslug);
  Janua.Core.Functions.HtmlReplace(Result, 'url', self.imgUrl);
  Janua.Core.Functions.HtmlReplace(Result, 'title', self.title);
end;

function TJanuaGraphicMenuRow.AsHtml(aTemplate, aGroupslug: string): string;
begin
  self.template := aTemplate;
  self.groupslug := aGroupslug;
  Result := self.AsHtml;
end;

function TJanuaGraphicMenuRow.AsJson: string;
begin

end;

function TJanuaGraphicMenuRow.AsJsonObject: string;
begin

end;

function TJanuaGraphicMenuRow.AsJsonObjetString: string;
begin

end;

function TJanuaGraphicMenuRow.AsJsonString: string;
begin

end;

constructor TJanuaGraphicMenuRow.Create(aDataset: TDataset);
begin
  self.LoadFromDataset(aDataset);
end;

procedure TJanuaGraphicMenuRow.LoadFromDataset(aDataset: TDataset);
begin
  self.id := aDataset.FieldByName('id').AsInteger;
  self.title := aDataset.FieldByName('title').AsWideString;
  self.GroupID := aDataset.FieldByName('group_id').AsInteger;
  self.imgUrl := aDataset.FieldByName('img_url').AsWideString;
  self.imgID := aDataset.FieldByName('img_id').AsInteger;
end;

{ TJanuaMenuGroup }

function TJanuaGraphicMenuGroup.AsCSS: string;
begin
  Result := self.CssTemplate;
  Janua.Core.Functions.HtmlReplace(Result, 'slug', self.cssClass);
  Janua.Core.Functions.HtmlReplace(Result, 'csscolor', self.cssColor);
end;

function TJanuaGraphicMenuGroup.AsHtml: string;
begin
  Result := self.HtmlTemplate;
  Janua.Core.Functions.HtmlReplace(Result, 'slug', self.cssClass);
  Janua.Core.Functions.HtmlReplace(Result, 'title', self.title);
end;

function TJanuaGraphicMenuGroup.AsJson: string;
begin

end;

function TJanuaGraphicMenuGroup.AsJsonObject: string;
begin

end;

function TJanuaGraphicMenuGroup.AsJsonObjetString: string;
begin

end;

function TJanuaGraphicMenuGroup.AsJsonString: string;
begin

end;

function TJanuaGraphicMenuGroup.count: integer;
begin
  Result := Length(self.Items);
end;

constructor TJanuaGraphicMenuGroup.Create(aDataset, aRow: TDataset);
begin
  self.LoadFromDataset(aDataset, aRow);
end;

procedure TJanuaGraphicMenuGroup.LoadFromDataset(aDataset, aRow: TDataset);
begin
  self.id := aDataset.FieldByName('id').AsInteger;
  self.title := aDataset.FieldByName('title').AsWideString;
  self.menuID := aDataset.FieldByName('menu_id').AsInteger;
  self.cssClass := aDataset.FieldByName('css_class').AsWideString;
  self.cssColor := aDataset.FieldByName('css_color').AsWideString;
  aRow.First;
  SetLength(self.Items, 0);
  aRow.First;
  while not aRow.Eof do
  begin
    SetLength(self.Items, self.count + 1);
    Items[self.count - 1].LoadFromDataset(aRow);
    Items[self.count - 1].template := self.RowTemplate;
    aRow.Next;
  end;
end;

function TJanuaGraphicMenuGroup.RowsHtml: string;
var
  aRow: TJanuaGraphicMenuRow;
  sTemp: TStrings;
begin
  sTemp := TStringList.Create;
  try
    sTemp.Clear;
    for aRow in self.Items do
      sTemp.Add(aRow.AsHtml(self.RowTemplate, self.cssClass));
    Result := sTemp.Text;
  finally
    sTemp.Free;
  end;
end;

{ TJanuaGraphicMenu }

function TJanuaGraphicMenu.Activate: boolean;
begin
  Result := inherited;
  if Result then
  begin
    if self.KeepAlive then
    begin
      self.CreateDataset;
      if self.FID > 0 then
      begin
        self.OpenMenu;
      end;
    end;
  end;
end;

function TJanuaGraphicMenu.AsHtml: string;
begin
  Result := self.FJanuaGraphicRecordMenu.AsHtml
end;

procedure TJanuaGraphicMenu.OpenMenu(aID: integer);
begin
  self.FID := aID;
  self.OpenMenu;
end;

procedure TJanuaGraphicMenu.OpenMenu;
begin
  self.CreateDataset;
  try
    self.InternalOpenMenu;
    if Assigned(mdsMenu) and Assigned(mdsGroups) and Assigned(mdsRows) then
      FJanuaGraphicRecordMenu.LoadFromDataset(self.mdsMenu, self.mdsGroups, self.mdsRows)
    else
      raise Exception.Create('TJanuaGraphicMenu.OpenMenu Error in setting Datasets');
  finally
    self.DestroyDataset;
  end;
end;

procedure TJanuaGraphicMenu.AssignDataSources;
begin
  if Assigned(FRowDataSource) and Assigned(self.mdsRows) then
    self.FRowDataSource.DataSet := self.mdsRows;
end;

procedure TJanuaGraphicMenu.SetDatasource(const Value: TDataSource);
begin
  FDatasource := Value;
end;

procedure TJanuaGraphicMenu.SetGroupDatasource(const Value: TDataSource);
begin
  FGroupDatasource := Value;
end;

procedure TJanuaGraphicMenu.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TJanuaGraphicMenu.SetJanuaGraphicRecordMenu(const Value: TJanuaGraphicRecordMenu);
begin
  FJanuaGraphicRecordMenu := Value;
end;

procedure TJanuaGraphicMenu.SetmdsGroups(const Value: TDataset);
begin
  FmdsGroups := Value;
end;

procedure TJanuaGraphicMenu.SetmdsMenu(const Value: TDataset);
begin
  FmdsMenu := Value;
end;

procedure TJanuaGraphicMenu.SetmdsRows(const Value: TDataset);
begin
  FmdsRows := Value;
end;

procedure TJanuaGraphicMenu.SetRowDataSource(const Value: TDataSource);
begin
  FRowDataSource := Value;
  AssignDataSources;

end;

procedure TJanuaGraphicMenu.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

{ TJanuaGraphicRecordMenu }

function TJanuaGraphicRecordMenu.AsHtml: string;
var
  sCss, sRows, sButtons: string;
  sTemp: TStrings;
  aGroup: TJanuaGraphicMenuGroup;
begin
  Result := self.template;
  sTemp := TStringList.Create;
  try
    sTemp.Clear;
    for aGroup in self.Items do
      sTemp.Add(aGroup.AsCSS);
    sCss := sTemp.Text;

    sTemp.Clear;
    for aGroup in self.Items do
      sTemp.Add(aGroup.AsHtml);
    sButtons := sTemp.Text;

    sTemp.Clear;
    for aGroup in self.Items do
      sTemp.Add(aGroup.RowsHtml);
    sRows := sTemp.Text;

  finally
    sTemp.Free;
  end;

  Janua.Core.Functions.HtmlReplace(Result, 'cssgroups', sCss);
  Janua.Core.Functions.HtmlReplace(Result, 'buttongroups', sButtons);
  Janua.Core.Functions.HtmlReplace(Result, 'menurows', sRows);

end;

function TJanuaGraphicRecordMenu.AsJson: string;
begin

end;

function TJanuaGraphicRecordMenu.AsJsonObject: string;
begin

end;

function TJanuaGraphicRecordMenu.AsJsonObjetString: string;
begin

end;

function TJanuaGraphicRecordMenu.AsJsonString: string;
begin

end;

function TJanuaGraphicRecordMenu.count: integer;
begin
  Result := Length(self.Items);
end;

procedure TJanuaGraphicRecordMenu.LoadFromDataset(aDataset, aGroup, aRow: TDataset);
begin
  self.id := aDataset.FieldByName('id').AsInteger;
  self.title := aDataset.FieldByName('title').AsWideString;
  self.template := aDataset.FieldByName('template').AsWideString;
  self.TemplateGroup := aDataset.FieldByName('group_template').AsWideString;
  self.TemplateRow := aDataset.FieldByName('row_template').AsWideString;
  self.TemplateCss := aDataset.FieldByName('css_template').AsWideString;
  SetLength(self.Items, 0);
  aGroup.First;
  while not aGroup.Eof do
  begin
    SetLength(self.Items, self.count + 1);
    self.Items[self.count - 1].LoadFromDataset(aGroup, aRow);
    self.Items[self.count - 1].CssTemplate := self.TemplateCss;
    self.Items[self.count - 1].HtmlTemplate := self.TemplateGroup;
    self.Items[self.count - 1].RowTemplate := self.TemplateRow;
    aGroup.Next;
  end;

end;

end.

unit Janua.Html.Metro5.Builder;

interface

uses
  Janua.Html.Impl, Janua.Orm.Intf, Janua.Html.Types, Janua.Html.Intf, Janua.Html.Builder.Intf;

type
  TMetro5MenuBuilder = class(TInterfacedObject, IHtmlBuilder, IHtmlMenuBuilder)
  strict private
    FTitleField: IJanuaField;
    FUrlField: IJanuaField;
    FIconField: IJanuaField;
    FRecordSet: IJanuaRecordSet;
    FSubMenu: IHtmlMenuBuilder;
    FHelper: Janua.Html.Intf.ICustomHtmlHelper;
  private
    // Title Field
    function GetTitleField: IJanuaField;
    procedure SetTitleField(Value: IJanuaField);
    // Title Field
    function GetUrlField: IJanuaField;
    procedure SetUrlField(Value: IJanuaField);
    // Title Field
    function GetIconField: IJanuaField;
    procedure SetIconField(Value: IJanuaField);
    // Title Field
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(Value: IJanuaRecordSet);
    // Sub Menu (if is Set)
    function GetSubMenu: IHtmlMenuBuilder;
    procedure SetSubMenu(Value: IHtmlMenuBuilder);
  public
    constructor Create(aHtmlFactory: Janua.Html.Intf.ICustomHtmlHelper);
  public
    function GetElement: TJanuaCustomHtmlObject;
  public
    property UrlField: IJanuaField read GetUrlField write SetUrlField;
    property TitleField: IJanuaField read GetTitleField write SetTitleField;
    property IconField: IJanuaField read GetIconField write SetIconField;
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
    property SubMenu: IHtmlMenuBuilder read GetSubMenu write SetSubMenu;
  end;

Type
  TMetro5Factory = class
    procedure GetMenuBuilder(aRecordSet, aSubRecordSet: IJanuaRecordSet;
      aTitle, aIcon, aUrl, aSubTitle, aSubIcon, aSubUrl: IJanuaField; out a: IHtmlMenuBuilder;
      b: IHtmlBuilder);
    // function GetPageBuilder: IHtmlPageBuilder;
  end;

implementation

uses Spring, Janua.Html.Metro5.Impl, Janua.Core.Types, System.DateUtils, System.SysUtils;

{ TMetro5MenuBuilder }

constructor TMetro5MenuBuilder.Create(aHtmlFactory: Janua.Html.Intf.ICustomHtmlHelper);
begin
  self.FHelper := aHtmlFactory
end;

function TMetro5MenuBuilder.GetElement: TJanuaCustomHtmlObject;
var
  a: TMetro5MenuGroup;
  function MenuSchema: THtmlMenuGroup;
  var
    aGroup: THtmlMenuGroup;
  begin
    Spring.Guard.CheckNotNull(FTitleField, 'TMetro5MenuBuilder.GetElement.MenuSchema TitleField is null');
    FRecordSet.First;
    while not FRecordSet.Eof do
    begin
      aGroup := THtmlMenuGroup.Create('', 'Prima Categoria', '');
      try
        aGroup.AddItem('fa fa-soccer-ball-o', '&nbsp; Girone A &nbsp;', '/url.html');
        aGroup.AddItem('fa fa-soccer-ball-o', '&nbsp; Girone B &nbsp;', '/url.html');
        aGroup.AddItem('fa fa-soccer-ball-o', '&nbsp; Girone C &nbsp;', '/url.html');
        aGroup.AddItem('fa fa-soccer-ball-o', '&nbsp; Girone D &nbsp;', '/url.html');
        aHtmlMenuGroup := TMetro5MenuGroup.Create(h5, aGroup);
        Result := Result + sLineBreak +
          '<!-- Menu Group ########################################################################### -->' +
          sLineBreak + aHtmlMenuGroup.AsHtml
      finally
        aGroup.Free;
      end;
    end;
  end;

begin
  Spring.Guard.CheckNotNull(self.FRecordSet, 'TMetro5MenuBuilder.GetElement RecordSet is null');
  Spring.Guard.CheckNotNull(self.FHelper, 'TMetro5MenuBuilder.GetElement FHelper is null');
  Result := TMetro5MenuGroup.Create(FHelper, MenuSchema);
end;

function TMetro5MenuBuilder.GetIconField: IJanuaField;
begin
  Result := self.FIconField
end;

function TMetro5MenuBuilder.GetRecordSet: IJanuaRecordSet;
begin
  Result := self.FRecordSet
end;

function TMetro5MenuBuilder.GetSubMenu: IHtmlMenuBuilder;
begin

end;

function TMetro5MenuBuilder.GetTitleField: IJanuaField;
begin
  Result := self.FTitleField
end;

function TMetro5MenuBuilder.GetUrlField: IJanuaField;
begin
  Result := self.FUrlField
end;

procedure TMetro5MenuBuilder.SetIconField(Value: IJanuaField);
begin
  self.FIconField := Value
end;

procedure TMetro5MenuBuilder.SetRecordSet(Value: IJanuaRecordSet);
begin
  self.FRecordSet := Value
end;

procedure TMetro5MenuBuilder.SetSubMenu(Value: IHtmlMenuBuilder);
begin

end;

procedure TMetro5MenuBuilder.SetTitleField(Value: IJanuaField);
begin
  self.FTitleField := Value
end;

procedure TMetro5MenuBuilder.SetUrlField(Value: IJanuaField);
begin
  self.FUrlField := Value
end;

{ TMetro5Factory }

procedure TMetro5Factory.GetMenuBuilder(aRecordSet, aSubRecordSet: IJanuaRecordSet;
  aTitle, aIcon, aUrl, aSubTitle, aSubIcon, aSubUrl: IJanuaField; out a: IHtmlMenuBuilder; b: IHtmlBuilder);
begin
  // Per prima cosa Creo una Istanza del Menu Builder per (b)
  b := TMetro5MenuBuilder.Create(Metro5Helper);
  // Verifico che b Supporti a
  if not Supports(b, IHtmlMenuBuilder, a) then
    raise Exception.Create('TMetro5.MenuBuilder TMetro5MenuBuilder does not support IHtmlBuilder');
  // Questa Implementazione (il Builder) richide necessariamente che sia (almeno) indicato il Recordset
  Guard.CheckNotNull(aRecordSet, 'TMetro5Factory.GetMenuBuilder aRecordSet is nil');
  // Questa Implementazione (il Builder) richide necessariamente che sia (almeno) indicato il TitleField
  Guard.CheckNotNull(aTitle, 'TMetro5Factory.GetMenuBuilder  Title Field  is nil');

  a.RecordSet := aRecordSet;
  a.TitleField := aTitle;
  a.UrlField := aUrl;

  if Assigned(aSubRecordSet) then
  begin
    Guard.CheckNotNull(aSubTitle,
      'TMetro5Factory.GetMenuBuilder  SubTitle Field  is nil while aSubRecordSet is not');
  end;

end;

end.

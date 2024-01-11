unit Janua.Metro5.Builder;

interface

uses
  Janua.Html.Impl, Janua.Orm.Intf, Janua.Html.Types, Janua.Html.Intf, Janua.Html.Builder.Intf,
  Janua.Metro5.Builder.Intf, Janua.Html.Metro5.Types, JOrm.Cms.Articles.Intf,
  Janua.Html.Metro5.Intf, Janua.Html.Builder.Impl;

type
  TMetro5MenuBuilder = class(TInterfacedObject, IHtmlBuilder, IHtmlMenuBuilder)
  strict private
    FTitleField: IJanuaField;
    FUrlField: IJanuaField;
    FIconField: IJanuaField;
    FRecordSet: IJanuaRecordSet;
    FSubRecordSet: IJanuaRecordSet;
    // sub menu
    FSubMenu: IHtmlMenuBuilder;
    FSubTitleField: IJanuaField;
    FSubUrlField: IJanuaField;
    FSubIconField: IJanuaField;
    FHasHome: Boolean;
    // helper
    FHelper: Janua.Html.Intf.IHtmlHelper;
    // Selected
    FSubSelectedField: IJanuaField;
    FSelectedField: IJanuaField;
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
    // Record Set
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(Value: IJanuaRecordSet);
    // Sub Recordset
    function GetSubRecordSet: IJanuaRecordSet;
    procedure SetSubRecordSet(Value: IJanuaRecordSet);
    // Sub Menu (if is Set)
    function GetSubMenu: IHtmlMenuBuilder;
    procedure SetSubMenu(Value: IHtmlMenuBuilder);
    // Sub Menu Elementssss.............................................................................................
    // Title Field
    function GetSubTitleField: IJanuaField;
    procedure SetSubTitleField(Value: IJanuaField);
    // Title Field
    function GetSubUrlField: IJanuaField;
    procedure SetSubUrlField(Value: IJanuaField);
    // Title Field
    function GetSubIconField: IJanuaField;
    procedure SetSubIconField(Value: IJanuaField);
    // Has Home
    procedure SetHasHome(const Value: Boolean);
    function GetHasHome: Boolean;
    // Selected Field ...................................
    function GetSubSelectedField: IJanuaField;
    function GetSelectedField: IJanuaField;
    procedure SetSelectedField(const Value: IJanuaField);
    procedure SetSubSelectedField(const Value: IJanuaField);
  public
    constructor Create(aHtmlFactory: Janua.Html.Intf.IHtmlHelper);
  public
    function GetElement: IJanuaHtmlObject;
    function CheckSelected: Boolean;
  public
    property UrlField: IJanuaField read GetUrlField write SetUrlField;
    property TitleField: IJanuaField read GetTitleField write SetTitleField;
    property IconField: IJanuaField read GetIconField write SetIconField;
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
    property SubRecordSet: IJanuaRecordSet read GetSubRecordSet write SetSubRecordSet;
    property SubMenu: IHtmlMenuBuilder read GetSubMenu write SetSubMenu;
    property SubTitleField: IJanuaField read GetSubTitleField write SetSubTitleField;
    property SubUrlField: IJanuaField read GetSubUrlField write SetSubUrlField;
    property SubIconField: IJanuaField read GetSubIconField write SetSubIconField;
    property HasHome: Boolean read GetHasHome write SetHasHome;
    property SelectedField: IJanuaField read GetSelectedField write SetSelectedField;
    property SubSelectedField: IJanuaField read GetSubSelectedField write SetSubSelectedField;
  end;

type
  TMetro5TableBuilder = class(THtmlTableBuilder, IHtmlBuilder, IHtmlTableBuilder)
    function GetElement: IJanuaHtmlObject; override;
  end;

type
  THtmlPortletHeadBuilder = class(TInterfacedObject, IHtmlBuilder, IHtmlPortletHeadBuilder)
  strict private
    FHtmlHelper: Janua.Html.Intf.IHtmlHelper;
    FHide: Boolean;
    FIcon: TMetro5IconType;
    FDescription: String;
    FTitle: String;
    FFontColor: TM5StateColorsStyle;
    FRecordSet: IJanuaRecordSet;
  private
    // Hide   // page Hide property ... not mandatory  .......................................
    function GetHide: Boolean;
    procedure SetHide(Value: Boolean);
    // Title Field
    function GetTitle: String;
    procedure SetTitle(Value: String);
    // Description   // page Description property .......................................
    function GetDescription: String;
    procedure SetDescription(Value: String);
    // FontColor   // page FontColor property .......................................
    function GetFontColor: TM5StateColorsStyle;
    procedure SetFontColor(Value: TM5StateColorsStyle);
    // Description   // page Description property .......................................
    function GetIcon: TMetro5IconType;
    procedure SetIcon(Value: TMetro5IconType);
    // Record Set
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(Value: IJanuaRecordSet);
  public
    constructor Create(aHtmlFactory: Janua.Html.Intf.IHtmlHelper);
  public
    function GetElement: IJanuaHtmlObject;
  public
    property Hide: Boolean read GetHide write SetHide;
    property Icon: TMetro5IconType read GetIcon write SetIcon;
    property Description: String read GetDescription write SetDescription;
    property Title: String read GetTitle write SetTitle;
    property FontColor: TM5StateColorsStyle read GetFontColor write SetFontColor;
    // property RecordSet
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
  end;

type
  THtmlPortletBuilder = class(TInterfacedObject, IHtmlBuilder, IHtmlPortletBuilder)
  strict Private
    FHtmlPortletHeadBuilder: IHtmlPortletHeadBuilder;
    FRecordSet: IJanuaRecordSet;
  private
    // Hide   // page Hide property ... not mandatory  .......................................
    function GetPortletHeadBuilder: IHtmlPortletHeadBuilder;
    procedure SetPortletHeadBuilder(Value: IHtmlPortletHeadBuilder);
    // Record Set
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(Value: IJanuaRecordSet);
  public
    function GetElement: IJanuaHtmlObject; virtual;
  public
    Constructor Create(aHtmlPortletHeadBuilder: IHtmlBuilder); overload;
  public
    property PortletHeadBuilder: IHtmlPortletHeadBuilder read GetPortletHeadBuilder write SetPortletHeadBuilder;
    // property RecordSet
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
  end;

type
  THtmlArticlesBuilder = class(TInterfacedObject, IHtmlArticlesBuilder, IHtmlBuilder)
  strict private
    FTitleField: IJanuaField;
    FDescriptionField: IJanuaField;
    FImageField: IJanuaField;
    FDateField: IJanuaField;
    FIconField: IJanuaField;
    FHasAuthor: Boolean;
    FHtmlObject: IJanuaHtmlObject;
    FAuthorField: IJanuaField;
    FHasImage: Boolean;
    FHasIcon: Boolean;
    FUrlField: IJanuaField;
    FRecordSet: IJanuaRecordSet;
  private
    // Title Field
    function GetTitleField: IJanuaField;
    procedure SetTitleField(Value: IJanuaField);
    // Description Field  // page Description property .......................................
    function GetDescriptionField: IJanuaField;
    procedure SetDescriptionField(Value: IJanuaField);
    // Url Field
    function GetUrlField: IJanuaField;
    procedure SetUrlField(Value: IJanuaField);
    // Icon Field  // page Icon property ... not mandatory  .......................................
    function GetIconField: IJanuaField;
    procedure SetIconField(Value: IJanuaField);
    // Image Field  // page Image property ... not mandatory  .......................................
    function GetImageField: IJanuaField;
    procedure SetImageField(Value: IJanuaField);
    // Author Field  // page Author property ... not mandatory  .......................................
    function GetAuthorField: IJanuaField;
    procedure SetAuthorField(Value: IJanuaField);
    // Date Field  // page Date property ... not mandatory  .......................................
    function GetDateField: IJanuaField;
    procedure SetDateField(Value: IJanuaField);
    /// Settings ....................................................................................
    // Icon Field  // page Icon property ... not mandatory  .......................................
    function GetHasIcon: Boolean;
    procedure SetHasIcon(Value: Boolean);
    // HasImage   // page HasImage property ... not mandatory  .......................................
    function GetHasImage: Boolean;
    procedure SetHasImage(Value: Boolean);
    // HasAuthor   // page HasAuthor property ... not mandatory  .......................................
    function GetHasAuthor: Boolean;
    procedure SetHasAuthor(Value: Boolean);
    /// ..................... Rendering Object (Container for Articles Builder) ........................
    function GetHtmlObject: IJanuaHtmlObject;
    procedure SetHtmlObject(Value: IJanuaHtmlObject);
    // Record Set
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(Value: IJanuaRecordSet);
  public
    constructor Create(aSettings: TArticlesSettings; aRecordset: IJanuaRecordSet);
    function GetElement: IJanuaHtmlObject;
    procedure WriteToObject; overload;
    procedure WriteToObject(aObject: IJanuaHtmlObject); overload;
  public
    property TitleField: IJanuaField read GetTitleField write SetTitleField;
    property DescriptionField: IJanuaField read GetDescriptionField write SetDescriptionField;
    property ImageField: IJanuaField read GetImageField write SetImageField;
    property DateField: IJanuaField read GetDateField write SetDateField;
    property IconField: IJanuaField read GetIconField write SetIconField;
    property HasAuthor: Boolean read GetHasAuthor write SetHasAuthor;
    property HtmlObject: IJanuaHtmlObject read GetHtmlObject write SetHtmlObject;
    property AuthorField: IJanuaField read GetAuthorField write SetAuthorField;
    property HasImage: Boolean read GetHasImage write SetHasImage;
    property HasIcon: Boolean read GetHasIcon write SetHasIcon;
    property UrlField: IJanuaField read GetUrlField write SetUrlField;
    // property RecordSet
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
  end;

type
  TArticlesPortletBuilder = class(THtmlPortletBuilder, IHtmlBuilder, IHtmlPortletBuilder)
  strict private
    FArticles: IHtmlArticlesBuilder;
  public
    // Questo Costruttore impiega 'pesantemente' il code-injection per operare
    Constructor Create(aHeadBuilder: IHtmlBuilder; aArticles: IHtmlBuilder); overload;
    function GetElement: IJanuaHtmlObject; override;
  end;

Type
  TMetro5BuilderFactory = class
    class procedure GetMenuBuilder(aRecordset, aSubRecordSet: IJanuaRecordSet;
      aTitle, aIcon, aUrl, aSubTitle, aSubIcon, aSubUrl, aSelected, aSubSelected: IJanuaField; out a: IHtmlMenuBuilder;
      out b: IHtmlBuilder);
    // function GetPageBuilder: IHtmlPageBuilder;
    class function GetPortletHeadBuilder(aTitle: string; aDescription: string; aIconType: TMetro5IconType;
      aFontColor: TM5StateColorsStyle): IHtmlBuilder;
    class function GetArticlesPortlet(aSettings: TArticlesSettings; aRecordset: IJanuaRecordSet): IHtmlBuilder;
    class function GetArticlesBuilder(aSettings: TArticlesSettings; aRecordset: IJanuaRecordSet;
      aObject: IJanuaHtmlObject): IHtmlBuilder;
    // questa procedura prepara le impostazioni di Default dei Settings in base agli ORM Articles
    class function GetArticlesSettings(aArticles: IArticles): TArticlesSettings;
  end;

implementation

uses Spring, Janua.Html.Metro5.Impl, Janua.Core.Types, System.DateUtils, System.SysUtils,
  System.StrUtils, Janua.Html.Metro5.Pages;

{ TMetro5MenuBuilder }

function TMetro5MenuBuilder.CheckSelected: Boolean;
begin
  Result := False;
  if assigned(self.FSelectedField) then
  begin
    self.FRecordSet.First;
    while not self.FRecordSet.Eof do
    begin
      if FSelectedField.AsBoolean = True then
        Exit(True);
      self.FRecordSet.Next;
    end;
  end;

  if not Result and assigned(self.FSubSelectedField) then
  begin
    self.FRecordSet.First;
    while not self.FRecordSet.Eof do
    begin
      self.FSubRecordSet.First;
      while not self.FSubRecordSet.Eof do
      begin
        if FSubSelectedField.AsBoolean = True then
          Exit(True);
        self.SubRecordSet.Next
      end;
      self.FRecordSet.Next;
    end;
  end;
end;

constructor TMetro5MenuBuilder.Create(aHtmlFactory: Janua.Html.Intf.IHtmlHelper);
begin
  self.FHelper := aHtmlFactory
end;

function TMetro5MenuBuilder.GetElement: IJanuaHtmlObject;
var
  a: IMetro5MenuGroup;
  aMenu: IHtmlMenu;
  procedure CreateMenu;
  var
    LGroup: IHtmlMenuGroup;
    Lt, Lu, Li: string;
    Lj: integer;
    Ls: Boolean;
    LSelect: Boolean;
  begin
    LSelect := False;
    Spring.Guard.CheckNotNull(FTitleField, 'TMetro5MenuBuilder.GetElement.MenuSchema TitleField is null');
    aMenu := THtmlMenu.Create;
    Lj := 0;
    if FRecordSet.RecordCount > 0 then
    begin
      FRecordSet.First;
      while not FRecordSet.Eof do
      begin
        // Il RecordSet Contiene Li Menu-Groups.
        Lt := self.FTitleField.AsString;

        if self.FUrlField <> nil then
          Lu := self.FUrlField.AsString
        else
          Lu := '#';

        if self.FIconField <> nil then
          Li := self.FIconField.AsString
        else
          Li := '';

        Ls := False;

        if assigned(FSelectedField) then
          Ls := self.FSelectedField.AsBoolean;

        // constructor Create(aIcon, aText, aUrl: string); override;
        LGroup := THtmlMenuGroup.Create(Li, Lt, Lu, Ls);

        LSelect := LSelect or Ls;

        // LGroup.Selected := FRecordSet.Bof;
        if assigned(self.FSubRecordSet) and (FSubRecordSet.RecordCount > 0) then
        begin
          Spring.Guard.CheckNotNull(FSubTitleField, 'TMetro5MenuBuilder.GetElement.SubMenu FSubTitleField is null');
          FSubRecordSet.First;
          while not FSubRecordSet.Eof do
          begin
            // Specifiche 2019-015 Url a cui deve puntare il subField dovrebbe essere
            // FUrlField.AsString l'url del Main Menu.
            // Lu = Url (LocalUrl).
            if (self.FUrlField <> nil) and (FUrlField.AsString <> '') then
              Lu := self.FUrlField.AsString
            else
              Lu := '/';

            if FSubRecordSet.Bof and self.FHasHome then
            begin
              LGroup.AddItem('m-nav__link-icon fas fa-home', ' Home', Lu, False);
            end;
            // LGroup.AddItem('fa fa-soccer-ball-o', '&nbsp; Girone A &nbsp;', '/url.html');

            // passo ai Sub-Menu
            Lt := self.FSubTitleField.AsString;
            Lu := IfThen(assigned(self.FSubUrlField), self.FSubUrlField.AsString, '');
            Li := IfThen(assigned(self.FSubIconField), self.FSubIconField.AsString, '#');
            Ls := False;
            if assigned(FSubSelectedField) then
              Ls := self.FSubSelectedField.AsBoolean;
            // inserisco un Item per ogni Record presente nel sub-set .........................
            LGroup.AddItem(Li, Lt, Lu, Ls);
            // Se Assegnato il Campo ed è True allora imposto selected nel menu ...............
            if Ls and not LGroup.Selected then
              LGroup.Selected := True;
            // verifico ed imposto LSelect ....................................................
            LSelect := LSelect or LGroup.Selected;
            self.FSubRecordSet.Next;
          end;
        end;
        // Aggiungo il gruppo indicato dalla variabile locale temporanea LGroup.
        aMenu.AddGroup(LGroup);
        self.FRecordSet.Next;
      end;
    end;

    if not LSelect then
    begin
      if aMenu.Items.Count > 0 then
      begin
        aMenu.Items[0].Selected := True;
        if aMenu.Items[0].Items.Count > 0 then
          aMenu.Items[0].Items[0].Selected := True;
      end;
    end;

  end;

begin
  Spring.Guard.CheckNotNull(self.FRecordSet, 'TMetro5MenuBuilder.GetElement RecordSet is null');
  Spring.Guard.CheckNotNull(self.FHelper, 'TMetro5MenuBuilder.GetElement FHelper is null');
  // Ritorno come Risultato un Metro5 Menu (Full Menu quindi ..................................);
  CreateMenu;
  // Problemino .... aMenu deve continuare ad esistere per far funzionare Metro5Menu ............
  // Ma Metro5 Menu dovrebbe far fuori gli Items di Menu alla fine dei lavori suppongo ..........
  { TODO : Gestire Metro5 Menu magari in forma di Interface }
  Result := TMetro5HorizontalMenu.Create(FHelper, aMenu);
end;

function TMetro5MenuBuilder.GetHasHome: Boolean;
begin
  Result := self.FHasHome
end;

function TMetro5MenuBuilder.GetIconField: IJanuaField;
begin
  Result := self.FIconField
end;

function TMetro5MenuBuilder.GetRecordSet: IJanuaRecordSet;
begin
  Result := self.FRecordSet
end;

function TMetro5MenuBuilder.GetSelectedField: IJanuaField;
begin

end;

function TMetro5MenuBuilder.GetSubIconField: IJanuaField;
begin
  Result := self.SubIconField
end;

function TMetro5MenuBuilder.GetSubMenu: IHtmlMenuBuilder;
begin
  Result := self.SubMenu
end;

function TMetro5MenuBuilder.GetSubRecordSet: IJanuaRecordSet;
begin
  Result := FSubRecordSet
end;

function TMetro5MenuBuilder.GetSubSelectedField: IJanuaField;
begin

end;

function TMetro5MenuBuilder.GetSubTitleField: IJanuaField;
begin
  Result := self.FSubTitleField
end;

function TMetro5MenuBuilder.GetSubUrlField: IJanuaField;
begin
  Result := self.FSubUrlField
end;

function TMetro5MenuBuilder.GetTitleField: IJanuaField;
begin
  Result := self.FTitleField
end;

function TMetro5MenuBuilder.GetUrlField: IJanuaField;
begin
  Result := self.FUrlField
end;

procedure TMetro5MenuBuilder.SetHasHome(const Value: Boolean);
begin
  FHasHome := Value;
end;

procedure TMetro5MenuBuilder.SetIconField(Value: IJanuaField);
begin
  self.FIconField := Value
end;

procedure TMetro5MenuBuilder.SetRecordSet(Value: IJanuaRecordSet);
begin
  self.FRecordSet := Value
end;

procedure TMetro5MenuBuilder.SetSelectedField(const Value: IJanuaField);
begin
  FSelectedField := Value;
end;

procedure TMetro5MenuBuilder.SetSubIconField(Value: IJanuaField);
begin
  FSubIconField := Value
end;

procedure TMetro5MenuBuilder.SetSubMenu(Value: IHtmlMenuBuilder);
begin
  self.FSubMenu := Value
end;

procedure TMetro5MenuBuilder.SetSubRecordSet(Value: IJanuaRecordSet);
begin
  FSubRecordSet := Value
end;

procedure TMetro5MenuBuilder.SetSubSelectedField(const Value: IJanuaField);
begin
  FSubSelectedField := Value;
end;

procedure TMetro5MenuBuilder.SetSubTitleField(Value: IJanuaField);
begin
  self.FSubTitleField := Value
end;

procedure TMetro5MenuBuilder.SetSubUrlField(Value: IJanuaField);
begin
  self.FSubUrlField := Value
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

class function TMetro5BuilderFactory.GetArticlesBuilder(aSettings: TArticlesSettings; aRecordset: IJanuaRecordSet;
  aObject: IJanuaHtmlObject): IHtmlBuilder;
{$IFDEF JANUA_DEBUG}
var
  tmp: integer;
{$ENDIF JANUA_DEBUG}
begin
  Guard.CheckNotNull(aRecordset, 'TMetro5BuilderFactory.GetArticlesBuilder aRecordset not Set');
  Guard.CheckNotNull(aSettings, 'TMetro5BuilderFactory.GetArticlesBuilder aSettings not Set');
  Guard.CheckNotNull(aSettings.TitleField, 'TMetro5BuilderFactory.GetArticlesBuilder TitleField not Set');
{$IFDEF JANUA_DEBUG} tmp := aRecordset.RecordCount; {$ENDIF JANUA_DEBUG}
  // Costruisco l'articles Builder in base all'oggetto ed al recordset ricevuti, imposto poi i campi.
  Result := THtmlArticlesBuilder.Create(aSettings, aRecordset);
  // if aObject <> nil then

end;

class function TMetro5BuilderFactory.GetArticlesPortlet(aSettings: TArticlesSettings; aRecordset: IJanuaRecordSet)
  : IHtmlBuilder;
var
  p, a: IHtmlBuilder;
begin
  p := TMetro5BuilderFactory.GetPortletHeadBuilder(aSettings.Title, aSettings.Description, aSettings.IconType,
    aSettings.FontColor);
  a := TMetro5BuilderFactory.GetArticlesBuilder(aSettings, aRecordset, nil);
  Result := TArticlesPortletBuilder.Create(p, a);
end;

class function TMetro5BuilderFactory.GetArticlesSettings(aArticles: IArticles): TArticlesSettings;
begin
  Result := TArticlesSettings.Create('Titolo', 'descrizione', TMetro5IconType.jmiSocialDribble,
    TM5StateColorsStyle.m5sAccent);

  Result.TitleField := aArticles.Title;
  Result.DescriptionField := aArticles.Abstract;
  Result.UrlField := aArticles.ArticleUrl;
  Result.IconField := nil;
  Result.ImageField := aArticles.ImageUrl;
  Result.DateField := aArticles.Datetime;
  Result.AuthorField := aArticles.Author;

end;

class procedure TMetro5BuilderFactory.GetMenuBuilder(aRecordset, aSubRecordSet: IJanuaRecordSet;
  aTitle, aIcon, aUrl, aSubTitle, aSubIcon, aSubUrl, aSelected, aSubSelected: IJanuaField; out a: IHtmlMenuBuilder;
  out b: IHtmlBuilder);
begin
  // Per prima cosa Creo una Istanza del Menu Builder per (b)
  b := TMetro5MenuBuilder.Create(Metro5Helper);
  // Verifico che b Supporti a
  if not Supports(b, IHtmlMenuBuilder, a) then
    raise Exception.Create('TMetro5.MenuBuilder TMetro5MenuBuilder does not support IHtmlBuilder');
  // Questa Implementazione (il Builder) richide necessariamente che sia (almeno) indicato il Recordset
  Guard.CheckNotNull(aRecordset, 'TMetro5Factory.GetMenuBuilder aRecordSet is nil');
  // Questa Implementazione (il Builder) richide necessariamente che sia (almeno) indicato il TitleField
  Guard.CheckNotNull(aTitle, 'TMetro5Factory.GetMenuBuilder  Title Field  is nil');
  Guard.CheckNotNull(a, 'TMetro5Factory.GetMenuBuilder  IHtmlMenuBuilder a  is nil');
  Guard.CheckNotNull(aSubRecordSet, 'TMetro5Factory.GetMenuBuilder  IHtmlMenuBuilder aSubRecordSet  is nil');
  a.RecordSet := aRecordset;
  a.TitleField := aTitle;
  a.UrlField := aUrl;
  a.IconField := aIcon;
  // 2018-0075 Selected Menu Builder
  a.SelectedField := aSelected;

  if assigned(aSubRecordSet) then
  begin
    Guard.CheckNotNull(aSubTitle, 'TMetro5Factory.GetMenuBuilder  SubTitle Field  is nil while aSubRecordSet is not');
    a.SubRecordSet := aSubRecordSet;
    a.SubTitleField := aSubTitle;
    a.SubUrlField := aSubUrl;
    a.SubIconField := aSubIcon;
    // 2018-0075 Selected Menu Builder
    a.SubSelectedField := aSubSelected;
  end;

end;

{ THtmlPortletHeadBuilder }

constructor THtmlPortletHeadBuilder.Create(aHtmlFactory: Janua.Html.Intf.IHtmlHelper);
begin
  Guard.CheckNotNull(aHtmlFactory, 'THtmlPortletHeadBuilder.Create aHtmlFactory is null');
  FHtmlHelper := aHtmlFactory;
  self.FFontColor := TM5StateColorsStyle.m5sNone;
end;

function THtmlPortletHeadBuilder.GetDescription: String;
begin
  Result := self.FDescription;
end;

function THtmlPortletHeadBuilder.GetElement: IJanuaHtmlObject;
begin
  // Crea il Portlet Head in maniera molto semplice ..........................................
  Result := TMetro5Factory.CreateMetro5PortletHead(self.FTitle, self.FDescription, self.FIcon, self.FFontColor);
end;

function THtmlPortletHeadBuilder.GetFontColor: TM5StateColorsStyle;
begin
  Result := self.FFontColor
end;

function THtmlPortletHeadBuilder.GetHide: Boolean;
begin
  Result := self.FHide
end;

function THtmlPortletHeadBuilder.GetIcon: TMetro5IconType;
begin
  Result := self.FIcon
end;

function THtmlPortletHeadBuilder.GetRecordSet: IJanuaRecordSet;
begin
  Result := self.FRecordSet;
end;

function THtmlPortletHeadBuilder.GetTitle: String;
begin
  Result := self.FTitle
end;

procedure THtmlPortletHeadBuilder.SetDescription(Value: String);
begin
  self.FDescription := Value
end;

procedure THtmlPortletHeadBuilder.SetFontColor(Value: TM5StateColorsStyle);
begin
  self.FFontColor := Value
end;

procedure THtmlPortletHeadBuilder.SetHide(Value: Boolean);
begin
  self.FHide := Value
end;

procedure THtmlPortletHeadBuilder.SetIcon(Value: TMetro5IconType);
begin
  self.FIcon := Value
end;

procedure THtmlPortletHeadBuilder.SetRecordSet(Value: IJanuaRecordSet);
begin
  self.FRecordSet := Value
end;

procedure THtmlPortletHeadBuilder.SetTitle(Value: String);
begin
  self.FTitle := Value
end;

{ THtmlArticlesBuilder }

constructor THtmlArticlesBuilder.Create(aSettings: TArticlesSettings; aRecordset: IJanuaRecordSet);
{$IFDEF JANUA_DEBUG} var
  tmp: integer; {$ENDIF }
begin
  self.FRecordSet := aRecordset;
{$IFDEF JANUA_DEBUG} tmp := aRecordset.RecordCount; {$ENDIF }
  self.TitleField := aSettings.TitleField;
  self.DescriptionField := aSettings.DescriptionField;
  self.UrlField := aSettings.UrlField;
  self.IconField := aSettings.IconField;
  self.ImageField := aSettings.ImageField;
  self.AuthorField := aSettings.AuthorField;
  self.DateField := aSettings.DateField;
end;

function THtmlArticlesBuilder.GetAuthorField: IJanuaField;
begin
  Result := self.FAuthorField
end;

function THtmlArticlesBuilder.GetDateField: IJanuaField;
begin
  Result := self.FDateField
end;

function THtmlArticlesBuilder.GetDescriptionField: IJanuaField;
begin
  Result := self.FDescriptionField
end;

function THtmlArticlesBuilder.GetElement: IJanuaHtmlObject;
var
  vT, vD, vA, vI, vU: string;
  vDa: TDateTime;
begin
  vT := self.FTitleField.AsString;
  // preparo la descrizione
  if self.FDescriptionField <> nil then
    vD := FDescriptionField.AsString
  else
    vD := '';
  // preparo Autore
  if self.FAuthorField <> nil then
    vA := self.FAuthorField.AsString
  else
    vA := '';
  // preparo Immagine Url
  if self.FImageField <> nil then
    vI := self.FImageField.AsString
  else
    vI := '';
  // preparo Url
  if self.FUrlField <> nil then
    vU := self.FUrlField.AsString
  else
    vU := '';
  // preparo la data
  if self.FDateField <> nil then
    vDa := FDateField.AsDateTime
  else
    vDa := System.SysUtils.Date;
  Result := TMetro5Factory.CreateArticle(TJanuaLanguage.jlaItalian, vT, vD, vA, vI, vU, vDa);
end;

function THtmlArticlesBuilder.GetHasAuthor: Boolean;
begin
  Result := self.FHasAuthor
end;

function THtmlArticlesBuilder.GetHtmlObject: IJanuaHtmlObject;
begin
  Result := self.FHtmlObject
end;

function THtmlArticlesBuilder.GetHasIcon: Boolean;
begin
  Result := self.FHasIcon
end;

function THtmlArticlesBuilder.GetHasImage: Boolean;
begin
  Result := self.FHasImage
end;

function THtmlArticlesBuilder.GetIconField: IJanuaField;
begin
  Result := self.FIconField
end;

function THtmlArticlesBuilder.GetImageField: IJanuaField;
begin
  Result := self.FImageField
end;

function THtmlArticlesBuilder.GetRecordSet: IJanuaRecordSet;
begin
  Result := self.FRecordSet
end;

function THtmlArticlesBuilder.GetTitleField: IJanuaField;
begin
  Result := self.FTitleField
end;

function THtmlArticlesBuilder.GetUrlField: IJanuaField;
begin
  Result := self.FUrlField
end;

procedure THtmlArticlesBuilder.SetAuthorField(Value: IJanuaField);
begin
  self.FAuthorField := Value
end;

procedure THtmlArticlesBuilder.SetDateField(Value: IJanuaField);
begin
  self.FDateField := Value
end;

procedure THtmlArticlesBuilder.SetDescriptionField(Value: IJanuaField);
begin
  self.FDescriptionField := Value
end;

procedure THtmlArticlesBuilder.SetHasAuthor(Value: Boolean);
begin
  self.FHasAuthor := Value
end;

procedure THtmlArticlesBuilder.SetHtmlObject(Value: IJanuaHtmlObject);
begin
  self.FHtmlObject := Value
end;

procedure THtmlArticlesBuilder.SetHasIcon(Value: Boolean);
begin
  self.FHasIcon := Value
end;

procedure THtmlArticlesBuilder.SetHasImage(Value: Boolean);
begin
  self.FHasImage := Value
end;

procedure THtmlArticlesBuilder.SetIconField(Value: IJanuaField);
begin
  self.FIconField := Value;
  self.FHasIcon := Value <> nil
end;

procedure THtmlArticlesBuilder.SetImageField(Value: IJanuaField);
begin
  self.FImageField := Value;
  self.FHasImage := Value <> nil
end;

procedure THtmlArticlesBuilder.SetRecordSet(Value: IJanuaRecordSet);
begin
  self.FRecordSet := Value
end;

procedure THtmlArticlesBuilder.SetTitleField(Value: IJanuaField);
begin
  self.FTitleField := Value
end;

procedure THtmlArticlesBuilder.SetUrlField(Value: IJanuaField);
begin
  self.FUrlField := Value
end;

procedure THtmlArticlesBuilder.WriteToObject;
var
  tmp: integer;
begin
  Guard.CheckNotNull(self.FRecordSet, 'THtmlArticlesBuilder.WriteToObject FRecordSet is null');
  Guard.CheckNotNull(self.FHtmlObject, 'THtmlArticlesBuilder.WriteToObject FHtmlObject is null');
  self.FRecordSet.First;
  tmp := FRecordSet.RecordCount;
  if tmp > 0 then
    while not self.FRecordSet.Eof do
    begin
      FHtmlObject.Add(self.GetElement);
      self.FRecordSet.Next;
    end;
end;

procedure THtmlArticlesBuilder.WriteToObject(aObject: IJanuaHtmlObject);
begin
  Guard.CheckNotNull(aObject, 'THtmlArticlesBuilder.WriteToObject aObject is null');
  self.FHtmlObject := aObject;
  self.WriteToObject;
end;

class function TMetro5BuilderFactory.GetPortletHeadBuilder(aTitle, aDescription: string; aIconType: TMetro5IconType;
  aFontColor: TM5StateColorsStyle): IHtmlBuilder;
begin
  Result := THtmlPortletHeadBuilder.Create(Janua.Html.Metro5.Impl.Metro5Helper);
  // Passo a Result le impostazioni
  (Result as IHtmlPortletHeadBuilder).Hide := False;
  (Result as IHtmlPortletHeadBuilder).Title := aTitle;
  (Result as IHtmlPortletHeadBuilder).Description := aDescription;
  (Result as IHtmlPortletHeadBuilder).Icon := aIconType;
  (Result as IHtmlPortletHeadBuilder).FontColor := aFontColor;
end;

{ THtmlPortletBuilder }

constructor THtmlPortletBuilder.Create(aHtmlPortletHeadBuilder: IHtmlBuilder);
begin
  Guard.CheckNotNull(aHtmlPortletHeadBuilder, 'THtmlPortletBuilder.Create(aHtmlPortletHeadBuilder) null');
  Guard.CheckTrue(Supports(aHtmlPortletHeadBuilder, IHtmlPortletHeadBuilder, FHtmlPortletHeadBuilder),
    'THtmlPortletBuilder.Create(aHtmlPortletHeadBuilder) not IHtmlPortletHeadBuilder');

  // (aHtmlPortletHeadBuilder is IHtmlPortletHeadBuilder),
  //
  // self.FHtmlPortletHeadBuilder := aHtmlPortletHeadBuilder as IHtmlPortletHeadBuilder;
end;

function THtmlPortletBuilder.GetElement: IJanuaHtmlObject;
var
  h: TMetro5PortletHead;
begin
  Guard.CheckNotNull(FHtmlPortletHeadBuilder, 'THtmlPortletBuilder.GetElement(FHtmlPortletHeadBuilder) null');
  // prima di tutto imposto il valore di h per creare l'elemento Portlet.
  h := FHtmlPortletHeadBuilder.GetElement as TMetro5PortletHead;
  // Come Risultato di GetElement ho quindi il Metro Portlet.............
  Result := Janua.Html.Metro5.Impl.TMetro5Portlet.Create(Metro5Helper, h);
end;

function THtmlPortletBuilder.GetPortletHeadBuilder: IHtmlPortletHeadBuilder;
begin
  Result := self.FHtmlPortletHeadBuilder
end;

function THtmlPortletBuilder.GetRecordSet: IJanuaRecordSet;
begin
  Result := self.FRecordSet
end;

procedure THtmlPortletBuilder.SetPortletHeadBuilder(Value: IHtmlPortletHeadBuilder);
begin
  self.FHtmlPortletHeadBuilder := Value
end;

procedure THtmlPortletBuilder.SetRecordSet(Value: IJanuaRecordSet);
begin
  self.FRecordSet := Value;
end;

{ TArticlesPortletBuilder }

constructor TArticlesPortletBuilder.Create(aHeadBuilder: IHtmlBuilder; aArticles: IHtmlBuilder);
begin
  self.Create(aHeadBuilder);
  if not Supports(aArticles, IHtmlArticlesBuilder, FArticles) then
    raise Exception.Create('TArticlesPortletBuilder.Create aArticles does not support IHtmlArticlesBuilder');
end;

function TArticlesPortletBuilder.GetElement: IJanuaHtmlObject;
begin
  Result := inherited;
  Guard.CheckNotNull(FArticles, 'THtmlPortletBuilder.GetElement(FHtmlPortletHeadBuilder) null');
  // (Result as TMetro5Portlet).Content // questo è il punto dove va inserito l'array degli articoli creato dalla
  // procedura dell'articles Builder ...........................................................................
  FArticles.WriteToObject((Result as IMetro5Portlet).Content);
  // Terminata la scrittura il Metro Portlet è completo e 'stampabile'.
end;

{ TMetro5TableBuilder }

function TMetro5TableBuilder.GetElement: IJanuaHtmlObject;
begin
  Result := inherited;
  Result.AddClasses(['table', 'table-bordered', 'table-striped', 'table-hover']);
end;

end.

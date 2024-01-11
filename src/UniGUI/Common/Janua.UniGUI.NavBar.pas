unit Janua.UniGUI.NavBar;

interface

uses
  // System
  System.Classes, Spring.Collections,
  // UniGUI
  uniGUIClasses, uniImageList, uniPanel, uniTreeMenu, uniMainMenu,
  // Janua
  Janua.Core.Classes, Janua.Controls.Forms.Impl, Janua.Controls.Forms.Intf;

implementation

type
  TJanuaUNINavBarController = class(TJanuaCoreComponent)
  private
    FContainer: TUniControl;
    FImageList: TUniCustomImageList;
    FPageController: TJanuaCustomPageController;
    FOnRecordFound: TFormRecordFoundEvent;
    FAdvNavBar: TUniPanel;
    FcatMenuItems: TUniTreeMenu;
    procedure SetContainer(const Value: TUniControl);
    procedure SetImageList48(const Value: TUniCustomImageList);
    procedure SetOnRecordFound(const Value: TFormRecordFoundEvent);
    procedure SetPageController(const Value: TJanuaCustomPageController);
    procedure SetAdvNavBar(const Value: TUniPanel);
    procedure SetcatMenuItems(const Value: TUniTreeMenu);
  strict protected
    FButtonsForms: IDictionary<TUniMenuItem, TJanuaFormRecord>;
    FMenu: TUniMenuItems;
    /// <summary>Activate (loops all Applications Records in Janua Application<br />
    /// if An Application is a Frame Calls AddFrame (An application that is a Frame Container  <br />
    /// if an Application is a Listo of Application calls   <br />
    /// -- SetupApplication that at first Creates a Panel containing a New TCategoryButtons  <br />
    /// ---- if no subcategories are found calls creates a menu AddCategory<br />
    /// ------- Loops into cateory and calls AddButton<br />
    /// ---- else loops into categories<br />
    /// ------- calls a  AddCategory for every sub-category<br />
    /// --------- Loops into sub-cateory and calls AddButton </summary>
    function InternalActivate: boolean; override;
  protected
    function AddPanel(const aApplication: TJanuaApplicationRecord): TUniPanel;
    /// <summary> Adds a Panel containing a Frame Created by aApplication </summary>
    procedure AddFrame(const aApplication: TJanuaApplicationRecord);
    /// <summary> Adds a 'Category Button' for an Applicaiton Group </summary>
    procedure AddCategoryButtons(const aApplication: TJanuaApplicationRecord);
    /// <summary> Adds a Panel that contains a new TCategoryButtons and populates it </summary>
    procedure SetupApplication(const aApplication: TJanuaApplicationRecord);
    /// <summary> Adds a Category Button-Menu to the current Category Menu </summary>
    function AddCategory(const aTitle, aName: string; const aIconNumber: integer = -1): TUniMenuItem;
      overload;
    /// <summary> Adds a Category Button-Menu to the current Category Menu </summary>
    function AddCategory(const aCategory: TJanuaApplicationRecord; const aShowTitle: boolean = True)
      : TUniMenuItem; overload;
    function AddButton(const aTitle, aName: string; const aCategory: integer = -1;
      const aIconNumber: integer = -1): TUniMenuItem; overload;
    function AddButton(const aForm: TJanuaFormRecord): TUniMenuItem; overload;
  public
    property AdvNavBar: TUniPanel read FAdvNavBar write SetAdvNavBar;
    property catMenuItems: TUniTreeMenu read FcatMenuItems write SetcatMenuItems;
  published
    property OnRecordFound: TFormRecordFoundEvent read FOnRecordFound write SetOnRecordFound;
    property Container: TUniControl read FContainer write SetContainer;
    property ImageList: TUniCustomImageList read FImageList write SetImageList48;
    property PageController: TJanuaCustomPageController read FPageController write SetPageController;
  end;

  { TJanuaUNINavBarController }

function TJanuaUNINavBarController.AddButton(const aTitle, aName: string;
  const aCategory, aIconNumber: integer): TUniMenuItem;
begin
  { TODO : Add AddButton Method aCategory }
  Result := nil;

end;

function TJanuaUNINavBarController.AddButton(const aForm: TJanuaFormRecord): TUniMenuItem;
begin
  { TODO : Add AddButton Method aForm }
  Result := nil;
end;

function TJanuaUNINavBarController.AddCategory(const aTitle, aName: string; const aIconNumber: integer)
  : TUniMenuItem;
begin
  { TODO : Add AddCategory Method aForm }
  Result := nil;
end;

function TJanuaUNINavBarController.AddCategory(const aCategory: TJanuaApplicationRecord;
  const aShowTitle: boolean): TUniMenuItem;
begin
  { TODO : Add AddCategory Method aCategory }
  Result := nil;
end;

procedure TJanuaUNINavBarController.AddCategoryButtons(const aApplication: TJanuaApplicationRecord);
begin

end;

procedure TJanuaUNINavBarController.AddFrame(const aApplication: TJanuaApplicationRecord);
begin

end;

function TJanuaUNINavBarController.AddPanel(const aApplication: TJanuaApplicationRecord): TUniPanel;
begin
  { TODO : TJanuaUNINavBarController.AddPanel }
  Result := nil;
end;

function TJanuaUNINavBarController.InternalActivate: boolean;
begin
  { TODO : TJanuaUNINavBarController.InternalActivate }
  Result := False;
end;

procedure TJanuaUNINavBarController.SetAdvNavBar(const Value: TUniPanel);
begin
  FAdvNavBar := Value;
end;

procedure TJanuaUNINavBarController.SetcatMenuItems(const Value: TUniTreeMenu);
begin
  FcatMenuItems := Value;
end;

procedure TJanuaUNINavBarController.SetContainer(const Value: TUniControl);
begin
  FContainer := Value;
end;

procedure TJanuaUNINavBarController.SetImageList48(const Value: TUniCustomImageList);
begin
  FImageList := Value;
end;

procedure TJanuaUNINavBarController.SetOnRecordFound(const Value: TFormRecordFoundEvent);
begin
  FOnRecordFound := Value;
end;

procedure TJanuaUNINavBarController.SetPageController(const Value: TJanuaCustomPageController);
begin
  FPageController := Value;
end;

procedure TJanuaUNINavBarController.SetupApplication(const aApplication: TJanuaApplicationRecord);
begin

end;

end.

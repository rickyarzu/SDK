unit Janua.TMS.NavBar;

interface

uses
  // System
  System.Classes, Spring.Collections,
  // VCL
  VCL.Forms, VCL.Controls, VCL.ImgList, VCL.CategoryButtons,
  // TMS
  AdvNavBar,
  // Janua
  Janua.Core.Classes, Janua.Controls.Forms.Impl, Janua.Controls.Forms.Intf;

type
  TJanuaTMSNavBarController = class(TJanuaCoreComponent)
  private
    FContainer: TWinControl;
    FImageList: TCustomImageList;
    FIconFontList: TCustomImageList;
    FOnRecordFound: TFormRecordFoundEvent;
    FPanelCount: integer;
    FPageController: TJanuaCustomPageController;
    procedure SetContainer(const Value: TWinControl);
    procedure SetImageList48(const Value: TCustomImageList);
    procedure AddApplication(const aApplication: TJanuaApplicationRecord);
    procedure SetOnRecordFound(Value: TFormRecordFoundEvent);
    procedure SetAdvNavBar(const Value: TAdvNavBar);
    procedure SetcatMenuItems(const Value: TCategoryButtons);
    procedure SetPageController(const Value: TJanuaCustomPageController);
  strict protected
    FAdvNavBar: TAdvNavBar;
    /// <summary> Currently Selected </summary>
    FcatMenuItems: TCategoryButtons;
    FButtonsForms: IDictionary<TBaseItem, TJanuaFormRecord>;
  strict protected
    ///<summary>Activate (loops all Applications Records in Janua Application<br />
    ///if An Application is a Frame Calls AddFrame (An application that is a Frame Container  <br />
    ///if an Application is a Listo of Application calls   <br />
    ///-- SetupApplication that at first Creates a Panel containing a New TCategoryButtons  <br />
    ///---- if no subcategories are found calls creates a menu AddCategory<br />
    ///------- Loops into cateory and calls AddButton<br />
    ///---- else loops into categories<br />
    ///------- calls a  AddCategory for every sub-category<br />
    ///--------- Loops into sub-cateory and calls AddButton </summary>
    function InternalActivate: boolean; override;
  protected
    function AddPanel(const aApplication: TJanuaApplicationRecord): TAdvNavBarPanel;
    /// <summary> Adds a Panel containing a Frame Created by aApplication </summary>
    procedure AddFrame(const aApplication: TJanuaApplicationRecord);
    /// <summary> Adds a 'Category Button' for an Applicaiton Group </summary>
    procedure AddCategoryButtons(const aApplication: TJanuaApplicationRecord);
    /// <summary> Adds a Panel that contains a new TCategoryButtons and populates it </summary>
    procedure SetupApplication(const aApplication: TJanuaApplicationRecord);
    /// <summary> Adds a Category Button-Menu to the current Category Menu </summary>
    function AddCategory(const aTitle, aName: string; const aIconNumber: integer = -1)
      : TButtonCategory; overload;
    /// <summary> Adds a Category Button-Menu to the current Category Menu </summary>
    function AddCategory(const aCategory: TJanuaApplicationRecord; const aShowTitle: boolean = True)
      : TButtonCategory; overload;
    function AddButton(const aTitle, aName: string; const aCategory: integer = -1;
      const aIconNumber: integer = -1): TButtonItem; overload;
    function AddButton(const aForm: TJanuaFormRecord): TButtonItem; overload;
  public
    procedure btnFormClick(Sender: TObject);
    constructor Create(AOwner: TComponent); override;
  public
    property AdvNavBar: TAdvNavBar read FAdvNavBar write SetAdvNavBar;
    property catMenuItems: TCategoryButtons read FcatMenuItems write SetcatMenuItems;
  published
    property OnRecordFound: TFormRecordFoundEvent read FOnRecordFound write SetOnRecordFound;
    property Container: TWinControl read FContainer write SetContainer;
    property ImageList: TCustomImageList read FImageList write SetImageList48;
    property PageController: TJanuaCustomPageController read FPageController write SetPageController;
  end;

implementation

uses Spring, Janua.Core.Functions, System.Math, System.SysUtils, System.StrUtils, Janua.VCL.Framework,
  Janua.VCL.CategoryButtonsFrame, VCL.Graphics, Janua.TMS.FrameNavBar, Janua.Controls.Intf,
  Janua.Application.Framework;

{ TJanuaTMSNavBarController }

function TJanuaTMSNavBarController.InternalActivate: boolean;
var
  I: integer;
  lFrame: TframeJanuaTmsNavBar;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited and not(csDesigning in ComponentState) and Assigned(FContainer) and
        not Assigned(FAdvNavBar);
      if Result then
      begin
        // ImageList is used for the 'Apps' Icons Visibile on the ImageList Group
        if not Assigned(FImageList) then
          FImageList := TJanuaVCLApplication.ImgListVCLIcons32;

        // Font Monochrome Icons are used for main menu 'headers' and are smaller and monochrome.
        if not Assigned(FIconFontList) then
          FIconFontList := TJanuaVCLApplication.FontVCLIcons24;

        FButtonsForms := TCollections.CreateDictionary<TBaseItem, TJanuaFormRecord>;
        lFrame := TframeJanuaTmsNavBar.Create(Self.Owner);
        lFrame.Parent := FContainer;
        lFrame.Align := AlClient;
        lFrame.Name := 'frameJanuaTmsNavBar1';
        lFrame.Visible := False;

        FAdvNavBar := lFrame.AdvNavBar1; // TAdvNavBar.Create(FContainer);
        FAdvNavBar.Name := 'AdvNavBar1';
        FAdvNavBar.Images := FIconFontList; // FImageList; // replaced Coloured Images with Monochrome 'fonts'
        FAdvNavBar.Font.Name := 'Segoe UI';
        FAdvNavBar.Font.Size := 12;
        FAdvNavBar.Font.Style := [fsBold];
        FAdvNavBar.DefaultTabPosition := TDefaultTabPosition.tpTop;
        FAdvNavBar.ShowShortCutBar := False;

        for I := 0 to Pred(TJanuaFormsApplication.Applications.Count) do
          if TJanuaFormsApplication.Applications[I].IsFrame then
            AddFrame(TJanuaFormsApplication.Applications[I])
          else
            AddApplication(TJanuaFormsApplication.Applications[I]);

        FAdvNavBar.SplitterPosition := TJanuaFormsApplication.Applications.Count - 1;

        FAdvNavBar.ActiveTabIndex := 0;

        if FAdvNavBar.PanelCount > FPanelCount then
          for I := Pred(FAdvNavBar.PanelCount) downto FPanelCount do
            FAdvNavBar.RemovePanel(I);

        FAdvNavBar.SplitterPosition := FAdvNavBar.PanelCount;
        FAdvNavBar.DefaultTabPosition := tpTop;
        FAdvNavBar.Invalidate;
        FAdvNavBar.Refresh;
        lFrame.Visible := True;

        FAdvNavBar.PanelOrder := TPanelOrder.poTopToBottom;

        FAdvNavBar.ActiveTabIndex := 0;
        FAdvNavBar.SplitterPosition := FAdvNavBar.PanelCount;
        FAdvNavBar.Invalidate;
        FAdvNavBar.Refresh;

      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;
end;

procedure TJanuaTMSNavBarController.AddApplication(const aApplication: TJanuaApplicationRecord);
var
  I: integer;
begin
  // ---------------------------------------------------------------------------------------
  // At first it must Create the 'Main' Category Panel an then the Menu Container .........
  AddCategoryButtons(aApplication);

  if aApplication.Categories.Count = 0 then
    AddCategory(aApplication, True)
  else
    for I := 0 to Pred(aApplication.Categories.Count) do
      AddCategory(aApplication.Categories[I]);
end;

function TJanuaTMSNavBarController.AddButton(const aTitle, aName: string;
  const aCategory, aIconNumber: integer): TButtonItem;
var
  I: integer;
begin
  I := IfThen(aCategory = -1, Pred(FcatMenuItems.Categories.Count), aCategory);
  Result := FcatMenuItems.Categories[I].Items.Add;
  Result.Caption := aTitle;
  Result.ImageIndex := aIconNumber;
end;

function TJanuaTMSNavBarController.AddButton(const aForm: TJanuaFormRecord): TButtonItem;
begin
  Result := AddButton(aForm.Title, aForm.ClassName, -1, aForm.IconIndex);
  // Little Test
  FButtonsForms.Add(Result as TBaseItem, aForm);
  Result.OnClick := btnFormClick;
end;

function TJanuaTMSNavBarController.AddCategory(const aCategory: TJanuaApplicationRecord;
  const aShowTitle: boolean = True): TButtonCategory;
var
  // P è il puntatore alla variabile aCategory e viene registrato nell'oggetto TButtonCategory
  // P: PJanuaApplicationRecord;
  I: integer;
begin
  Result := AddCategory(IfThen(aShowTitle, aCategory.Title, ''), aCategory.Name, aCategory.IconIndex);
  // Result.Hint := aCategory.Description;  No hints to display
  // P := @aCategory;
  // Result.Data := P;

  // For Every Form Contained in the Category The procedures adds a Button in the right Pane
  for I := 0 to Pred(aCategory.Forms.Count) do
    AddButton(aCategory.Forms[I]);
end;

procedure TJanuaTMSNavBarController.AddCategoryButtons(const aApplication: TJanuaApplicationRecord);
var
  lNPanel: TAdvNavBarPanel;
  lFrame: TJanuaCategoryButtonsFrame;
begin
  lNPanel := AddPanel(aApplication);
  lNPanel.Caption := aApplication.Title;
  lNPanel.ImageIndex := aApplication.IconIndex;
  lFrame := TJanuaCategoryButtonsFrame.Create(lNPanel);
  lFrame.Align := AlClient;
  lFrame.Parent := lNPanel;
  FcatMenuItems := lFrame.catMenuItems;
  FcatMenuItems.Images := FImageList;
  {
    FcatMenuItems.BorderStyle := bsNone;
    FcatMenuItems.ButtonFlow := cbfVertical;
    FcatMenuItems.ButtonOptions := FcatMenuItems.ButtonOptions + [boFullSize, boCaptionOnlyBorder];
    FcatMenuItems.Font.Name := 'Segoe UI';
    FcatMenuItems.Font.Size := 10;
    FcatMenuItems.ButtonOptions := FcatMenuItems.ButtonOptions - [boGradientFill, boVerticalCategoryCaptions];
  }
end;

function TJanuaTMSNavBarController.AddCategory(const aTitle, aName: string; const aIconNumber: integer)
  : TButtonCategory;
begin
  Result := FcatMenuItems.Categories.Add;
  Result.Collapsed := False;
  Result.Caption := aTitle;
  // No Icon to Display
end;

procedure TJanuaTMSNavBarController.AddFrame(const aApplication: TJanuaApplicationRecord);
var
  lFrame: TFrame;
  lNPanel: TAdvNavBarPanel;
  aContainer: IJanuaContainer;
  aParent: IJanuaControl;
begin
  try
    // -------------------------------------------------------------------------------------------
    // Procedura che crea un panello con una Icona (se presente) che rappresenta una Applicazione
    // Formata da un Frame. Successivamente Crea il Frame e lo posiziona all'interno del Panel
    // -------------------------------------------------------------------------------------------
    lNPanel := AddPanel(aApplication);

    aContainer := aApplication.CreateFrame(lNPanel);

    if aContainer.AsComponent is TFrame then
    begin
      lFrame := aContainer.AsComponent as TFrame;
      lFrame.Name := aApplication.Name;
      lFrame.Align := AlClient;
      lFrame.Parent := lNPanel;
    end
    else
      raise exception.Create('TJanuaTMSNavBarController.AddFrame Error lFrame is not TFrame descendant');
  finally

  end;

end;

function TJanuaTMSNavBarController.AddPanel(const aApplication: TJanuaApplicationRecord): TAdvNavBarPanel;
begin
  Inc(FPanelCount);
  if FPanelCount > FAdvNavBar.PanelCount then
    Result := FAdvNavBar.AddPanel
  else
    Result := FAdvNavBar.Panels[FPanelCount - 1];

  Result.ImageIndex := aApplication.IconIndex;
  Result.Caption := aApplication.Title;
  Result.Hint := aApplication.Description;
  FAdvNavBar.SplitterPosition := FAdvNavBar.PanelCount - 1;

end;

procedure TJanuaTMSNavBarController.btnFormClick(Sender: TObject);
var
  // PJanuaApplicationRecord = ^TJanuaApplicationRecord;
  lRecord: TJanuaFormRecord;
  // lSenderName: string;
  lCategoryButtons: TCategoryButtons;
begin
  // a button has been pressed, this buttons holds a 'data' pointer to a RecordForm ...
  if Assigned(Sender) then
  begin
    // lSenderName := Sender.ClassName;
    lCategoryButtons := (Sender as TCategoryButtons);

    if FButtonsForms.TryGetValue(lCategoryButtons.SelectedItem, lRecord) then
    begin
      if Assigned(FOnRecordFound) then
        FOnRecordFound(lRecord)
      else if Assigned(FPageController) then
        FPageController.btnAdvBarClick(lRecord)
    end;
  end;
end;

constructor TJanuaTMSNavBarController.Create(AOwner: TComponent);
begin
  inherited;
  FPanelCount := 0;
end;

procedure TJanuaTMSNavBarController.SetAdvNavBar(const Value: TAdvNavBar);
begin
  FAdvNavBar := Value;
end;

procedure TJanuaTMSNavBarController.SetcatMenuItems(const Value: TCategoryButtons);
begin
  FcatMenuItems := Value;
end;

procedure TJanuaTMSNavBarController.SetContainer(const Value: TWinControl);
begin
  FContainer := Value;
end;

procedure TJanuaTMSNavBarController.SetImageList48(const Value: TCustomImageList);
begin
  FImageList := Value;
end;


procedure TJanuaTMSNavBarController.SetOnRecordFound(Value: TFormRecordFoundEvent);
begin
  FOnRecordFound := Value;
end;

procedure TJanuaTMSNavBarController.SetPageController(const Value: TJanuaCustomPageController);
begin
  FPageController := Value;
end;

procedure TJanuaTMSNavBarController.SetupApplication(const aApplication: TJanuaApplicationRecord);
begin

end;

end.

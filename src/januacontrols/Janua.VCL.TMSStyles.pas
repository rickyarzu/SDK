unit Janua.VCL.TMSStyles;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, AdvOfficeStatusBarStylers, AdvOfficePager,
  AdvOfficePagerStylers, AdvMenus, AdvMenuStylers, AdvOfficeTabSetStylers, AdvAppStyler, AdvStyleIf,
  AdvGlowButton, Janua.Core.System, System.TypInfo, VCL.Menus, VCL.Forms, Janua.Core.Functions,
  AdvPanel, AdvOfficeTabSet, AdvToolBar;

type
  TJanuaStyle = record
    Style: TTMSStyle;
    StyleName: string;
    OfficeTabSetStyle: TOfficeTabSetStyle;
    PanelStyle: TAdvPanelStyle;
    OfficeAdvStyle: TOfficeStyle;
    OfficePagerStyle: TOfficePagerStyle;
  end;

type
  TJanuaTMSStyleManager = class(TJanuaCoreComponent)
  private
    FStyle: TTMSStyle;
    arrayStyles: array of TJanuaStyle;
    FPopUpMenu: TAdvPopupMenu;
    FButton: TAdvGlowMenuButton;
    FJanuaOS: TJanuaCoreOS;
    FMetroStyle: boolean;
    FJanuaStyle: TJanuaStyle;
    FAppStyler: TAdvAppStyler;
    procedure SetMetroStyle(const Value: boolean);

    procedure LoadLocalStyle;
    procedure SetButton(const Value: TAdvGlowMenuButton);
    procedure InternalSetButtonCaption;
    procedure InternalSetButton;
    procedure SetAppStyler(const Value: TAdvAppStyler);
    procedure SetPopUpMenu(const Value: TAdvPopupMenu);
    { Private declarations }
  protected
    { Protected declarations }
    procedure SetJanuaOS(const Value: TJanuaCoreOS); override;
    procedure InternalSetPopUp;
    procedure SetJanuaStyle(const Value: TJanuaStyle);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure PopupItemClick(Sender: TObject);
    procedure SetStyle(const Value: TTMSStyle);
    function Activate: boolean; override;
  published
    { Published declarations }
    property Style: TTMSStyle read FStyle write SetStyle;
    property AppStyler: TAdvAppStyler read FAppStyler write SetAppStyler;
    property PopUpMenu: TAdvPopupMenu read FPopUpMenu write SetPopUpMenu;
    property Button: TAdvGlowMenuButton read FButton write SetButton;
    property MetroStyle: boolean read FMetroStyle write SetMetroStyle;
    property JanuaOS: TJanuaCoreOS read FJanuaOS write SetJanuaOS;
    property JanuaStyle: TJanuaStyle read FJanuaStyle;
  end;

Type
  TJanuaFormStyler = class(TJanuaCoreComponent)

  private
    FJanuaStyle: TJanuaStyle;
    FAdvOfficeTabStyler: TAdvOfficeTabSetOfficeStyler;
    FAdvMenuStyler: TAdvMenuOfficeStyler;
    FAdvFormStyler: TAdvFormStyler;
    FAdvPanelStyler: TAdvPanelStyler;
    FJanuaStyleManager: TJanuaTMSStyleManager;
    FAdvOfficePageStyler: TAdvOfficePagerOfficeStyler;
    procedure SetJanuaStyle(const Value: TJanuaStyle);
    procedure SetJanuaStyleManager(const Value: TJanuaTMSStyleManager);
    procedure ApplyStyleManager;
    procedure SetAdvFormStyler(const Value: TAdvFormStyler);

  protected
    procedure InternalSetMenuStyler;
    procedure InternalSetFormStyle;
    procedure IntrnalSetAdvPanelStyler;
    procedure InternalSetTabStyler;
    procedure InternalSetPageStyler;
    procedure AdvFormStylerChange(Sender: TObject);
  public
    property AdvMenuStyler: TAdvMenuOfficeStyler read FAdvMenuStyler;
    property AdvPanelStyler: TAdvPanelStyler read FAdvPanelStyler;
    property AdvOfficeTabStyler: TAdvOfficeTabSetOfficeStyler read FAdvOfficeTabStyler;
    property AdvOfficePageStyler: TAdvOfficePagerOfficeStyler read FAdvOfficePageStyler;
    property JanuaStyle: TJanuaStyle read FJanuaStyle write SetJanuaStyle;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
    function Activate: boolean; override;
  published
    property JanuaStyleManager: TJanuaTMSStyleManager read FJanuaStyleManager write SetJanuaStyleManager;
    property AdvFormStyler: TAdvFormStyler read FAdvFormStyler write SetAdvFormStyler;
  end;

  {

    TAdvPanelStyle = (psXP, psFlat, psTMS, psClassic, psOffice2003Blue, psOffice2003Olive,
    psOffice2003Silver, psOffice2003Classic, psOffice2007Luna, psOffice2007Obsidian,
    psWhidbey, psWindowsXP, psCustom, psOffice2007Silver, psWindowsVista, psWindows7,
    psTerminal, psOffice2010Blue, psOffice2010Silver, psOffice2010Black, psWindows8,
    psOffice2013White,psOffice2013LightGray, psOffice2013Gray);

    TMetroStyle = (msLight, msDark);

    tsOffice2003Blue, tsOffice2003Silver, tsOffice2003Olive, tsOffice2003Classic,
    tsOffice2007Luna, tsOffice2007Obsidian, tsWindowsXP, tsWhidbey, tsCustom, tsOffice2007Silver,
    tsWindowsVista, tsWindows7, tsTerminal, tsOffice2010Blue, tsOffice2010Silver, tsOffice2010Black,
    tsWindows8, tsOffice2013White, tsOffice2013LightGray, tsOffice2013Gray }

  { TOfficeTabSetFantasyStyle = (tsArctic, tsAquaBlue, tsChocolate, tsMacOS, tsSilverFox, tsSoftSand,
    tsTerminalGreen, tsTextured, tsWindowsClassic, tsUser);

    TOfficeTabSetStyle = (tsOffice2003Blue, tsOffice2003Silver, tsOffice2003Olive,
    tsOffice2003Classic, tsOffice2007Luna, tsOffice2007Obsidian, tsWindowsXP, tsWhidbey, tsCustom,
    tsOffice2007Silver, tsWindowsVista, tsWindows7, tsTerminal, tsOffice2010Blue,
    tsOffice2010Silver, tsOffice2010Black, tsWindows8, tsOffice2013White, tsOffice2013LightGray,
    tsOffice2013Gray); }

implementation

{ TJanuaTMSStyleManager }

function TJanuaTMSStyleManager.Activate: boolean;
var
  aStyle: TTMSStyle;
  i: Integer;
  // TTMSStyleTypeInfo: PTypeInfo;
begin
  if not(csDesigning in ComponentState) then
    try
      if not assigned(FAppStyler) then
      begin
        FAppStyler := TAdvAppStyler.Create(self.Owner);
        self.FAppStyler.Name := 'JanuaAppStyler';
      end;

      SetLength(arrayStyles, 0);
      for aStyle := Low(TTMSStyle) to High(TTMSStyle) do
      // for i in REnumerationEnumerator.Create(TTMSStyleTypeInfo) do
      begin
        i := Ord(aStyle);
        SetLength(arrayStyles, i + 1);
        arrayStyles[i].Style := aStyle;
        case aStyle of
          TTMSStyle.tsOffice2003Blue:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2003Blue;
              arrayStyles[i].StyleName := 'Office 2003 Blue';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2003Blue;
              arrayStyles[i].OfficeAdvStyle := TOfficeStyle.osOffice2003Blue;
            end;
          TTMSStyle.tsOffice2003Silver:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2003Silver;
              arrayStyles[i].StyleName := 'Office 2003 Argento';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2003Blue;
              arrayStyles[i].OfficeAdvStyle := TOfficeStyle.osOffice2003Silver;
            end;
          TTMSStyle.tsOffice2003Olive:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2003Olive;
              arrayStyles[i].StyleName := 'Office 2003 Oliva';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2003Olive;
              arrayStyles[i].OfficeAdvStyle := TOfficeStyle.osOffice2003Olive;
            end;
          TTMSStyle.tsOffice2003Classic:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2003Classic;
              arrayStyles[i].StyleName := 'Office 2003 Classico';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2003Classic;
              arrayStyles[i].OfficeAdvStyle := TOfficeStyle.osOffice2003Silver;
            end;
          TTMSStyle.tsOffice2007Luna:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2007Luna;
              arrayStyles[i].StyleName := 'Office 2007 Luna';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2007Luna;
              arrayStyles[i].OfficeAdvStyle := TOfficeStyle.osOffice2003Silver;
            end;
          TTMSStyle.tsOffice2007Obsidian:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2007Obsidian;
              arrayStyles[i].StyleName := 'Office 2007 Ossido';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2007Obsidian;
              arrayStyles[i].OfficeAdvStyle := TOfficeStyle.osOffice2007Obsidian;
            end;
          TTMSStyle.tsOffice2007Silver:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2007Silver;
              arrayStyles[i].StyleName := 'Office 2007 Argento';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2007Silver;
            end;
          TTMSStyle.tsWindowsXP:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsWindowsXP;
              arrayStyles[i].StyleName := 'Windows XP';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psWindowsXP;
            end;
          TTMSStyle.tsWhidbey:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsWhidbey;
              arrayStyles[i].StyleName := 'Whidbey';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psWhidbey;
            end;
          TTMSStyle.tsCustom:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsCustom;
              arrayStyles[i].StyleName := 'ErgoMercator';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psCustom;
            end;
          TTMSStyle.tsWindowsVista:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsWindowsVista;
              arrayStyles[i].StyleName := 'Windows Vista';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psWindowsVista;
            end;
          TTMSStyle.tsWindows7:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsWindows7;
              arrayStyles[i].StyleName := 'Windows 7';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psWindows7;
            end;
          TTMSStyle.tsTerminal:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsTerminal;
              arrayStyles[i].StyleName := 'Terminale';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psTerminal;
            end;
          TTMSStyle.tsOffice2010Blue:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2010Blue;
              arrayStyles[i].StyleName := 'Office 2010 Blu';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2010Blue;
            end;
          TTMSStyle.tsOffice2010Silver:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2010Silver;
              arrayStyles[i].StyleName := 'Office 2010 Argento';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2010Silver;
            end;
          TTMSStyle.tsOffice2010Black:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2010Black;
              arrayStyles[i].StyleName := 'Office 2010 Nero';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2010Black;
            end;
          TTMSStyle.tsWindows8:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsWindows8;
              arrayStyles[i].StyleName := 'Windows 8';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psWindows8;
            end;
          TTMSStyle.tsOffice2013White:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2013White;
              arrayStyles[i].StyleName := 'Office 2013 Bianco';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2013White;
            end;
          TTMSStyle.tsOffice2013LightGray:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2013LightGray;
              arrayStyles[i].StyleName := 'Office 2013 Argento';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2013LightGray;
            end;
          TTMSStyle.tsOffice2013Gray:
            begin
              arrayStyles[i].OfficeTabSetStyle := TOfficeTabSetStyle.tsOffice2013Gray;
              arrayStyles[i].StyleName := 'Office 2003 Grigio';
              arrayStyles[i].PanelStyle := TAdvPanelStyle.psOffice2013Gray;
            end;
        end;
      end;

      if not assigned(self.FPopUpMenu) then
      begin
        self.FPopUpMenu := TAdvPopupMenu.Create(self.Owner);
        self.FPopUpMenu.Name := 'JanuaStylePopup';
      end;

      self.FActive := True;
      Result := True;
      self.InternalSetPopUp;
      self.LoadLocalStyle;
      self.InternalSetButtonCaption;
    except
      on e: exception do
        self.WriteError('JanuaStylePopup', e);
    end;
end;

constructor TJanuaTMSStyleManager.Create(AOwner: TComponent);
begin
  inherited;
end;

procedure TJanuaTMSStyleManager.InternalSetPopUp;
var
  aStyle: TJanuaStyle;
  menuItem: TMenuItem;
begin
  if assigned(self.FPopUpMenu) and not(csDesigning in ComponentState) then
  begin
    if (FPopUpMenu.Items.Count = 0) then
    begin
      for aStyle in self.arrayStyles do
      begin
        FPopUpMenu.BeginUpdate;
        menuItem := TMenuItem.Create(FPopUpMenu);
        menuItem.Caption := aStyle.StyleName;
        menuItem.RadioItem := True;
        menuItem.Tag := Ord(aStyle.Style);
        menuItem.Checked := aStyle.Style = self.FStyle;
        menuItem.Name := StringReplace(aStyle.StyleName, ' ', '', [rfReplaceAll, rfIgnoreCase]);
        menuItem.OnClick := PopupItemClick;
        FPopUpMenu.Items.Add(menuItem);
        FPopUpMenu.EndUpdate;
        // assign it a custom integer value..   menuItem.Tag := GetTickCount;    PopupMenu1.Items.Add(menuItem) ; end;
      end;
    end;
    if assigned(self.FButton) then
      self.FButton.DropDownMenu := self.FPopUpMenu;
  end;
end;

procedure TJanuaTMSStyleManager.PopupItemClick(Sender: TObject);
begin
  self.SetJanuaStyle(self.arrayStyles[TMenuItem(Sender).Tag]);
  TMenuItem(Sender).Checked := True;
end;

procedure TJanuaTMSStyleManager.InternalSetButtonCaption;
begin
  if assigned(FButton) then
  begin
    FButton.Caption := self.FJanuaStyle.StyleName;
    FButton.Invalidate;
  end;
end;

procedure TJanuaTMSStyleManager.LoadLocalStyle;
begin
  if assigned(FJanuaOS) and not(csDesigning in ComponentState) and self.Active then
  begin
    SetJanuaStyle(arrayStyles[FJanuaOS.ReadParam('Application', 'Style', Ord(TTMSStyle.tsOffice2003Blue))]);
  end;
end;

procedure TJanuaTMSStyleManager.SetAppStyler(const Value: TAdvAppStyler);
begin
  FAppStyler := Value;
  if assigned(self.FAppStyler) then
    self.FAppStyler.Style := self.FJanuaStyle.Style
end;

procedure TJanuaTMSStyleManager.SetButton(const Value: TAdvGlowMenuButton);
begin
  FButton := Value;
  InternalSetButton;
end;

procedure TJanuaTMSStyleManager.SetJanuaOS(const Value: TJanuaCoreOS);
begin
  inherited;
  if assigned(self.FJanuaOS) then
    LoadLocalStyle;
end;

procedure TJanuaTMSStyleManager.SetJanuaStyle(const Value: TJanuaStyle);
begin
  FJanuaStyle := Value;
  if assigned(FJanuaOS) then
    self.FJanuaOS.WriteParam('Application', 'Style', Ord(self.FJanuaStyle.Style));
  if assigned(FPopUpMenu) then
    FPopUpMenu.Items[Ord(self.FJanuaStyle.Style)].Checked := True;
  InternalSetButtonCaption;
  if assigned(self.FAppStyler) then
    self.FAppStyler.Style := self.FJanuaStyle.Style;
end;

procedure TJanuaTMSStyleManager.SetMetroStyle(const Value: boolean);
begin
  FMetroStyle := Value;

end;

procedure TJanuaTMSStyleManager.SetPopUpMenu(const Value: TAdvPopupMenu);
begin
  FPopUpMenu := Value;
end;

procedure TJanuaTMSStyleManager.SetStyle(const Value: TTMSStyle);
begin
  if FStyle <> Value then
  begin
    FStyle := Value;
    if length(self.arrayStyles) > 0 then
    begin
      self.SetJanuaStyle(arrayStyles[Ord(Value)]);
    end;
  end;
end;

procedure TJanuaTMSStyleManager.InternalSetButton;
begin
  if assigned(FButton) then
  begin
    FButton.Caption := self.FJanuaStyle.StyleName;
    if assigned(self.PopUpMenu) then
      self.FButton.DropDownMenu := self.PopUpMenu;
  end;
end;

destructor TJanuaTMSStyleManager.Destroy;
begin
  {
    if Assigned(FPopUpMenu) then
    self.FPopUpMenu.Free;
    if Assigned(FAppStyler) then
    FAppStyler.Free;
  }
  inherited;
end;

{ TJanuaFormStyler }

{
}

procedure TJanuaFormStyler.IntrnalSetAdvPanelStyler;
var
  i: Integer;
begin
  if assigned(self.FAdvPanelStyler) then
  begin
    if assigned(self.Owner) then
    begin
      for i := 0 to self.Owner.ComponentCount - 1 do
      begin
        if self.Owner.Components[i] is TAdvPanel then
          (self.Owner.Components[i] as TAdvPanel).Styler := self.FAdvPanelStyler;

        if self.Owner.Components[i] is TAdvPanelGroup then
          (self.Owner.Components[i] as TAdvPanelGroup).Styler := self.FAdvPanelStyler;
      end;
    end;
  end;
end;

procedure TJanuaFormStyler.InternalSetFormStyle;
begin
  if assigned(self.FAdvFormStyler) then
  begin
    if assigned(self.FJanuaStyleManager) then
    begin
      self.FAdvFormStyler.AppStyle := self.FJanuaStyleManager.AppStyler;
    end
    else
    begin
      self.FAdvFormStyler.Style := self.FJanuaStyle.Style;
    end;
  end;
end;

function TJanuaFormStyler.Activate: boolean;
begin
  if not(csDesigning in ComponentState) then
    try
      if not assigned(FAdvFormStyler) then
      begin
        FAdvFormStyler := TAdvFormStyler.Create(Owner);
        self.FAdvFormStyler.Name := 'JanuaFormStyler';
      end;

      self.FAdvFormStyler.OnChange := AdvFormStylerChange;

      if not assigned(FAdvMenuStyler) then
        FAdvMenuStyler := TAdvMenuOfficeStyler.Create(Owner);
      self.FAdvMenuStyler.Name := 'JanuaMenuStyler';
      // Nota .... Adv Menu Styler non ha una connessione diretta con gli altri stili ........
      self.InternalSetMenuStyler;

      if not assigned(FAdvOfficeTabStyler) then
        FAdvOfficeTabStyler := TAdvOfficeTabSetOfficeStyler.Create(Owner);
      self.FAdvOfficeTabStyler.Name := 'JanuaOfficeTabStyler';
      self.InternalSetTabStyler;

      if not assigned(FAdvPanelStyler) then
        FAdvPanelStyler := TAdvPanelStyler.Create(Owner);
      self.FAdvPanelStyler.Name := 'JanuaAdvPanelStyler';
      self.IntrnalSetAdvPanelStyler;

      ApplyStyleManager;
    except
      on e: exception do
        self.WriteError('TJanuaFormStyler.Create', e);
    end;
end;

procedure TJanuaFormStyler.ApplyStyleManager;
begin
  if assigned(FAdvFormStyler) and assigned(FJanuaStyleManager) and self.FActive and not(csDesigning in ComponentState)
  then
  begin
    self.FAdvFormStyler.AppStyle := self.FJanuaStyleManager.AppStyler;
    SetJanuaStyle(FJanuaStyleManager.JanuaStyle);
  end;
end;

procedure TJanuaFormStyler.AdvFormStylerChange(Sender: TObject);
begin
  self.SetJanuaStyle(self.FJanuaStyleManager.JanuaStyle);
end;

constructor TJanuaFormStyler.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TJanuaFormStyler.Destroy;
begin
  {
    if Assigned(FAdvFormStyler) then
    FAdvFormStyler.Free;
    if Assigned(FAdvMenuStyler) then
    FAdvMenuStyler.Free;
    if Assigned(FAdvOfficeTabStyler) then
    FAdvOfficeTabStyler.Free;
    if Assigned(FAdvPanelStyler) then
    FAdvPanelStyler.Free;
  }
  inherited;
end;

procedure TJanuaFormStyler.InternalSetMenuStyler;
var
  i: Integer;
begin
  if assigned(self.FAdvMenuStyler) then
  begin
    self.FAdvMenuStyler.Style := self.FJanuaStyle.OfficeAdvStyle;
    if assigned(self.Owner) then
    begin
      for i := 0 to self.Owner.ComponentCount - 1 do
      begin
        if self.Owner.Components[i] is TAdvMainMenu then
        begin
          (self.Owner.Components[i] as TAdvMainMenu).MenuStyler := self.FAdvMenuStyler;
          (self.Owner.Components[i] as TAdvMainMenu).BeginUpdate;
          (self.Owner.Components[i] as TAdvMainMenu).EndUpdate;
        end;
        if self.Owner.Components[i] is TAdvPopupMenu then
          (self.Owner.Components[i] as TAdvPopupMenu).MenuStyler := self.FAdvMenuStyler;
      end;
    end;
  end;
  // fa qualcosa ......
end;

procedure TJanuaFormStyler.InternalSetPageStyler;
var
  i: Integer;
begin
  // TOfficeStyle  TAdvOfficePager

  if assigned(self.FAdvOfficePageStyler) then
  begin
    self.FAdvOfficePageStyler.Style := self.FJanuaStyle.OfficePagerStyle;
    if assigned(self.Owner) then
    begin
      for i := 0 to self.Owner.ComponentCount - 1 do
      begin
        if self.Owner.Components[i] is TAdvOfficePager then
          (self.Owner.Components[i] as TAdvOfficePager).AdvOfficePagerStyler := self.FAdvOfficePageStyler;
      end;
    end;
  end;

end;

procedure TJanuaFormStyler.InternalSetTabStyler;
var
  i: Integer;
begin
  // TOfficeStyle

  if assigned(self.FAdvOfficeTabStyler) then
  begin
    self.FAdvOfficeTabStyler.Style := self.FJanuaStyle.OfficeTabSetStyle;
    if assigned(self.Owner) then
    begin
      for i := 0 to self.Owner.ComponentCount - 1 do
      begin
        if self.Owner.Components[i] is TAdvOfficeMDITabSet then
          (self.Owner.Components[i] as TAdvOfficeMDITabSet).AdvOfficeTabSetStyler := self.FAdvOfficeTabStyler;
      end;
    end;
  end;
end;

procedure TJanuaFormStyler.SetAdvFormStyler(const Value: TAdvFormStyler);
begin
  FAdvFormStyler := Value;
  ApplyStyleManager;
end;

procedure TJanuaFormStyler.SetJanuaStyle(const Value: TJanuaStyle);
begin
  if (self.FJanuaStyle.StyleName <> Value.StyleName) then
  begin
    FJanuaStyle := Value;
    InternalSetFormStyle;
    InternalSetTabStyler;
    InternalSetMenuStyler;
    InternalSetPageStyler;
  end;
end;

procedure TJanuaFormStyler.SetJanuaStyleManager(const Value: TJanuaTMSStyleManager);
begin
  FJanuaStyleManager := Value;
  ApplyStyleManager;
end;

end.

unit ufrmTestRapportino;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants, System.Generics.Collections, System.JSON,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ScrollBox, FMX.Memo, FMX.StdCtrls, FMX.Layouts, FMX.Objects,
  FMX.Controls.Presentation, FMX.TabControl,
  REST.Client, REST.Types, System.Net.HttpClient, System.Net.URLClient,
  // Tue classi DTO
  Phoenix.JSON.Statini, Janua.Core.JSON.DTO;

type
  // Forward declarations
  TBaseFrameContainer = class;
  TMainForm = class;

  // Interfaccia per la navigazione
  INavigationHandler = interface
    ['{A1B2C3D4-E5F6-7890-1234-567890ABCDEF}']
    procedure NavigateToHome;
    procedure NavigateToCategory(const CategoryName: string);
    procedure ShowEditForm(AObject: TObject);
    procedure RefreshCurrentView;
  end;

  // Classe base per tutti i Frame Container
  TBaseFrameContainer = class(TFrame)
  private
    FNavigationHandler: INavigationHandler;
    FStatino: TStatino;
    FContentLayout: TLayout;
    FScrollBox: TScrollBox;
    FHeaderLayout: TLayout;
    FTitleLabel: TLabel;
    FCountLabel: TLabel;
    FAddButton: TButton;
    FHomeButton: TButton;
    FFramesList: TList<TFrame>;
  protected
    procedure SetupContainer; virtual;
    procedure CreateFrames; virtual; abstract;
    procedure ClearFrames; virtual;
    procedure UpdateHeader; virtual; abstract;
    procedure OnAddButtonClick(Sender: TObject); virtual;
    procedure OnHomeButtonClick(Sender: TObject); virtual;
    function GetItemCount: Integer; virtual; abstract;
    function GetCategoryTitle: string; virtual; abstract;
  public
    constructor Create(AOwner: TComponent; AStatino: TStatino; ANavigationHandler: INavigationHandler);
      reintroduce;
    destructor Destroy; override;
    procedure RefreshContainer; virtual;
    property Statino: TStatino read FStatino write FStatino;
    property NavigationHandler: INavigationHandler read FNavigationHandler write FNavigationHandler;
  end;

  // Frame Container per Estintori
  TEstintoreFrameContainer = class(TBaseFrameContainer)
  protected
    procedure CreateFrames; override;
    procedure UpdateHeader; override;
    function GetItemCount: Integer; override;
    function GetCategoryTitle: string; override;
  end;

  // Frame Container per Sprinkler
  TSprinklerFrameContainer = class(TBaseFrameContainer)
  protected
    procedure CreateFrames; override;
    procedure UpdateHeader; override;
    function GetItemCount: Integer; override;
    function GetCategoryTitle: string; override;
  end;

  // Frame Container per Porte
  TPorteFrameContainer = class(TBaseFrameContainer)
  protected
    procedure CreateFrames; override;
    procedure UpdateHeader; override;
    function GetItemCount: Integer; override;
    function GetCategoryTitle: string; override;
  end;

  // Frame Container per Luci
  TLuciFrameContainer = class(TBaseFrameContainer)
  protected
    procedure CreateFrames; override;
    procedure UpdateHeader; override;
    function GetItemCount: Integer; override;
    function GetCategoryTitle: string; override;
  end;

  // Frame Container per Rilevatori Fumo
  TRilevatoriFumoFrameContainer = class(TBaseFrameContainer)
  protected
    procedure CreateFrames; override;
    procedure UpdateHeader; override;
    function GetItemCount: Integer; override;
    function GetCategoryTitle: string; override;
  end;

  // Frame Container per Gruppi Pressurizzazione
  TGruppiPressurizzazioneFrameContainer = class(TBaseFrameContainer)
  protected
    procedure CreateFrames; override;
    procedure UpdateHeader; override;
    function GetItemCount: Integer; override;
    function GetCategoryTitle: string; override;
  end;

  // Frame Container per Idranti
  TIdrantiFrameContainer = class(TBaseFrameContainer)
  protected
    procedure CreateFrames; override;
    procedure UpdateHeader; override;
    function GetItemCount: Integer; override;
    function GetCategoryTitle: string; override;
  end;

  // Frame Container per Impianti Elettrici
  TImpiantiElettriciFrameContainer = class(TBaseFrameContainer)
  protected
    procedure CreateFrames; override;
    procedure UpdateHeader; override;
    function GetItemCount: Integer; override;
    function GetCategoryTitle: string; override;
  end;

  // Frame Container per Prodotti
  TProdottiFrameContainer = class(TBaseFrameContainer)
  protected
    procedure CreateFrames; override;
    procedure UpdateHeader; override;
    function GetItemCount: Integer; override;
    function GetCategoryTitle: string; override;
  end;

  // Frame base per i singoli dispositivi (placeholder per i tuoi frame)
  TBaseDeviceFrame = class(TFrame)
  private
    FNavigationHandler: INavigationHandler;
    FData: TObject;
    FBackground: TRectangle;
    FMainLayout: TLayout;
    FTitleLabel: TLabel;
    FDetailsLabel: TLabel;
    FStatusLabel: TLabel;
    FEditButton: TButton;
    FDeleteButton: TButton;
  protected
    procedure SetupFrame; virtual;
    procedure UpdateDisplay; virtual; abstract;
    procedure OnEditClick(Sender: TObject); virtual;
    procedure OnDeleteClick(Sender: TObject); virtual;
  public
    constructor Create(AOwner: TComponent; AData: TObject; ANavigationHandler: INavigationHandler);
      reintroduce;
    procedure RefreshFrame; virtual;
    property Data: TObject read FData write FData;
    property NavigationHandler: INavigationHandler read FNavigationHandler write FNavigationHandler;
  end;

  // Frame specifici per ogni tipo di dispositivo (placeholder per i tuoi frame)
  TEstintoreFrame = class(TBaseDeviceFrame)
  protected
    procedure UpdateDisplay; override;
  end;

  TSprinklerFrame = class(TBaseDeviceFrame)
  protected
    procedure UpdateDisplay; override;
  end;

  TPortaFrame = class(TBaseDeviceFrame)
  protected
    procedure UpdateDisplay; override;
  end;

  TLuceFrame = class(TBaseDeviceFrame)
  protected
    procedure UpdateDisplay; override;
  end;

  TRilevatoreFumoFrame = class(TBaseDeviceFrame)
  protected
    procedure UpdateDisplay; override;
  end;

  TGruppoPressurizzazioneFrame = class(TBaseDeviceFrame)
  protected
    procedure UpdateDisplay; override;
  end;

  TIdranteFrame = class(TBaseDeviceFrame)
  protected
    procedure UpdateDisplay; override;
  end;

  TImpiantoElettricoFrame = class(TBaseDeviceFrame)
  protected
    procedure UpdateDisplay; override;
  end;

  TProdottoFrame = class(TBaseDeviceFrame)
  protected
    procedure UpdateDisplay; override;
  end;

  // Form principale con Tabbed Navigator
  TMainForm = class(TForm, INavigationHandler)
    MainLayout: TLayout;
    HeaderLayout: TLayout;
    ContentLayout: TLayout;
    ToolBar1: TToolBar;
    LoadButton: TButton;
    SaveButton: TButton;
    StatusLabel: TLabel;
    HomeButton: TButton;
    TitleLabel: TLabel;

    // Tabbed Navigator
    TabControl1: TTabControl;
    TabEstintori: TTabItem;
    TabSprinkler: TTabItem;
    TabPorte: TTabItem;
    TabLuci: TTabItem;
    TabRilevatoriFumo: TTabItem;
    TabGruppiPressurizzazione: TTabItem;
    TabIdranti: TTabItem;
    TabImpiantiElettrici: TTabItem;
    TabProdotti: TTabItem;

    procedure LoadButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure HomeButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
  private
    FStatino: TStatino;
    FRESTClient: TRESTClient;
    FRESTRequest: TRESTRequest;
    FRESTResponse: TRESTResponse;

    // Frame Containers
    FEstintoreContainer: TEstintoreFrameContainer;
    FSprinklerContainer: TSprinklerFrameContainer;
    FPorteContainer: TPorteFrameContainer;
    FLuciContainer: TLuciFrameContainer;
    FRilevatoriFumoContainer: TRilevatoriFumoFrameContainer;
    FGruppiPressurizzazioneContainer: TGruppiPressurizzazioneFrameContainer;
    FIdrantiContainer: TIdrantiFrameContainer;
    FImpiantiElettriciContainer: TImpiantiElettriciFrameContainer;
    FProdottiContainer: TProdottiFrameContainer;

    procedure LoadDataFromServer;
    procedure SaveDataToServer;
    procedure CreateFrameContainers;
    procedure UpdateTabVisibility;
    procedure UpdateMainTitle;
  public
    // INavigationHandler implementation
    procedure NavigateToHome;
    procedure NavigateToCategory(const CategoryName: string);
    procedure ShowEditForm(AObject: TObject);
    procedure RefreshCurrentView;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

// TBaseFrameContainer Implementation
constructor TBaseFrameContainer.Create(AOwner: TComponent; AStatino: TStatino;
  ANavigationHandler: INavigationHandler);
begin
  inherited Create(AOwner);
  FStatino := AStatino;
  FNavigationHandler := ANavigationHandler;
  FFramesList := TList<TFrame>.Create;
  SetupContainer;
end;

destructor TBaseFrameContainer.Destroy;
begin
  ClearFrames;
  FFramesList.Free;
  inherited;
end;

procedure TBaseFrameContainer.SetupContainer;
begin
  Align := TAlignLayout.Client;

  // Header Layout
  FHeaderLayout := TLayout.Create(Self);
  FHeaderLayout.Parent := Self;
  FHeaderLayout.Align := TAlignLayout.Top;
  FHeaderLayout.Height := 60;
  FHeaderLayout.Margins.Rect := RectF(10, 10, 10, 5);

  // Title Label
  FTitleLabel := TLabel.Create(FHeaderLayout);
  FTitleLabel.Parent := FHeaderLayout;
  FTitleLabel.Align := TAlignLayout.Left;
  FTitleLabel.Width := 200;
  FTitleLabel.TextSettings.Font.Style := [TFontStyle.fsBold];
  FTitleLabel.Margins.Rect := RectF(5, 5, 5, 5);

  // Count Label
  FCountLabel := TLabel.Create(FHeaderLayout);
  FCountLabel.Parent := FHeaderLayout;
  FCountLabel.Align := TAlignLayout.Left;
  FCountLabel.Width := 100;
  FCountLabel.Margins.Rect := RectF(5, 5, 5, 5);

  // Home Button
  FHomeButton := TButton.Create(FHeaderLayout);
  FHomeButton.Parent := FHeaderLayout;
  FHomeButton.Align := TAlignLayout.Right;
  FHomeButton.Width := 80;
  FHomeButton.Text := 'Home';
  FHomeButton.OnClick := OnHomeButtonClick;
  FHomeButton.Margins.Rect := RectF(5, 5, 5, 5);

  // Add Button
  FAddButton := TButton.Create(FHeaderLayout);
  FAddButton.Parent := FHeaderLayout;
  FAddButton.Align := TAlignLayout.Right;
  FAddButton.Width := 80;
  FAddButton.Text := 'Aggiungi';
  FAddButton.OnClick := OnAddButtonClick;
  FAddButton.Margins.Rect := RectF(5, 5, 5, 5);

  // ScrollBox for content
  FScrollBox := TScrollBox.Create(Self);
  FScrollBox.Parent := Self;
  FScrollBox.Align := TAlignLayout.Client;
  FScrollBox.Margins.Rect := RectF(10, 5, 10, 10);

  // Content Layout inside ScrollBox
  FContentLayout := TLayout.Create(FScrollBox);
  FContentLayout.Parent := FScrollBox;
  FContentLayout.Align := TAlignLayout.Top;
  FContentLayout.Height := 100; // Will be adjusted dynamically
end;

procedure TBaseFrameContainer.ClearFrames;
var
  Frame: TFrame;
begin
  for Frame in FFramesList do
    Frame.Free;
  FFramesList.Clear;
end;

procedure TBaseFrameContainer.RefreshContainer;
begin
  ClearFrames;
  UpdateHeader;
  CreateFrames;
end;

procedure TBaseFrameContainer.OnAddButtonClick(Sender: TObject);
begin
  // Override in derived classes to implement specific add functionality
  ShowMessage('Aggiungi nuovo elemento');
end;

procedure TBaseFrameContainer.OnHomeButtonClick(Sender: TObject);
begin
  if Assigned(FNavigationHandler) then
    FNavigationHandler.NavigateToHome;
end;

// TEstintoreFrameContainer Implementation
procedure TEstintoreFrameContainer.CreateFrames;
var
  I: Integer;
  Frame: TEstintoreFrame;
  YPos: Single;
begin
  if not Assigned(FStatino) then
    Exit;

  YPos := 10;
  for I := 0 to FStatino.Estintori.Count - 1 do
  begin
    Frame := TEstintoreFrame.Create(FContentLayout, FStatino.Estintori[I], FNavigationHandler);
    Frame.Parent := FContentLayout;
    Frame.Position.Y := YPos;
    Frame.Width := FContentLayout.Width - 20;
    Frame.Anchors := [TAnchorKind.akLeft, TAnchorKind.akTop, TAnchorKind.akRight];
    FFramesList.Add(Frame);
    YPos := YPos + Frame.Height + 5;
  end;

  // Update content layout height
  FContentLayout.Height := YPos + 10;
end;

procedure TEstintoreFrameContainer.UpdateHeader;
begin
  FTitleLabel.Text := GetCategoryTitle;
  FCountLabel.Text := Format('(%d elementi)', [GetItemCount]);
end;

function TEstintoreFrameContainer.GetItemCount: Integer;
begin
  if Assigned(FStatino) then
    Result := FStatino.Estintori.Count
  else
    Result := 0;
end;

function TEstintoreFrameContainer.GetCategoryTitle: string;
begin
  Result := 'Estintori';
end;

// TSprinklerFrameContainer Implementation
procedure TSprinklerFrameContainer.CreateFrames;
var
  I: Integer;
  Frame: TSprinklerFrame;
  YPos: Single;
begin
  if not Assigned(FStatino) then
    Exit;

  YPos := 10;
  for I := 0 to FStatino.Sprinkler.Count - 1 do
  begin
    Frame := TSprinklerFrame.Create(FContentLayout, FStatino.Sprinkler[I], FNavigationHandler);
    Frame.Parent := FContentLayout;
    Frame.Position.Y := YPos;
    Frame.Width := FContentLayout.Width - 20;
    Frame.Anchors := [TAnchorKind.akLeft, TAnchorKind.akTop, TAnchorKind.akRight];
    FFramesList.Add(Frame);
    YPos := YPos + Frame.Height + 5;
  end;

  FContentLayout.Height := YPos + 10;
end;

procedure TSprinklerFrameContainer.UpdateHeader;
begin
  FTitleLabel.Text := GetCategoryTitle;
  FCountLabel.Text := Format('(%d elementi)', [GetItemCount]);
end;

function TSprinklerFrameContainer.GetItemCount: Integer;
begin
  if Assigned(FStatino) then
    Result := FStatino.Sprinkler.Count
  else
    Result := 0;
end;

function TSprinklerFrameContainer.GetCategoryTitle: string;
begin
  Result := 'Sprinkler';
end;

// Implementazioni simili per gli altri FrameContainer...
// [Per brevità mostro solo due esempi, ma seguono lo stesso pattern]

procedure TPorteFrameContainer.CreateFrames;
var
  I: Integer;
  Frame: TPortaFrame;
  YPos: Single;
begin
  if not Assigned(FStatino) then
    Exit;

  YPos := 10;
  for I := 0 to FStatino.Porte.Count - 1 do
  begin
    Frame := TPortaFrame.Create(FContentLayout, FStatino.Porte[I], FNavigationHandler);
    Frame.Parent := FContentLayout;
    Frame.Position.Y := YPos;
    Frame.Width := FContentLayout.Width - 4;
    Frame.Align := TAlignLayout.Top;
    //Frame.Anchors := [TAnchorKind.akLeft, TAnchorKind.akTop, TAnchorKind.akRight];
    FFramesList.Add(Frame);
    YPos := YPos + Frame.Height + 5;
  end;

  FContentLayout.Height := YPos + 10;
end;

procedure TPorteFrameContainer.UpdateHeader;
begin
  FTitleLabel.Text := GetCategoryTitle;
  FCountLabel.Text := Format('(%d elementi)', [GetItemCount]);
end;

function TPorteFrameContainer.GetItemCount: Integer;
begin
  if Assigned(FStatino) then
    Result := FStatino.Porte.Count
  else
    Result := 0;
end;

function TPorteFrameContainer.GetCategoryTitle: string;
begin
  Result := 'Porte Antincendio';
end;

// [Implementazioni per TLuciFrameContainer, TRilevatoriFumoFrameContainer, ecc. seguono lo stesso pattern]
procedure TLuciFrameContainer.CreateFrames;
var
  I: Integer;
  Frame: TLuceFrame;
  YPos: Single;
begin
  if not Assigned(FStatino) then
    Exit;

  YPos := 10;
  for I := 0 to FStatino.Luci.Count - 1 do
  begin
    Frame := TLuceFrame.Create(FContentLayout, FStatino.Luci[I], FNavigationHandler);
    Frame.Parent := FContentLayout;
    Frame.Position.Y := YPos;
    Frame.Width := FContentLayout.Width - 20;
    Frame.Anchors := [TAnchorKind.akLeft, TAnchorKind.akTop, TAnchorKind.akRight];
    FFramesList.Add(Frame);
    YPos := YPos + Frame.Height + 5;
  end;

  FContentLayout.Height := YPos + 10;
end;

procedure TLuciFrameContainer.UpdateHeader;
begin
  FTitleLabel.Text := GetCategoryTitle;
  FCountLabel.Text := Format('(%d elementi)', [GetItemCount]);
end;

function TLuciFrameContainer.GetItemCount: Integer;
begin
  if Assigned(FStatino) then
    Result := FStatino.Luci.Count
  else
    Result := 0;
end;

function TLuciFrameContainer.GetCategoryTitle: string;
begin
  Result := 'Luci Emergenza';
end;

// [Altri FrameContainer seguono lo stesso pattern...]

procedure TRilevatoriFumoFrameContainer.CreateFrames;
begin
  // Implementazione simile agli altri
end;

procedure TRilevatoriFumoFrameContainer.UpdateHeader;
begin
  FTitleLabel.Text := GetCategoryTitle;
  FCountLabel.Text := Format('(%d elementi)', [GetItemCount]);
end;

function TRilevatoriFumoFrameContainer.GetItemCount: Integer;
begin
  if Assigned(FStatino) then
    Result := FStatino.RilevatoriFumo.Count
  else
    Result := 0;
end;

function TRilevatoriFumoFrameContainer.GetCategoryTitle: string;
begin
  Result := 'Rilevatori Fumo';
end;

procedure TGruppiPressurizzazioneFrameContainer.CreateFrames;
begin
  // Implementazione simile
end;

procedure TGruppiPressurizzazioneFrameContainer.UpdateHeader;
begin
  FTitleLabel.Text := GetCategoryTitle;
  FCountLabel.Text := Format('(%d elementi)', [GetItemCount]);
end;

function TGruppiPressurizzazioneFrameContainer.GetItemCount: Integer;
begin
  if Assigned(FStatino) then
    Result := FStatino.GruppiPressurizzazione.Count
  else
    Result := 0;
end;

function TGruppiPressurizzazioneFrameContainer.GetCategoryTitle: string;
begin
  Result := 'Gruppi Pressurizzazione';
end;

procedure TIdrantiFrameContainer.CreateFrames;
begin
  // Implementazione simile
end;

procedure TIdrantiFrameContainer.UpdateHeader;
begin
  FTitleLabel.Text := GetCategoryTitle;
  FCountLabel.Text := Format('(%d elementi)', [GetItemCount]);
end;

function TIdrantiFrameContainer.GetItemCount: Integer;
begin
  if Assigned(FStatino) then
    Result := FStatino.Idranti.Count
  else
    Result := 0;
end;

function TIdrantiFrameContainer.GetCategoryTitle: string;
begin
  Result := 'Idranti';
end;

procedure TImpiantiElettriciFrameContainer.CreateFrames;
begin
  // Implementazione simile
end;

procedure TImpiantiElettriciFrameContainer.UpdateHeader;
begin
  FTitleLabel.Text := GetCategoryTitle;
  FCountLabel.Text := Format('(%d elementi)', [GetItemCount]);
end;

function TImpiantiElettriciFrameContainer.GetItemCount: Integer;
begin
  if Assigned(FStatino) then
    Result := FStatino.ImpiantiElettrici.Count
  else
    Result := 0;
end;

function TImpiantiElettriciFrameContainer.GetCategoryTitle: string;
begin
  Result := 'Impianti Elettrici';
end;

procedure TProdottiFrameContainer.CreateFrames;
begin
  // Implementazione simile
end;

procedure TProdottiFrameContainer.UpdateHeader;
begin
  FTitleLabel.Text := GetCategoryTitle;
  FCountLabel.Text := Format('(%d elementi)', [GetItemCount]);
end;

function TProdottiFrameContainer.GetItemCount: Integer;
begin
  if Assigned(FStatino) then
    Result := FStatino.Prodotti.Count
  else
    Result := 0;
end;

function TProdottiFrameContainer.GetCategoryTitle: string;
begin
  Result := 'Prodotti';
end;

// TBaseDeviceFrame Implementation
constructor TBaseDeviceFrame.Create(AOwner: TComponent; AData: TObject;
  ANavigationHandler: INavigationHandler);
begin
  inherited Create(AOwner);
  FData := AData;
  FNavigationHandler := ANavigationHandler;
  SetupFrame;
  UpdateDisplay;
end;

procedure TBaseDeviceFrame.SetupFrame;
begin
  Height := 120;

  FMainLayout := TLayout.Create(Self);
  FMainLayout.Parent := Self;
  FMainLayout.Align := TAlignLayout.Client;
  FMainLayout.Margins.Rect := RectF(5, 5, 5, 5);

  FBackground := TRectangle.Create(FMainLayout);
  FBackground.Parent := FMainLayout;
  FBackground.Align := TAlignLayout.Client;
  FBackground.Fill.Color := TAlphaColorRec.White;
  FBackground.Stroke.Color := TAlphaColorRec.Lightgray;
  FBackground.Stroke.Thickness := 1;
  FBackground.XRadius := 8;
  FBackground.YRadius := 8;

  FTitleLabel := TLabel.Create(FBackground);
  FTitleLabel.Parent := FBackground;
  FTitleLabel.Position.X := 15;
  FTitleLabel.Position.Y := 10;
  FTitleLabel.Width := 250;
  FTitleLabel.Height := 25;
  FTitleLabel.TextSettings.Font.Style := [TFontStyle.fsBold];

  FDetailsLabel := TLabel.Create(FBackground);
  FDetailsLabel.Parent := FBackground;
  FDetailsLabel.Position.X := 15;
  FDetailsLabel.Position.Y := 35;
  FDetailsLabel.Width := 250;
  FDetailsLabel.Height := 20;
  FDetailsLabel.TextSettings.FontColor := TAlphaColorRec.Gray;

  FStatusLabel := TLabel.Create(FBackground);
  FStatusLabel.Parent := FBackground;
  FStatusLabel.Position.X := 15;
  FStatusLabel.Position.Y := 60;
  FStatusLabel.Width := 250;
  FStatusLabel.Height := 20;
  FStatusLabel.TextSettings.Font.Style := [TFontStyle.fsBold];

  FEditButton := TButton.Create(FBackground);
  FEditButton.Parent := FBackground;
  FEditButton.Position.X := 280;
  FEditButton.Position.Y := 35;
  FEditButton.Width := 70;
  FEditButton.Height := 25;
  FEditButton.Text := 'Modifica';
  FEditButton.OnClick := OnEditClick;

  FDeleteButton := TButton.Create(FBackground);
  FDeleteButton.Parent := FBackground;
  FDeleteButton.Position.X := 280;
  FDeleteButton.Position.Y := 65;
  FDeleteButton.Width := 70;
  FDeleteButton.Height := 25;
  FDeleteButton.Text := 'Elimina';
  FDeleteButton.OnClick := OnDeleteClick;
end;

procedure TBaseDeviceFrame.RefreshFrame;
begin
  UpdateDisplay;
end;

procedure TBaseDeviceFrame.OnEditClick(Sender: TObject);
begin
  if Assigned(FNavigationHandler) then
    FNavigationHandler.ShowEditForm(FData);
end;

procedure TBaseDeviceFrame.OnDeleteClick(Sender: TObject);
begin
  if MessageDlg('Confermi la cancellazione?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],
    0) = mrYes then
  begin
    // Implementare la logica di cancellazione
    if Assigned(FNavigationHandler) then
      FNavigationHandler.RefreshCurrentView;
  end;
end;

// Frame specifici - UpdateDisplay methods (placeholder)
procedure TEstintoreFrame.UpdateDisplay;
var
  Estintore: TEstintori;
begin
  if not(FData is TEstintori) then
    Exit;

  Estintore := FData as TEstintori;
  FTitleLabel.Text := Format('EST-%d - %s', [Estintore.PROGRESSIVO, Estintore.MATRICOLA]);
  FDetailsLabel.Text := Format('Ubicazione: %s', [Estintore.UBICAZIONE]);
  FStatusLabel.Text := Format('Stato: %s', [Estintore.STATO]);

  if Estintore.Controllato then
    FStatusLabel.TextSettings.FontColor := TAlphaColorRec.Green
  else if Estintore.NonControllato then
    FStatusLabel.TextSettings.FontColor := TAlphaColorRec.Red
  else
    FStatusLabel.TextSettings.FontColor := TAlphaColorRec.Orange;
end;

procedure TSprinklerFrame.UpdateDisplay;
var
  Sprinkler: TSprinkler;
begin
  if not(FData is TSprinkler) then
    Exit;

  Sprinkler := FData as TSprinkler;
  FTitleLabel.Text := Format('SPR - %s', [Sprinkler.Descrizione]);
  FDetailsLabel.Text := Format('Ubicazione: %s', [Sprinkler.UBICAZIONE]);
  FStatusLabel.Text := Format('Stato: %s', [Sprinkler.STATO]);

  if Sprinkler.Controllato then
    FStatusLabel.TextSettings.FontColor := TAlphaColorRec.Green
  else
    FStatusLabel.TextSettings.FontColor := TAlphaColorRec.Red;
end;

// [Altri Frame UpdateDisplay seguono lo stesso pattern...]
procedure TPortaFrame.UpdateDisplay;
var
  Porta: TPorte;
begin
  if not(FData is TPorte) then
    Exit;

  Porta := FData as TPorte;
  FTitleLabel.Text := Format('PORTA-%d', [Porta.PROGRESSIVO]);
  FDetailsLabel.Text := Format('%s - %s', [Porta.UBICAZIONE, Porta.DIMENSIONE]);
  FStatusLabel.Text := Format('Stato: %s', [Porta.STATO]);

  if Porta.Controllato then
    FStatusLabel.TextSettings.FontColor := TAlphaColorRec.Green
  else
    FStatusLabel.TextSettings.FontColor := TAlphaColorRec.Red;
end;

procedure TLuceFrame.UpdateDisplay;
var
  Luce: TLuci;
begin
  if not(FData is TLuci) then
    Exit;

  Luce := FData as TLuci;
  FTitleLabel.Text := Format('LUCE-%d', [Luce.PROGRESSIVO]);
  FDetailsLabel.Text := Format('%s - Autonomia: %dh', [Luce.UBICAZIONE, Luce.AUTONOMIA]);
  FStatusLabel.Text := Format('Stato: %s', [Luce.STATO]);

  if Luce.Controllato then
    FStatusLabel.TextSettings.FontColor := TAlphaColorRec.Green
  else
    FStatusLabel.TextSettings.FontColor := TAlphaColorRec.Red;
end;

procedure TRilevatoreFumoFrame.UpdateDisplay;
begin
  // Implementazione per rilevatori fumo
end;

procedure TGruppoPressurizzazioneFrame.UpdateDisplay;
begin
  // Implementazione per gruppi pressurizzazione
end;

procedure TIdranteFrame.UpdateDisplay;
begin
  // Implementazione per idranti
end;

procedure TImpiantoElettricoFrame.UpdateDisplay;
begin
  // Implementazione per impianti elettrici
end;

procedure TProdottoFrame.UpdateDisplay;
begin
  // Implementazione per prodotti
end;

// TMainForm Implementation
procedure TMainForm.FormCreate(Sender: TObject);
begin
  FStatino := TStatino.Create;

  // Initialize REST components
  FRESTClient := TRESTClient.Create(Self);
  FRESTClient.BaseURL := 'https://your-server.com/api';

  FRESTRequest := TRESTRequest.Create(Self);
  FRESTRequest.Client := FRESTClient;

  FRESTResponse := TRESTResponse.Create(Self);
  FRESTRequest.Response := FRESTResponse;

  CreateFrameContainers;
  UpdateMainTitle;
  UpdateTabVisibility;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  FStatino.Free;
end;

procedure TMainForm.CreateFrameContainers;
begin
  // Create all frame containers
  FEstintoreContainer := TEstintoreFrameContainer.Create(TabEstintori, FStatino, Self);
  FEstintoreContainer.Parent := TabEstintori;

  FSprinklerContainer := TSprinklerFrameContainer.Create(TabSprinkler, FStatino, Self);
  FSprinklerContainer.Parent := TabSprinkler;

  FPorteContainer := TPorteFrameContainer.Create(TabPorte, FStatino, Self);
  FPorteContainer.Parent := TabPorte;

  FLuciContainer := TLuciFrameContainer.Create(TabLuci, FStatino, Self);
  FLuciContainer.Parent := TabLuci;

  // Create other containers...
  // FRilevatoriFumoContainer := TRilevatoriFumoFrameContainer.Create(TabRilevatoriFumo, FStatino, Self);
  // FGruppiPressurizzazioneContainer := TGruppiPressurizzazioneFrameContainer.Create(TabGruppiPressurizzazione, FStatino, Self);
  // FIdrantiContainer := TIdrantiFrameContainer.Create(TabIdranti, FStatino, Self);
  // FImpiantiElettriciContainer := TImpiantiElettriciFrameContainer.Create(TabImpiantiElettrici, FStatino, Self);
  // FProdottiContainer := TProdottiFrameContainer.Create(TabProdotti, FStatino, Self);
end;

procedure TMainForm.UpdateTabVisibility;
begin
  // Hide tabs with no items
  TabEstintori.Visible := FStatino.Estintori.Count > 0;
  TabSprinkler.Visible := FStatino.Sprinkler.Count > 0;
  TabPorte.Visible := FStatino.Porte.Count > 0;
  TabLuci.Visible := FStatino.Luci.Count > 0;
  TabRilevatoriFumo.Visible := FStatino.RilevatoriFumo.Count > 0;
  TabGruppiPressurizzazione.Visible := FStatino.GruppiPressurizzazione.Count > 0;
  TabIdranti.Visible := FStatino.Idranti.Count > 0;
  TabImpiantiElettrici.Visible := FStatino.ImpiantiElettrici.Count > 0;
  TabProdotti.Visible := FStatino.Prodotti.Count > 0;
end;

procedure TMainForm.UpdateMainTitle;
begin
  TitleLabel.Text := Format('%s - %s', [FStatino.RAGIONESOCIALE, FStatino.Indirizzo]);
end;

procedure TMainForm.TabControl1Change(Sender: TObject);
begin
  // Refresh current container when tab changes
  RefreshCurrentView;
end;

procedure TMainForm.LoadButtonClick(Sender: TObject);
begin
  LoadDataFromServer;
end;

procedure TMainForm.SaveButtonClick(Sender: TObject);
begin
  SaveDataToServer;
end;

procedure TMainForm.HomeButtonClick(Sender: TObject);
begin
  NavigateToHome;
end;

procedure TMainForm.LoadDataFromServer;
begin
  try
    StatusLabel.Text := 'Caricamento dati...';

    FRESTRequest.Resource := 'statino/{id}';
    FRESTRequest.AddParameter('id', '1', TRESTRequestParameterKind.pkURLSEGMENT);
    FRESTRequest.Method := TRESTRequestMethod.rmGET;
    FRESTRequest.Execute;

    if FRESTResponse.StatusCode = 200 then
    begin
      var
      JsonContent := ReplacePhoenixJson(FRESTResponse.Content);
      FStatino.AsJson := (JsonContent);
      UpdateMainTitle;
      UpdateTabVisibility;
      RefreshCurrentView;
      StatusLabel.Text := 'Dati caricati con successo';
    end
    else
      StatusLabel.Text := 'Errore nel caricamento: ' + FRESTResponse.StatusText;
  except
    on E: Exception do
      StatusLabel.Text := 'Errore: ' + E.Message;
  end;
end;

procedure TMainForm.SaveDataToServer;
begin
  try
    StatusLabel.Text := 'Salvataggio dati...';

    FRESTRequest.Resource := 'statino';
    FRESTRequest.Method := TRESTRequestMethod.rmPOST;

    var
    JsonToSend := ReplaceJsonToPhoenix(FStatino.AsJson);
    FRESTRequest.AddBody(JsonToSend, TRESTContentType.ctAPPLICATION_JSON);
    FRESTRequest.Execute;

    if FRESTResponse.StatusCode = 200 then
      StatusLabel.Text := 'Dati salvati con successo'
    else
      StatusLabel.Text := 'Errore nel salvataggio: ' + FRESTResponse.StatusText;
  except
    on E: Exception do
      StatusLabel.Text := 'Errore: ' + E.Message;
  end;
end;

// INavigationHandler Implementation
procedure TMainForm.NavigateToHome;
begin
  // Implement home navigation logic
  TabControl1.ActiveTab := TabEstintori; // Or a dedicated home tab
end;

procedure TMainForm.NavigateToCategory(const CategoryName: string);
var
  I: Integer;
begin
  for I := 0 to TabControl1.TabCount - 1 do
  begin
    if TabControl1.Tabs[I].Text = CategoryName then
    begin
      TabControl1.ActiveTab := TabControl1.Tabs[I];
      Break;
    end;
  end;
end;

procedure TMainForm.ShowEditForm(AObject: TObject);
begin
  // Implement edit form showing logic
  ShowMessage('Modifica: ' + AObject.ClassName);
end;

procedure TMainForm.RefreshCurrentView;
begin
  if TabControl1.ActiveTab = TabEstintori then
    FEstintoreContainer.RefreshContainer
  else if TabControl1.ActiveTab = TabSprinkler then
    FSprinklerContainer.RefreshContainer
  else if TabControl1.ActiveTab = TabPorte then
    FPorteContainer.RefreshContainer
  else if TabControl1.ActiveTab = TabLuci then
    FLuciContainer.RefreshContainer;
  // Add other containers as needed
end;

end.

  implementation

{$R *.fmx}
end.

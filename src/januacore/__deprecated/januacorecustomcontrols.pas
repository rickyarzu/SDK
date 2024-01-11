unit JanuaCoreCustomcontrols;

interface

uses
{$ifndef fpc}
  System.SysUtils, System.Classes, Generics.Collections, System.Bindings.Expression,
  System.Bindings.Helper, Janua.Core.Functions, Janua.Core.Classes, DB
{$else}
  SysUtils, Classes,  JanuaCoreFunctions, JanuaCoreClasses, DB
{$endif}
;

type
  TJanuaDialogType = (jdtWarning, jdtError, jdtMessage);

type
  TJanuaControlFramework = (jcfVCL, jcfVLCWin32, jcfVLCWin64, jcfFMX, jcfIntraweb, jcfCGDevTools);
  TJanuaDBButton = (jdbPrior, jdbFirst, jdbNext, jdbLast, jdbInsert, jdbDelete, jdbPost, jdbUndo,
    jdbApplyUpdates);

type
  TJanuaFieldType = (jptString, jptDateTime, jptInteger);

  TButtonClickEvent = procedure(Sender: TObject) of object;

type
  TJanuaPropertyRecord = record

  end;

type
  TJanuaProperties = class(TComponent)
  private

  protected
    FHint: string;
    FTargetField: string;
    FTarget: TObject;
    FComponentName: string;
    FComponent: TComponent;
    procedure SetHint(const Value: string); virtual;
    procedure WriteError(aError: String; e: Exception);
    procedure WriteLog(aLog: string);
    procedure BindTarget; virtual; abstract;
    procedure SetComponentName(const Value: string);
    procedure SetComponent(const Value: TComponent); virtual; abstract;
    procedure SetTargetField(const Value: string); virtual;
  public
  published
    property ComponentName: string read FComponentName write SetComponentName;
    property Component: TComponent read FComponent write SetComponent;
    property Hint: string read FHint write SetHint;
    property TargetField: string read FTargetField write SetTargetField;
  end;

type
  TJanuaEditProperties = class(TJanuaProperties)
  private
    FPasswordChar: string;
    FTextHint: string;
    FHasPassword: boolean;
    procedure SetPasswordChar(const Value: string);
    procedure SetTextHint(const Value: string);
    procedure SetHasPassword(const Value: boolean);
  protected
    // ********** Gestori della Edit Box ************************************************************
    FJanuaOwner: TJanuaCoreComponent;
    procedure SetTarget(const Value: TObject);
    function getText: string; virtual; abstract;
    procedure SetText(const Value: string); virtual; abstract;
    procedure BindTarget; override;
    procedure BindEdit(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    procedure BindEditObject(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    function GetEditText(aEdit: TComponent): string; virtual; Abstract;
    procedure SetEditText(aEdit: TComponent; aText: string); virtual; Abstract;
    procedure SetComponent(const Value: TComponent); override;
    procedure SetTargetField(const Value: string); override;
  public
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TJanuaCoreComponent; aName, aTextHint, aField: string);
      reintroduce; overload;
    procedure EditChange(Sender: TObject); virtual;
  published
    property TextHint: string read FTextHint write SetTextHint;
    property HasPassword: boolean read FHasPassword write SetHasPassword default False;
    property PasswordChar: string read FPasswordChar write SetPasswordChar;

    /// <summary>
    /// Questa proprietà legge e scrive il valore di Text direttamente nel
    /// controllo grafico a schermo generalmente penso sia usata in sola lettura
    /// </summary>
    property Text: string read getText write SetText;
    property Target: TObject read FTarget write SetTarget;

  end;

type
  TJanuaDateEditProperties = class(TJanuaProperties)
  private
    FDate: TDateTime;
    FTextHint: string;
    procedure SetDate(const Value: TDateTime);
    procedure SetTextHint(const Value: string);
  protected
  public
    /// original constructor kept for compatibility
    constructor Create(AOwner: TComponent); overload; override;
    /// additional constructor allows for a caller-defined base data set
    constructor Create(AOwner: TJanuaCoreComponent; aName, aTextHint, aField: string);
      reintroduce; overload;
  published
    property TextHint: string read FTextHint write SetTextHint;
    property Date: TDateTime read FDate write SetDate;
  end;

type
  TJanuaLabelProperties = class(TJanuaProperties)
  private
    FCaption: string;
    procedure SetCaption(const Value: string);
  protected
    procedure SetTargetField(const Value: string); override;
  public
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TJanuaCoreComponent; aName, aCaption, aField: string);
      reintroduce; overload;
  published
    property Caption: string read FCaption write SetCaption;
    property TargetField: string read FTargetField write SetTargetField;
  end;

type
  TJanuaSelectProperties = class(TJanuaProperties)
  private
    FCaption: string;
    procedure SetCaption(const Value: string);
  protected
  public
  published
    property Caption: string read FCaption write SetCaption;
  end;

type
  TJanuaComboProperties = class(TJanuaProperties)
  private
    FCaption: String;
    FStringList: TStrings;
    FTargetIndexField: string;
    procedure SetCaption(const Value: String);
    procedure SetStringList(const Value: TStrings);
    procedure SetTargetIndexField(const Value: string);
  protected
    function getText: string; virtual; abstract;
    procedure SetText(Value: string); virtual; abstract;
    // ********** Gestori della Comboo Box *********************************************************
    // Set Component E' la funzione che 'imposta' l'oggetto Combo Box e ne chiama il binding
    procedure SetComponent(const Value: TComponent); override;
    // SetComboBox E' la funzione della libreria Target che deve 'conoscere' la combo Box Target
    function SetComboBox: boolean; virtual; Abstract;

    procedure SetComboEvents(var aField: TComponent); virtual; Abstract;
    procedure BindComboText; virtual; Abstract;
    procedure BindComboList(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    procedure BindComboObjectText(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    procedure BindComboObjectIndex(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    procedure BindComboObjectList(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    function GetComboSelectedText(aCombo: TComponent): string; virtual; Abstract;
    procedure SetComboSelectedText(aCombo: TComponent; aText: string); virtual; Abstract;
    function SetComboList(aCombo: TComponent; aList: TStrings): string; virtual; Abstract;
  public
    procedure ComboChange(Sender: TObject); virtual;
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TJanuaCoreComponent; aName, aTextHint, aField, aIndex: string);
      reintroduce; overload;
  published
    property Caption: String read FCaption write SetCaption;
    property Text: string read getText write SetText;
    property StringList: TStrings read FStringList write SetStringList;
    property TargetIndexField: string read FTargetIndexField write SetTargetIndexField;
  end;

type
  TJanuaButtonProperties = class(TJanuaProperties)
  private
    FCaption: string;
    FOnButtonClick: TNotifyEvent;
    procedure SetCaption(const Value: string);
  protected
    procedure SetButton; virtual; abstract;
  public
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TJanuaCoreComponent; aName, aCaption: string); reintroduce; overload;
    procedure ButtonClick(Sender: TObject); virtual;
  published
    property Caption: string read FCaption write SetCaption;
    property OnButtonClick: TNotifyEvent read FOnButtonClick write FOnButtonClick;
  end;

type
  TJanuaDBButtonProperties = class(TJanuaButtonProperties)
  private
    FDataset: TDataset;
    FButtonType: TJanuaDBButton;
    procedure SetDataset(const Value: TDataset);
    procedure SetButtonType(const Value: TJanuaDBButton);
  protected
  public
    property Dataset: TDataset read FDataset write SetDataset;
    procedure ButtonClick(Sender: TObject); override;
  published
    property ButtonType: TJanuaDBButton read FButtonType write SetButtonType;
  end;

type
  TJanuaCustomController = class(TJanuaCoreObject)
  private
    FJanuaControlFramework: TJanuaControlFramework;
    procedure SetJanuaControlFramework(const Value: TJanuaControlFramework);
  protected
  public
    // ********** Gestori della Comboo Box *********************************************************
    function SetComboBox(const aObject: TComponent; const aProperty: TJanuaComboProperties;
      var aField: TComponent; aStringList: TStrings): boolean; virtual; Abstract;
    procedure SetComboEvents(var aField: TComponent); virtual; Abstract;
    procedure BindComboText(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    procedure BindComboList(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    procedure BindComboObjectText(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    procedure BindComboObjectIndex(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    procedure BindComboObjectList(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    function GetComboSelectedText(aCombo: TComponent): string; virtual; Abstract;
    procedure SetComboSelectedText(aCombo: TComponent; aText: string); virtual; Abstract;
    function SetComboList(aCombo: TComponent; aList: TStrings): string; virtual; Abstract;

    // ********** Impostazioini Buttons & Labels ***************************************************
    procedure SetButton(const aObject: TComponent; const aProperty: TJanuaButtonProperties;
      var aField: TComponent); virtual; Abstract;
    function SetLabel(const aObject: TComponent; const aProperty: TJanuaLabelProperties;
      var aField: TComponent): boolean; virtual; Abstract;

    procedure bindLabelObject(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); virtual; Abstract;

    // ********** Gestori della Select Box **********************************************************
    function SetSelect(const aObject: TComponent; const aProperty: TJanuaSelectProperties;
      var aField: TComponent; aList: TStrings): boolean; virtual; Abstract;

    procedure BindSelectIndex(const aObject: TObject; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    procedure BindSelectList(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); virtual; Abstract;

    // ********** Gestori della Date Edit***********************************************************
    function SetDateEdit(const aObject: TComponent; const aProperty: TJanuaDateEditProperties;
      var aField: TComponent): boolean; virtual; Abstract;

    procedure BindDateEdit(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); virtual; Abstract;

    procedure BindDateEditObject(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); virtual; Abstract;

    // ********** Gestori della Edit Date ************************************************************
    function SetEditDate(aEdit: TComponent): TDateTime; virtual; Abstract;
    function GetEditDate(aEdit: TComponent): TDateTime; virtual; Abstract;

    // ********** Eventi poi Actions **************************************************************
    procedure EditChange(Sender: TObject); virtual;
    procedure ComboChange(Sender: TObject); virtual;
    procedure RadioChange(Sender: TObject); virtual;
    procedure SelectChange(Sender: TObject); virtual;
    procedure DateChange(Sender: TObject); virtual;

    procedure BindEdit(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    procedure BindEditObject(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); virtual; Abstract;
    function GetEditText(aEdit: TComponent): string; virtual; Abstract;
    procedure SetEditText(aEdit: TComponent; aText: string); virtual; Abstract;
    function SetEdit(const aObject: TComponent; const aProperty: TJanuaEditProperties;
      var aField: TComponent): boolean; virtual; Abstract;
  published
    property JanuaControlFramework: TJanuaControlFramework read FJanuaControlFramework
      write SetJanuaControlFramework;
  end;


type
  TJanuaCustomDialogSchemaSelector = class(TJanuaCoreDialog)
  private
    FJanuaServerSession: TJanuaServerSession;
    procedure SetSelectedSchema(const Value: TJanuaRecordSchema);
    procedure SetJanuaServerSession(const Value: TJanuaServerSession);
  protected
    FSelectedSchema: TJanuaRecordSchema;
  public
    function SelectSchema(dID: integer): boolean; virtual; abstract;
    property SelectedSchema: TJanuaRecordSchema read FSelectedSchema write SetSelectedSchema;
  published
    property JanuaServerSession: TJanuaServerSession read FJanuaServerSession
      write SetJanuaServerSession;
  end;

type
  TJanuaCustomDialogInteger = class(TJanuaCoreDialog)
  private
    procedure SetCaption(const Value: String);
    procedure SetNumber(const Value: Int64);
    procedure SetDisplayText(const Value: String);
    { Private declarations }
  protected
    { Protected declarations }
    FCaption: String;
    FNumber: Int64;
    FDisplayText: String;
  public
    { Public declarations }
  published
    { Published declarations }
    property Number: Int64 read FNumber write SetNumber;
    property Caption: String read FCaption write SetCaption;
    property DisplayText: String read FDisplayText write SetDisplayText;

  end;

type
  TJanuaCustomDBController = class(TJanuaCoreComponent)

  private
    FbtnInsert: TJanuaButtonProperties;
    procedure SetbtnInsert(const Value: TJanuaButtonProperties);
  public
  published
    property btnInsert: TJanuaButtonProperties read FbtnInsert write SetbtnInsert;

  end;

type
  TJanuaCustomReadOnly = class(TJanuaCoreComponent)
  private
    FReadOnly: boolean;
    procedure SetReadOnly(const Value: boolean);
    { Private declarations }
  protected
    { Protected declarations }
    function SetReadOnlyInternal: boolean; virtual; Abstract;
  public
    { Public declarations }
    procedure Execute;
  published
    { Published declarations }
    property ReadOnly: boolean read FReadOnly write SetReadOnly;

  end;

implementation

{ TJanuaCustomDialog }

procedure TJanuaCustomDialog.SetDialogType(const Value: TJanuaDialogType);
begin
  FDialogType := Value;
end;

procedure TJanuaCustomDialog.SetSelectedFile(const Value: TFileName);
begin
  if Value <> '' then
    if not FileExists(Value) then
      raise Exception.Create('Errore selezionato un file inesistente');
  FSelectedFile := Value;
end;

{ TJanuaCustomDialogInteger }

procedure TJanuaCustomDialogInteger.SetCaption(const Value: String);
begin
  FCaption := Value;
end;

procedure TJanuaCustomDialogInteger.SetNumber(const Value: Int64);
begin
  FNumber := Value;
end;

procedure TJanuaCustomDialogInteger.SetDisplayText(const Value: String);
begin
  FDisplayText := Value;
end;

{ TJanuaCustomDialogLogin }

constructor TJanuaCustomDialogLogin.Create(AOwner: TComponent);
begin
  inherited;
  FServerList := TStringList.Create;
end;

destructor TJanuaCustomDialogLogin.Destroy;
begin
  FServerList.Free;
  inherited;
end;

procedure TJanuaCustomDialogLogin.SetFormTitle(const Value: string);
begin
  FFormTitle := Value;
end;

procedure TJanuaCustomDialogLogin.SetJanuaServerSession(const Value: TJanuaServerSession);
begin
  FJanuaServerSession := Value;
end;

procedure TJanuaCustomDialogLogin.SetLoginPrompt(const Value: string);
begin
  FLoginPrompt := Value;
end;

procedure TJanuaCustomDialogLogin.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TJanuaCustomDialogLogin.SetSelectedServer(const Value: string);
begin
  FSelectedServer := Value;
end;

procedure TJanuaCustomDialogLogin.SetServerList(const Value: TStringList);
begin
  FServerList := Value;
end;

procedure TJanuaCustomDialogLogin.SetSetServer(const Value: boolean);
begin
  FSetServer := Value;
end;

procedure TJanuaCustomDialogLogin.SetUsername(const Value: string);
begin
  FUsername := Value;
end;

{ TJanuaCustomController }

procedure TJanuaCustomController.ComboChange(Sender: TObject);
begin
  {$ifndef fpc}
  TBindings.Notify(Sender, 'ItemIndex');
  TBindings.Notify(Sender, 'Text');
  {$endif}
end;


procedure TJanuaCustomController.DateChange(Sender: TObject);
begin
  {$ifndef fpc}
  TBindings.Notify(Sender, 'Date');
  {$endif}
end;

procedure TJanuaCustomController.EditChange(Sender: TObject);
begin
    {$ifndef fpc}
  TBindings.Notify(Sender, 'Text');
    {$endif}
end;

procedure TJanuaCustomController.RadioChange(Sender: TObject);
begin
  {$ifndef fpc}
  TBindings.Notify(Sender, 'ItemIndex');
  {$endif}
end;

procedure TJanuaCustomController.SelectChange(Sender: TObject);
begin
  {$ifndef fpc}
  TBindings.Notify(Sender, 'ItemIndex');
  {$endif}
end;

procedure TJanuaCustomController.SetJanuaControlFramework(const Value: TJanuaControlFramework);
begin
  FJanuaControlFramework := Value;
end;

{ TJanuaCustomDialogServer }

procedure TJanuaCustomDialogServer.SetJanuaServerSession(const Value: TJanuaServerSession);
begin
  FJanuaServerSession := Value;
end;

{ TJanuaCustomSchemaSelector }

procedure TJanuaCustomDialogSchemaSelector.SetJanuaServerSession(const Value: TJanuaServerSession);
begin
  FJanuaServerSession := Value;
end;

procedure TJanuaCustomDialogSchemaSelector.SetSelectedSchema(const Value: TJanuaRecordSchema);
begin
  FSelectedSchema := Value;
end;

{ TJanuaDateEditProperties }

constructor TJanuaDateEditProperties.Create(AOwner: TJanuaCoreComponent;
  aName, aTextHint, aField: string);
begin
  // impostarele proprietà
  self.Create(AOwner);
  self.FComponentName := aName;
  self.FTextHint := aTextHint;
  self.FTargetField := aField;
end;

constructor TJanuaDateEditProperties.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TJanuaDateEditProperties.SetDate(const Value: TDateTime);
begin
  FDate := Value;
end;

procedure TJanuaDateEditProperties.SetTextHint(const Value: string);
begin
  FTextHint := Value;
end;

{ TJanuaEditProperties }

constructor TJanuaEditProperties.Create(AOwner: TJanuaCoreComponent;
  aName, aTextHint, aField: string);
begin
  self.Create(AOwner);
  if Assigned(AOwner) then
    self.FJanuaOwner := AOwner;

  self.FPasswordChar := '*';
  self.FHasPassword := False;
  self.FComponentName := aName;
  self.FTextHint := aTextHint;
  self.FTargetField := aField;
end;

constructor TJanuaEditProperties.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TJanuaEditProperties.EditChange(Sender: TObject);
begin
  {$ifndef fpc}
  TBindings.Notify(Sender, 'Text');
  {$endif}
end;


procedure TJanuaEditProperties.BindTarget;
begin
  /// questa funzione controlla che il target ed il field siano definiti ed il component collegato
  if Assigned(FTarget) and (self.FTargetField > '') and Assigned(self.FComponent) then
  begin
    // se il target è un januacorecomponent allora chiamo bindedit
    if self.FTarget is TJanuaCoreComponent then
      self.BindEdit(FTarget as TJanuaCoreComponent, FTargetField, FComponent)
      // se invece è un janua core Object allora uso BindEditObject
    else if self.FTarget is TJanuaCoreObject then
      self.BindEditObject(FTarget as TJanuaCoreObject, FTargetField, FComponent);
  end;
end;

procedure TJanuaEditProperties.SetComponent(const Value: TComponent);
begin
  self.FComponent := Value;
  if Assigned(FComponent) then
    BindTarget;

end;

procedure TJanuaEditProperties.SetHasPassword(const Value: boolean);
begin
  FHasPassword := Value;
end;

procedure TJanuaProperties.SetComponentName(const Value: string);
begin
  FComponentName := Value;
end;

procedure TJanuaEditProperties.SetPasswordChar(const Value: string);
begin
  FPasswordChar := Value;
end;

procedure TJanuaEditProperties.SetTarget(const Value: TObject);
begin
  FTarget := Value;
  if Assigned(FTarget) then
    BindTarget;

end;

procedure TJanuaEditProperties.SetTargetField(const Value: string);
begin
  inherited;
  if FTargetField > '' then
    BindTarget;
end;

procedure TJanuaEditProperties.SetTextHint(const Value: string);
begin
  FTextHint := Value;
end;

{ TJanuaButtonProperties }

procedure TJanuaButtonProperties.ButtonClick(Sender: TObject);
begin
  if Assigned(self.OnButtonClick) and Assigned(Sender) then
    self.OnButtonClick(self);
end;

constructor TJanuaButtonProperties.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

constructor TJanuaButtonProperties.Create(AOwner: TJanuaCoreComponent; aName, aCaption: string);
begin
  self.Create(AOwner);
  self.FComponentName := aName;
  self.FCaption := aCaption;
end;

procedure TJanuaButtonProperties.SetCaption(const Value: string);
begin
  FCaption := Value;
end;

{ TJanuaComboProperties }

procedure TJanuaComboProperties.ComboChange(Sender: TObject);
begin
  {$ifndef fpc}
  TBindings.Notify(Sender, 'ItemIndex');
  TBindings.Notify(Sender, 'Text');
  {$endif}
end;

constructor TJanuaComboProperties.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

constructor TJanuaComboProperties.Create(AOwner: TJanuaCoreComponent;
  aName, aTextHint, aField, aIndex: string);
begin
  self.Create(AOwner);
  self.FComponentName := aName;
  self.Hint := aTextHint;
  self.FTargetField := aField;
  FStringList := TStringList.Create;
end;

procedure TJanuaComboProperties.SetCaption(const Value: String);
begin
  FCaption := Value;
end;

procedure TJanuaComboProperties.SetComponent(const Value: TComponent);
begin
  self.FComponent := Value;
  if Assigned(self.FComponent) then
    self.SetComboBox;

end;

procedure TJanuaComboProperties.SetStringList(const Value: TStrings);
begin
  FStringList.Assign(Value)
end;

procedure TJanuaComboProperties.SetTargetIndexField(const Value: string);
begin
  FTargetIndexField := Value;
end;

{ TJanuaSelectProperties }

procedure TJanuaSelectProperties.SetCaption(const Value: string);
begin
  FCaption := Value;
end;

{ TJanuaLabelProperties }

constructor TJanuaLabelProperties.Create(AOwner: TJanuaCoreComponent;
  aName, aCaption, aField: string);
begin
  self.Create(AOwner);
  self.FComponentName := aName;
  self.FCaption := aCaption;
  self.FTargetField := aField;
end;

constructor TJanuaLabelProperties.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TJanuaLabelProperties.SetCaption(const Value: string);
begin
  FCaption := Value;
end;

procedure TJanuaLabelProperties.SetTargetField(const Value: string);
begin
  inherited;
end;

{ TJanuaProperties }

procedure TJanuaProperties.SetHint(const Value: string);
begin
  FHint := Value;
end;

procedure TJanuaProperties.SetTargetField(const Value: string);
begin
  FTargetField := Value;
end;

procedure TJanuaProperties.WriteError(aError: String; e: Exception);
begin
  if Assigned(self.Owner) and (self.Owner is TJanuaCoreComponent) then
    (self.Owner as TJanuaCoreComponent).WriteError(aError, e);
end;

procedure TJanuaProperties.WriteLog(aLog: string);
begin
  if Assigned(self.Owner) and (self.Owner is TJanuaCoreComponent) then
    (self.Owner as TJanuaCoreComponent).WriteLog(aLog);
end;

{ TJanuaCustoDBController }

procedure TJanuaCustomDBController.SetbtnInsert(const Value: TJanuaButtonProperties);
begin
  FbtnInsert := Value;
end;

{ TJanuaDBButtonProperties }

procedure TJanuaDBButtonProperties.ButtonClick(Sender: TObject);
begin
  if Assigned(self.OnButtonClick) and Assigned(Sender) then
    inherited
  else if Assigned(self.FDataset) then
  begin
    case self.FButtonType of
      jdbPrior:
        begin
          if not self.FDataset.Bof then
            self.FDataset.Prior;
        end;
      jdbFirst:
        begin
          if not self.FDataset.Bof then
            self.FDataset.Prior;
        end;
      jdbNext:
        begin
          if not self.FDataset.Bof then
            self.FDataset.Prior;
        end;
      jdbLast:
        begin
          if not self.FDataset.Bof then
            self.FDataset.Prior;
        end;
      jdbInsert:
        begin
          if not self.FDataset.Bof then
            self.FDataset.Prior;
        end;
      jdbDelete:
        begin
          if not self.FDataset.Bof then
            self.FDataset.Prior;
        end;
      jdbPost:
        begin
          if not self.FDataset.Bof then
            self.FDataset.Prior;
        end;
      jdbUndo:
        begin
          if not self.FDataset.Bof then
            self.FDataset.Prior;
        end;
      jdbApplyUpdates:
        begin
          if not self.FDataset.Bof then
            self.FDataset.Prior;
        end;

    end;
  end;

end;

procedure TJanuaDBButtonProperties.SetButtonType(const Value: TJanuaDBButton);
begin
  FButtonType := Value;
end;

procedure TJanuaDBButtonProperties.SetDataset(const Value: TDataset);
begin
  FDataset := Value;
end;

{ TJanuaReadOnly }

procedure TJanuaCustomReadOnly.Execute;
begin
  if not self.FReadOnly then self.FReadOnly :=  self.SetReadOnlyInternal
end;

procedure TJanuaCustomReadOnly.SetReadOnly(const Value: boolean);
begin
  if Value and not self.FReadOnly then self.FReadOnly := self.SetReadOnlyInternal;


end;

end.

unit Janua.Core.Customcontrols;

interface

{$I JANUACORE.INC}

uses
{$IFNDEF fpc}
  System.SysUtils, System.Classes, Generics.Collections, Data.DB, System.JSON,
{$ELSE}
  SysUtils, Classes, Janua.Core.Functions, Janua.Core.Classes, DB,
{$ENDIF}
  Janua.Controls.Dialogs.Intf, Janua.Core.Classes, Janua.Core.Types, Janua.Controls.Intf, Janua.Orm.Intf,
  Janua.Controls.Dialogs.Impl;

/// <summary> TJanua Custom Edit controller serve per collegare un Controller ad un componente</summary>
type
  TJanuaCustomEditController = class(TPersistent)
  protected
    /// <summary>
    /// il suo discendente si occuperà anche di impostare l'elemento WinControl FMX collegato in base al valore FVAlue
    /// <summary>
    procedure SetText(aValue: string); Virtual; Abstract;
    function GetText: string; Virtual; Abstract;
  private
    /// <summary>  mantiene il valore in locale ma viene raramente usato</summary>
    FValue: string;
    /// <summary>
    /// Imposta il valore ricevuto dall'impostazione di FVAlue e quiindi chiama la funyzione Protected SetText.
    /// </summary>
    procedure SetValue(const Value: string);
    /// <summary>
    /// Chiama la funzione pubblica GetText (che legge il valore del Testo dal controllo VCL-FMX) e scrive FValue;
    /// </summary>
    function getValue: string;
  public
    procedure ExecuteTest;
  published
    property Value: string read getValue write SetValue;
  end;

type
  TJanuaCustomLabelController = class(TPersistent)
  protected
    FValue: string;
  private
    procedure SetValue(const Value: string);
  published
    property Value: string read FValue write SetValue;
  end;

type
  TJanuaCustomCheckBox = class(TPersistent)
  protected
    FValue: boolean;
  private
    procedure SetValue(const Value: boolean);

  published
    property Value: boolean read FValue write SetValue;
  end;

type
  TJanuaCustomTestControllers = class(TJanuaCoreComponent)
  private

  protected
    FLogOutput: TJanuaCustomEditController;
    FJsonOutput: TJanuaCustomEditController;
    FInput1: TJanuaCustomEditController;
    FInput2: TJanuaCustomEditController;
    FInput3: TJanuaCustomEditController;
    FInput4: TJanuaCustomEditController;
  strict protected
    function InternalActivate: boolean; override;
  public
    procedure TestComponent;
    procedure UndoTest;
  published

  end;

type
  /// <summary>
  /// This class is responsibile to maintain bindings between Controls on Screen and
  /// IJanuaFields From ObjectClasses from Janua ORM Framework.
  /// Properties and Bindings Change according to the UI framework used:
  /// VCL, FMX, LCL, Intraweb, TurboCocoa, CLX ... Controller Act as a Bridge between
  /// View-Model or Just Model and View. A Controller has a property Record and RecordSet.
  /// </summary>
  TJanuaCoreController = class(TJanuaCoreComponent)
  protected
    FJanuaControlBuilder: IJanuaControlBuilder;
  protected
    FEditTextProperty: string;
    FComboTextProperty: string;
    FComboListProperty: string;
    FRadioSelectProperty: string;
    FRadioItemsProperty: string;
    FSelectProperty: string;
    FDateProperty: string;
    FCaptionProperty: string;
    FCheckProperty: string;

  public
    constructor Create(AOwner: TComponent); override;
    // ********** Eventi poi Actions **************************************************************
    procedure EditChange(Sender: TObject);
    procedure ComboChange(Sender: TObject);
    procedure RadioChange(Sender: TObject);
    procedure SelectChange(Sender: TObject);
    procedure DateChange(Sender: TObject);
  end;

type
  TJanuaCustomController = class(TJanuaCoreComponent)
  private
    FJanuaControlFramework: TJanuaControlFramework;
    procedure SetJanuaControlFramework(const Value: TJanuaControlFramework);
  protected
  public
    // ********** Gestori della Comboo Box *********************************************************
    function SetComboBox(const aObject: TComponent; const aProperty: IJanuaCombo; var aField: TComponent;
      aStringList: TStrings): boolean; virtual; Abstract;
    procedure SetComboEvents(var aField: TComponent); virtual; Abstract;
    procedure BindComboText(const aObject: TJanuaCoreComponent; const aProperty: string; const aField: TComponent);
      virtual; Abstract;
    procedure BindComboList(const aObject: TJanuaCoreComponent; const aProperty: string; const aField: TComponent);
      virtual; Abstract;
    function GetComboSelectedText(aCombo: TComponent): string; virtual; Abstract;
    procedure SetComboSelectedText(aCombo: TComponent; aText: string); virtual; Abstract;
    function SetComboList(aCombo: TComponent; aList: TStrings): string; virtual; Abstract;

    // ********** Impostazioini Buttons & Labels ***************************************************
    procedure SetButton(const aObject: TComponent; const aProperty: IJanuaButton; var aField: TComponent);
      virtual; Abstract;
    function SetLabel(const aObject: TComponent; const aProperty: IJanuaLabel; var aField: TComponent): boolean;
      virtual; Abstract;

    // procedure bindLabelObject(const aObject: TJanuaBindObject; const aProperty: string;
    // const aField: TComponent); virtual; Abstract;

    // ********** Gestori della Select Box **********************************************************
    function SetSelect(const aObject: TComponent; const aProperty: IJanuaGroupBox; var aField: TComponent;
      aList: TStrings): boolean; virtual; Abstract;

    procedure BindSelectIndex(const aObject: TObject; const aProperty: string; const aField: TComponent);
      virtual; Abstract;
    procedure BindSelectList(const aObject: TJanuaCoreComponent; const aProperty: string; const aField: TComponent);
      virtual; Abstract;

    // ********** Gestori della Date Edit***********************************************************
    function SetDateEdit(const aObject: TComponent; const aProperty: IJanuaDateEdit; var aField: TComponent): boolean;
      virtual; Abstract;

    procedure BindDateEdit(const aObject: TJanuaCoreComponent; const aProperty: string; const aField: TComponent);
      virtual; Abstract;

    // procedure BindDateEditObject(const aObject: TJanuaBindObject; const aProperty: string;
    // const aField: TComponent); virtual; Abstract;

    // ********** Gestori della Edit Date ************************************************************
    function SetEditDate(aEdit: TComponent): TDateTime; virtual; Abstract;
    function GetEditDate(aEdit: TComponent): TDateTime; virtual; Abstract;

    procedure BindEdit(const aObject: TJanuaCoreComponent; const aProperty: string; const aField: TComponent);
      virtual; Abstract;
    function GetEditText(aEdit: TComponent): string; virtual; Abstract;
    procedure SetEditText(aEdit: TComponent; aText: string); virtual; Abstract;
    function SetEdit(const aObject: TComponent; const aProperty: IJanuaEdit; var aField: TComponent): boolean;
      virtual; Abstract;
  published
    property JanuaControlFramework: TJanuaControlFramework read FJanuaControlFramework write SetJanuaControlFramework;
  end;

type
  TJanuaCustomDBController = class(TJanuaCoreComponent)
  private
    FbtnInsert: IJanuaButton;
    FbtnFirst: IJanuaButton;
    FbtnDelete: IJanuaButton;
    FDataset: IJanuaRecordset;
    FbtnEdit: IJanuaButton;
    FbtnNext: IJanuaButton;
    FbtnLast: IJanuaButton;
    FbtnPrior: IJanuaButton;
    procedure SetbtnInsert(const Value: IJanuaButton);
    procedure SetbtnDelete(const Value: IJanuaButton);
    procedure SetbtnEdit(const Value: IJanuaButton);
    procedure SetbtnFirst(const Value: IJanuaButton);
    procedure SetbtnLast(const Value: IJanuaButton);
    procedure SetbtnNext(const Value: IJanuaButton);
    procedure SetbtnPrior(const Value: IJanuaButton);
    procedure SetDataset(const Value: IJanuaRecordset);
  public
  published
    property btnInsert: IJanuaButton read FbtnInsert write SetbtnInsert;
    property btnDelete: IJanuaButton read FbtnDelete write SetbtnDelete;
    property btnEdit: IJanuaButton read FbtnEdit write SetbtnEdit;
    property btnFirst: IJanuaButton read FbtnFirst write SetbtnFirst;
    property btnPrior: IJanuaButton read FbtnPrior write SetbtnPrior;
    property btnNext: IJanuaButton read FbtnNext write SetbtnNext;
    property btnLast: IJanuaButton read FbtnLast write SetbtnLast;
    property Dataset: IJanuaRecordset read FDataset write SetDataset;
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

type
  TJanuaCustomSimpleController = class(TJanuaCoreComponent)
  private
    FLanguage: TJanuaLanguage;
  protected
    procedure ShowMessageError(aError: string; aSpecification: string = ''; aHelp: string = '');
  public
  published
    property Language: TJanuaLanguage read FLanguage write SetLanguage;
  end;

implementation

uses Janua.Core.Functions, Janua.Core.JSON, Janua.Application.Framework;

{ TJanuaReadOnly }

procedure TJanuaCustomReadOnly.Execute;
begin
  if not self.FReadOnly then
    self.FReadOnly := self.SetReadOnlyInternal
end;

procedure TJanuaCustomReadOnly.SetReadOnly(const Value: boolean);
begin
  if Value and not self.FReadOnly then
    self.FReadOnly := self.SetReadOnlyInternal;

end;

{ TJanuaCustomController }

procedure TJanuaCustomController.SetJanuaControlFramework(const Value: TJanuaControlFramework);
begin
  FJanuaControlFramework := Value;
end;

{ TJanuaCustomEditController }

procedure TJanuaCustomEditController.ExecuteTest;
begin

end;

function TJanuaCustomEditController.getValue: string;
begin
  self.FValue := self.GetText;
  Result := self.FValue;
end;

procedure TJanuaCustomEditController.SetValue(const Value: string);
begin
  self.FValue := Value;
  self.SetText(FValue);
end;

{ TJanuaCustomLabelController }

procedure TJanuaCustomLabelController.SetValue(const Value: string);
begin
  FValue := Value;
end;

{ TJanuaCustomCheckBox }

procedure TJanuaCustomCheckBox.SetValue(const Value: boolean);
begin
  self.FValue := Value;
end;

{ TJanuaCustomTestControllers }

function TJanuaCustomTestControllers.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := Assigned(self.FLogOutput);
        if Result then
          TestComponent;
      end;
    except
      on e: exception do
        RaiseException('TJanuaCloudComponent.InternalActivate', e, self);
    end;
end;

procedure TJanuaCustomTestControllers.TestComponent;
var
  sTest: string;
  sJson: TJsonObject;
begin
  sTest := '';
  if Assigned(self.FJsonOutput) then
  begin
    sJson := TJsonObject.Create;
    try
      sJson.AddPair('1', self.FInput1.Value);
      sJson.AddPair('2', self.FInput2.Value);
      sJson.AddPair('3', self.FInput3.Value);
      sJson.AddPair('4', self.FInput4.Value);
      self.FJsonOutput.Value := Janua.Core.JSON.JsonPretty(sJson);
    finally
      sJson.Free;
    end;

  end;

  if Assigned(self.FLogOutput) then
  begin
    if Assigned(self.FInput1) then
      sTest := sTest + sLineBreak + self.FInput1.Value;
    if Assigned(self.FInput2) then
      sTest := sTest + sLineBreak + self.FInput2.Value;
    if Assigned(self.FInput3) then
      sTest := sTest + sLineBreak + self.FInput3.Value;
    if Assigned(self.FInput4) then
      sTest := sTest + sLineBreak + self.FInput4.Value;

    if Assigned(self.FLogOutput) then
      self.FLogOutput.Value := sTest;

    self.WriteLog(sTest, False);
  end
  else
  begin
    self.WriteLog('FLogOutput  not assigned', True);
  end;
end;

procedure TJanuaCustomTestControllers.UndoTest;
begin
  if Assigned(self.FLogOutput) then
    self.FLogOutput.SetText('');

end;

{ TJanuaCustomSimpleController }

procedure TJanuaCustomSimpleController.ShowMessageError(aError, aSpecification, aHelp: string);
var
  lDialog: IJanuaDialog;
begin
  if TJanuaApplicationFactory.TryGetInterface(IJanuaDialog, lDialog, False) then
    lDialog.JShowError(aError, aSpecification, aHelp);
end;

{ TJanuaCustomDBController }

procedure TJanuaCustomDBController.SetbtnDelete(const Value: IJanuaButton);
begin

end;

procedure TJanuaCustomDBController.SetbtnEdit(const Value: IJanuaButton);
begin

end;

procedure TJanuaCustomDBController.SetbtnFirst(const Value: IJanuaButton);
begin

end;

procedure TJanuaCustomDBController.SetbtnInsert(const Value: IJanuaButton);
begin

end;

procedure TJanuaCustomDBController.SetbtnLast(const Value: IJanuaButton);
begin

end;

procedure TJanuaCustomDBController.SetbtnNext(const Value: IJanuaButton);
begin

end;

procedure TJanuaCustomDBController.SetbtnPrior(const Value: IJanuaButton);
begin

end;

procedure TJanuaCustomDBController.SetDataset(const Value: IJanuaRecordset);
begin

end;

{ TJanuaCoreController }

procedure TJanuaCoreController.ComboChange(Sender: TObject);
begin

end;

constructor TJanuaCoreController.Create(AOwner: TComponent);
begin
  inherited;

  FEditTextProperty := 'Text';

  FComboTextProperty := 'Text';

  FComboListProperty := 'Items'; // ??? Verificare

  FRadioSelectProperty := 'ItemIndex';

  FRadioItemsProperty := 'Items';

  FSelectProperty := '';

  FDateProperty := 'Date';

  FCaptionProperty := 'Caption';

  FCheckProperty := 'Checked';

end;

procedure TJanuaCoreController.DateChange(Sender: TObject);
begin
  BindManager.Notify(FDateProperty);
end;

procedure TJanuaCoreController.EditChange(Sender: TObject);
begin
  BindManager.Notify(FEditTextProperty);
end;

procedure TJanuaCoreController.RadioChange(Sender: TObject);
begin
  BindManager.Notify(FRadioSelectProperty);
end;

procedure TJanuaCoreController.SelectChange(Sender: TObject);
begin

end;

end.

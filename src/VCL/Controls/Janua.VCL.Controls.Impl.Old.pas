unit Janua.VCL.Controls.Impl.Old;

interface

uses
  // system
  System.SysUtils, System.Classes,

  // Vcl
  VCL.StdCtrls, VCL.Forms, VCL.DBCtrls,
{$IFNDEF VER330} JvDBControls, {$ENDIF}
  VCL.ExtCtrls,

  // Janua
  Janua.Controls.Standard.Impl, Janua.Controls.Standard.Intf,
  Janua.Core.Functions, Janua.Core.System, Janua.Core.Classes, Janua.Core.Users, Janua.VCL.Functions,
  Janua.VCL.EnhDBGrid, Janua.VCL.EnhCRDBGrid, Janua.Core.CustomControls;

type
  TJanuaVCLEditControl = class(TJanuaCustomControl { , IJanuaControl, IJanuaEdit } )
  protected
    function InternalValidateComponent(aComponent: TComponent): boolean; override;
    procedure SetText(aValue: string);
    function GetText: string;
  end;

type
  TJanuaVCLSelectControl = class(TJanuaCustomControl)
    procedure SetCaption(Value: string);
    procedure SetSelected(Value: Integer);
  end;

type
  TJanuaVCLTestControllers = class(TJanuaCustomTestControllers)

  private
    {
      function getLogOutput: TJanuaVCLEditControl;
      function getJsonOutput: TJanuaVCLEditControl;
      function getInput2: TJanuaVCLEditControl;
      function getInput3: TJanuaVCLEditControl;
      function getInput1: TJanuaVCLEditControl;
      function getInput4: TJanuaVCLEditControl;
      procedure SetInput1(const Value: TJanuaVCLEditControl);
      procedure SetInput2(const Value: TJanuaVCLEditControl);
      procedure SetInput3(const Value: TJanuaVCLEditControl);
      procedure SetInput4(const Value: TJanuaVCLEditControl);
      procedure SetLogOutput(const Value: TJanuaVCLEditControl);
    }
  public
    constructor Create(aOwner: TComponent); override;
    destructor Destroy; override;
  published
    {
      property LogOutput: TJanuaVCLEditControl read getLogOutput write SetLogOutput;
      property JsonOutput: TJanuaVCLEditControl read getJsonOutput write SetLogOutput;
      property Input1: TJanuaVCLEditControl read getInput1 write SetInput1;
      property Input2: TJanuaVCLEditControl read getInput2 write SetInput2;
      property Input3: TJanuaVCLEditControl read getInput3 write SetInput3;
      property Input4: TJanuaVCLEditControl read getInput4 write SetInput4;
    }
  end;

type
  TJanuaVCLDateEditComponent = class(TJanuaCustomControl { , IJanuaControl, IJanuaEdit } )
  protected
    function InternalValidateComponent(aComponent: TComponent): boolean; override;
  end;

type
  TJanuaVCLSelectProperties = class(TJanuaCustomControl { , IJanuaControl, IJanuaEdit } )
  protected
    function InternalValidateComponent(aComponent: TComponent): boolean; override;

  end;

type
  TJanuaVCLComboComponent = class(TJanuaCustomControl { , IJanuaControl, IJanuaEdit } )
  private
  protected
    function InternalValidateComponent(aComponent: TComponent): boolean; override;
    // *********************Comb Boxes **************************************************************
    function SetComboBox: boolean;
    procedure SetComboEvents(var aField: TComponent);
    procedure SetComboSelectedText(aCombo: TComponent; aText: string);
    function SetComboList(aCombo: TComponent; aList: TStrings): string;

    (*
      procedure BindComboText; override;
      procedure BindComboList(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;

      procedure BindComboObjectText(const aObject: TJanuaBindObject; const aProperty: string;
      const aField: TComponent); override;
      procedure BindComboObjectList(const aObject: TJanuaBindObject; const aProperty: string;
      const aField: TComponent); override;
      procedure BindComboObjectIndex(const aObject: TJanuaBindObject; const aProperty: string;
      const aField: TComponent); override;
    *)
  end;

type
  TJanuaVCLButtonControl = class(TJanuaCustomControl { , IJanuaControl, IJanuaEdit } )
  protected
    function InternalValidateComponent(aComponent: TComponent): boolean; override;
    procedure SetComponent(const Value: TComponent); override;
  public
  published
  end;

type
  TJanuaVCLController = class(TJanuaCustomController)
  private
  protected
  public
    { Nel cas della Select gli Items vanno collegati, la selezione avviene poi con StringList e Index }
    // *********************Comb Boxes **************************************************************
    function SetComboBox(const aObject: TComponent; const aProperty: IJanuaCombo; var aField: TComponent;
      aStringList: TStrings): boolean; override;
    procedure SetComboEvents(var aField: TComponent); override;
    procedure SetComboSelectedText(aCombo: TComponent; aText: string); override;
    function SetComboList(aCombo: TComponent; aList: TStrings): string; override;
    (*
      procedure BindComboText(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;
      procedure BindComboList(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;
      procedure BindComboObjectText(const aObject: TJanuaBindObject; const aProperty: string;
      const aField: TComponent); override;
      procedure BindComboObjectList(const aObject: TJanuaBindObject; const aProperty: string;
      const aField: TComponent); override;
      procedure BindComboObjectIndex(const aObject: TJanuaBindObject; const aProperty: string;
      const aField: TComponent); override;
    *)
    // ****************** Buttons & Labels ********************************************************

    procedure SetButton(const aObject: TComponent; const aProperty: IJanuaButton;
      var aField: TComponent); override;
    function SetLabel(const aObject: TComponent; const aProperty: IJanuaLabel; var aField: TComponent)
      : boolean; override;
    (*
      procedure bindLabelObject(const aObject: TJanuaBindObject; const aProperty: string;
      const aField: TComponent); override;
    *)
    // ******************** Edit Date **************************************************************

    function SetDateEdit(const aObject: TComponent; const aProperty: IJanuaDateEdit;
      var aField: TComponent): boolean; override;
    (*
      procedure BindDateEdit(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;

      procedure BindDateEditObject(const aObject: TJanuaBindObject; const aProperty: string;
      const aField: TComponent); override;

      // ******************** Edit Boxes **************************************************************
      procedure BindEdit(const aObject: TJanuaCoreComponent; const aProperty: string; const aField: TComponent); override;
      procedure BindEditObject(const aObject: TJanuaBindObject; const aProperty: string;
      const aField: TComponent); override;
    *)
    function SetEdit(const aObject: TComponent; const aProperty: IJanuaEdit; var aField: TComponent)
      : boolean; override;

    // ********************* bind Select ************************************************************
    { Nel caso della Select gli Items vanno collegati, la selezione avviene poi con ItemIndex }
    (*
      procedure BindSelectIndex(const aObject: TObject; const aProperty: string; const aField: TComponent); override;
      procedure BindSelectList(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;
    *)
    // ********************* fine bind Select *******************************************************
    function GetEditText(aEdit: TComponent): string; override;
    procedure SetEditText(aEdit: TComponent; aText: string); override;

    function GetComboSelectedText(aCombo: TComponent): string; override;

    function GetEditDate(aEdit: TComponent): TDateTime; override;

    function SetEditDate(aEdit: TComponent): TDateTime; override;
  published
  end;

type
  TJanuaReadOnly = class(TJanuaCustomReadOnly)
  protected
    function SetReadOnlyInternal: boolean; override;
  public

  end;

implementation

uses VCL.Controls, VCL.ComCtrls;

{ TJanuaVCLController }
(*
  procedure TJanuaVCLController.BindComboList(const aObject: TJanuaCoreComponent; const aProperty: string;
  const aField: TComponent);
  begin
  inherited;
  if Assigned(aObject) and Assigned(aField) and (aObject is TJanuaCoreComponent) then
  begin
  //if (aField is TCustomComboBox) then
  //  aObject.Bind(aProperty, aField, 'Items');
  self.WriteLog('BindComboList Impostata proprietà: ' + (aObject as TJanuaCoreComponent).Name + '.' + aProperty +
  ' Componente: ' + aField.Name + '.' + 'Items');
  end;
  end;


  procedure TJanuaVCLController.BindComboObjectIndex(const aObject: TJanuaBindObject; const aProperty: string;
  const aField: TComponent);
  begin
  if Assigned(aObject) and Assigned(aField) then
  try

  if (aField is TCustomComboBox) then
  aObject.Bind(aProperty, aField, 'ItemIndex');

  self.WriteLog('BindComboObjectText Impostata proprietà: ' + aObject.ClassName + '.' + aProperty + ' Componente: '
  + aField.Name + '.' + 'ItemIndex=' + (aField as TCustomComboBox).ItemIndex.ToString);

  except
  on e: exception do
  self.WriteError('TJanuaVCLController.BindComboObjectTex Error:' + aField.Name, e);
  end;

  end;

  procedure TJanuaVCLController.BindComboObjectList(const aObject: TJanuaBindObject; const aProperty: string;
  const aField: TComponent);
  begin
  inherited;
  if Assigned(aObject) and Assigned(aField) then
  begin
  if (aField is TCustomComboBox) then
  aObject.Bind(aProperty, aField, 'Items');
  self.WriteLog('BindComboObjectList Impostata proprietà: ' + aObject.ClassName + '.' + aProperty + ' Componente: ' +
  aField.Name + '.' + 'Items');
  end;
  end;

  procedure TJanuaVCLController.BindComboObjectText(const aObject: TJanuaBindObject; const aProperty: string;
  const aField: TComponent);
  begin
  if Assigned(aObject) and Assigned(aField) then
  try
  if (aField is TComboBox) then
  aObject.Bind(aProperty, aField, 'Text')
  else if (aField is TCustomComboBox) then
  aObject.Bind(aProperty, aField, 'SelText');

  self.WriteLog('BindComboObjectText Impostata proprietà: ' + aObject.ClassName + '.' + aProperty + ' Componente: '
  + aField.Name + '.' + 'SelText');
  except
  on e: exception do
  self.WriteError('TJanuaVCLController.BindComboObjectTex Error:' + aField.Name, e);
  end;
  end;

  procedure TJanuaVCLController.BindComboText(const aObject: TJanuaCoreComponent; const aProperty: string;
  const aField: TComponent);
  begin
  if Assigned(aField) and (aObject is TJanuaCoreComponent) then
  try
  if (aField is TComboBox) then
  aObject.Bind(aProperty, aField, 'Text')
  else if (aField is TCustomComboBox) then
  aObject.Bind(aProperty, aField, 'SelText');

  self.WriteLog('BindComboText Impostata proprietà: ' + (aObject as TJanuaCoreComponent).Name + '.' + aProperty +
  ' Componente: ' + aField.Name + '.' + 'Text');

  except
  on e: exception do
  self.WriteError('TJanuaVCLController.BindComboText Error:' + aField.Name, e);
  end;
  end;

  procedure TJanuaVCLController.BindDateEdit(const aObject: TJanuaCoreComponent; const aProperty: string;
  const aField: TComponent);
  begin
  if Assigned(aObject) and Assigned(aField) then
  begin
  if (aField is TEdit) then
  begin
  aObject.Bind(aProperty, aField, 'Text');
  TEdit(aField).OnChange := self.EditChange;
  end
  else if (aField is TCommonCalendar) then
  begin
  aObject.Bind(aProperty, aField, 'Date');
  if (aField is TDateTimePicker) then
  TDateTimePicker(aField).OnChange := self.DateChange;
  end;

  end;

  end;

  procedure TJanuaVCLController.BindDateEditObject(const aObject: TJanuaBindObject; const aProperty: string;
  const aField: TComponent);
  begin
  inherited;

  end;

  procedure TJanuaVCLController.BindEdit(const aObject: TJanuaCoreComponent; const aProperty: string;
  const aField: TComponent);
  begin
  if Assigned(aObject) and Assigned(aField) then
  begin
  if (aField is TEdit) then
  aObject.Bind(aProperty, aField, 'Text');

  if (aField is TEdit) then
  TEdit(aField).OnChange := self.EditChange;
  end;
  end;

  procedure TJanuaVCLController.BindEditObject(const aObject: TJanuaBindObject; const aProperty: string;
  const aField: TComponent);
  begin
  if Assigned(aObject) and Assigned(aField) then
  begin
  if (aField is TCustomEdit) then
  aObject.Bind(aProperty, aField, 'Text');
  if (aField is TEdit) then
  TEdit(aField).OnChange := self.EditChange;
  end;

  end;

  procedure TJanuaVCLController.bindLabelObject(const aObject: TJanuaBindObject; const aProperty: string;
  const aField: TComponent);
  begin
  if Assigned(aObject) and Assigned(aField) then
  begin
  if (aField is TCustomLabel) then
  aObject.Bind(aProperty, aField, 'Caption');
  end;
  end;


  procedure TJanuaVCLController.BindSelectIndex(const aObject: TObject; const aProperty: string;
  const aField: TComponent);
  begin
  if Assigned(aObject) and Assigned(aField) and (aObject is TJanuaCoreComponent) then
  begin
  if (aField is TRadioGroup) then
  try
  (aObject as TJanuaCoreComponent).Bind(aProperty, aField, 'ItemIndex');
  TRadioGroup(aField).OnClick := self.RadioChange;
  except
  on e: exception do
  self.WriteError('TJanuaVCLController.BindSelectIndex Error:' + aField.Name + '.ItemIndex', e);
  end;

  end;
  end;

  procedure TJanuaVCLController.BindSelectList(const aObject: TJanuaCoreComponent; const aProperty: string;
  const aField: TComponent);
  begin
  inherited;
  if Assigned(aObject) and Assigned(aField) then
  begin
  if (aField is TRadioGroup) then
  try
  self.WriteLog('BindComboList Impostata proprietà: ' + aObject.Name + '.' + aProperty + ' Componente: ' +
  aField.Name + '.' + 'Items');
  aObject.Bind(aProperty, aField, 'Items');
  except
  on e: exception do
  self.WriteError('TJanuaVCLController.BindSelectList Error:' + aField.Name + '.ItemIndex', e);
  end;

  end;
  end;
*)

function TJanuaVCLController.GetComboSelectedText(aCombo: TComponent): string;
begin
  Result := TCustomComboBox(aCombo).Items[TCustomComboBox(aCombo).ItemIndex];
end;

function TJanuaVCLController.GetEditDate(aEdit: TComponent): TDateTime;
begin
  try
    Result := StrToDateTime(TCustomEdit(aEdit).Text);
  except
    Result := 0;
  end;
end;

function TJanuaVCLController.GetEditText(aEdit: TComponent): string;
begin
  Result := '';
  if Assigned(aEdit) and (aEdit is TCustomEdit) then
    try
      Result := TCustomEdit(aEdit).Text;
    except
      on e: exception do
        WriteError('TJanuaVCLController.GetEditText Error:' + aEdit.Name, e);
    end;
end;

procedure TJanuaVCLController.SetButton(const aObject: TComponent; const aProperty: IJanuaButton;
  var aField: TComponent);
var
  oldName: string;
begin
  aField := aObject;
  if Assigned(aField) and (aField is TCustomButton) then
  begin
    try
      oldName := TCustomButton(aField).Name;
      TCustomButton(aField).Name := aProperty.Name;
    except
      TCustomButton(aField).Name := oldName;
    end;

    if (aField is TButton) then
      TButton(aField).Caption := aProperty.Caption;
  end;
end;

function TJanuaVCLController.SetComboBox(const aObject: TComponent; const aProperty: IJanuaCombo;
  var aField: TComponent; aStringList: TStrings): boolean;
var
  oldName: string;
begin
  Result := False;
  try
    if Assigned(aObject) and (aObject is TCustomComboBox) and Assigned(aStringList) then
    begin
      aField := aObject;
      Result := True;
      self.WriteLog('TJanuaVCLController.SetComboBox set ' + aField.Name + '.Caption = ' +
        aProperty.Caption);
      try
        oldName := TCustomComboBox(aField).Name;
        TCustomComboBox(aField).Name := aProperty.Name;
      except
        TCustomComboBox(aField).Name := oldName;
      end;
      {
        if (aField is TComboBox) then
        (aField as TComboBox).OnChange := self.ComboChange;
      }
    end
    else if not Assigned(aObject) then
    begin
      aField := nil;
      Result := False;
    end;
  except
    on e: exception do
      self.WriteError('TJanuaVCLController.SetComboBox Error:', e);
  end;
end;

procedure TJanuaVCLController.SetComboEvents(var aField: TComponent);
begin
  inherited;

end;

function TJanuaVCLController.SetComboList(aCombo: TComponent; aList: TStrings): string;
begin
  Result := '';
  if Assigned(aCombo) then
    try
      TCustomComboBox(aCombo).Items.Assign(aList);
    except
      on e: exception do
        self.WriteError('TJanuaVCLController.SetComboList Error: ' + aCombo.Name, e);
    end;
end;

procedure TJanuaVCLController.SetComboSelectedText(aCombo: TComponent; aText: string);
var
  i: Integer;
begin
  try
    if Assigned(aCombo) and (aCombo is TCustomComboBox) then
    begin
      i := TCustomComboBox(aCombo).Items.IndexOf(aText);
      if i > 0 then
      begin
        TCustomComboBox(aCombo).ItemIndex := i;
        if (aCombo is TComboBox) then
          TComboBox(aCombo).Text := aText;
      end;
    end;

  except
    on e: exception do
      self.WriteError('TJanuaVCLController.SetComboSelectedText Error:' + aCombo.Name, e);
  end;

  // FJanuaProfile.role_name := TCustomComboBox(aCombo).Items[TCustomComboBox(Sender).ItemIndex];

end;

function TJanuaVCLController.SetDateEdit(const aObject: TComponent; const aProperty: IJanuaDateEdit;
  var aField: TComponent): boolean;
begin
  Result := False;
  WriteLog('Assegnazione di ' + aObject.Name + ' classe:' + aObject.ClassName);
  if Assigned(aObject) then
    try
      if (aObject is TCustomEdit) then
      begin
        aField := aObject;
        Result := True;
        TCustomEdit(aField).Name := aProperty.Name;
        TCustomEdit(aField).Text := DateToStr(aProperty.DateTime);
        // TCustomEdit(aField).TextHint := aProperty.TextHint;
      end
      else if (aObject is TCommonCalendar) then
      begin
        aField := aObject;
        Result := True;
        TCommonCalendar(aField).Name := aProperty.Name;
        if (aField is TDateTimePicker) then
          TDateTimePicker(aField).Date := aProperty.DateTime;
      end
    except
      on e: exception do
        WriteError('TJanuaVCLController.SetComboSelectedText Error:' + aField.Name, e);
    end
  else
  begin
    Result := False;
    aField := nil;
  end;
end;

function TJanuaVCLController.SetEdit(const aObject: TComponent; const aProperty: IJanuaEdit;
  var aField: TComponent): boolean;
begin
   Result := False;
end;

function TJanuaVCLController.SetEditDate(aEdit: TComponent): TDateTime;
begin
   Result := Now();
end;

procedure TJanuaVCLController.SetEditText(aEdit: TComponent; aText: string);
begin
  if Assigned(aEdit) and (aEdit is TCustomEdit) then
    try
      TCustomEdit(aEdit).Text := aText;
    except
      on e: exception do
        WriteError('TJanuaVCLController.SetEditText Error:' + aEdit.Name, e);
    end;
end;

function TJanuaVCLController.SetLabel(const aObject: TComponent; const aProperty: IJanuaLabel;
  var aField: TComponent): boolean;
begin
  Result := False;
  if Assigned(aObject) and (aObject is TCustomLabel) then
    try
      aField := aObject;
      Result := True;
      TCustomLabel(aObject).Name := aProperty.Name;
      TCustomLabel(aObject).Caption := aProperty.Caption;
    except
      on e: exception do
        WriteError('TJanuaVCLController.SetEditText Error:' + aField.Name, e);
    end
  else
  begin
    Result := False;
    aField := nil;
  end;
end;

{ TJanuaVCLEditProperties }
(*
  procedure TJanuaVCLEditComponent.BindEdit(const aObject: TJanuaCoreComponent; const aProperty: string;
  const aField: TComponent);
  begin
  if Assigned(aObject) and Assigned(aField) then
  begin
  if (aField is TEdit) then
  aObject.Bind(aProperty, aField, 'Text');

  if (aField is TEdit) then
  TEdit(aField).OnChange := self.EditChange;
  end;

  end;

  procedure TJanuaVCLEditComponent.BindEditObject(const aObject: TJanuaBindObject; const aProperty: string;
  const aField: TComponent);
  begin
  inherited;

  end;
*)

function TJanuaVCLEditControl.GetText: string;
begin
  Result := '';
  if Assigned(self.FComponent) and (FComponent is TCustomEdit) then
    try
      Result := TCustomEdit(FComponent).Text;
    except
      on e: exception do
        WriteError('GetEditText ', FComponent.Name, e);
    end;
end;

{ TJanuaVCLButtonProperties }

function TJanuaVCLButtonControl.InternalValidateComponent(aComponent: TComponent): boolean;
begin
  Result := False;
  if Assigned(aComponent) then
    Result := (aComponent is TCustomButton)
  else
    Result := False;
end;

procedure TJanuaVCLButtonControl.SetComponent(const Value: TComponent);
var
  oldName: string;
begin

end;

{ TJanuaVCLSelectProperties }

{ TJanuaVCLComboProperties }
(*
  procedure TJanuaVCLComboComponent.BindComboList(const aObject: TJanuaCoreComponent; const aProperty: string;
  const aField: TComponent);
  begin
  inherited;

  end;

  procedure TJanuaVCLComboComponent.BindComboObjectIndex(const aObject: TJanuaBindObject; const aProperty: string;
  const aField: TComponent);
  begin
  inherited;

  end;

  procedure TJanuaVCLComboComponent.BindComboObjectList(const aObject: TJanuaBindObject; const aProperty: string;
  const aField: TComponent);
  begin
  inherited;

  end;

  procedure TJanuaVCLComboComponent.BindComboObjectText(const aObject: TJanuaBindObject; const aProperty: string;
  const aField: TComponent);
  begin
  inherited;

  end;

  procedure TJanuaVCLComboComponent.BindComboText;
  begin
  if Assigned(self.Component) and (self.Owner is TJanuaCoreComponent) and (TargetField > '') then
  try
  if (Component is TComboBox) then
  (self.Owner as TJanuaCoreComponent).Bind(self.TargetField, Component, 'Text')
  else if (Component is TCustomComboBox) then
  (self.Owner as TJanuaCoreComponent).Bind(TargetField, Component, 'SelText');

  self.WriteLog('BindComboText Impostata proprietà: ' + (Owner as TJanuaCoreComponent).Name + '.' + TargetField +
  ' Componente: ' + Component.Name + '.' + 'Text');

  except
  on e: exception do
  self.WriteError('TJanuaVCLController.BindComboText Error:' + Component.Name, e);
  end;

  end;
*)

function TJanuaVCLComboComponent.InternalValidateComponent(aComponent: TComponent): boolean;
begin
  Result := False;
  try
    if Assigned(aComponent) then
      if (aComponent is TCustomComboBox) then
      begin
        Result := True;
        self.WriteLog('InternalValidateComponent', 'SetComboBox set ' + aComponent.Name);
        {
          if (self.Component is TComboBox) then
          (self.Component as TComboBox).OnChange := self.ComboChange;
        }
      end
      else
      begin
        // nil è valido in quanto imposta a nil il puntatore
        Result := True;
      end;
  except
    on e: exception do
      self.WriteError('SetComboBox', LogString, e);
  end;
end;

function TJanuaVCLComboComponent.SetComboBox: boolean;
begin

end;

procedure TJanuaVCLComboComponent.SetComboEvents(var aField: TComponent);
begin
  inherited;

end;

function TJanuaVCLComboComponent.SetComboList(aCombo: TComponent; aList: TStrings): string;
begin

end;

procedure TJanuaVCLComboComponent.SetComboSelectedText(aCombo: TComponent; aText: string);
begin
  inherited;

end;

{ TJanuaReadOnly }

function TJanuaReadOnly.SetReadOnlyInternal: boolean;
var
  i, j: Integer;
  temp, temp2: TComponent;
begin
  Result := True;
  for i := 0 to (Owner as TForm).ComponentCount - 1 do
  begin
    temp := (Owner as TForm).Components[i];
    if temp is tdbedit then
      (temp as tdbedit).ReadOnly := True
{$IFNDEF VER330}
    else if temp is tjvdbcomboedit then
      (temp as tjvdbcomboedit).ReadOnly := True
    else if temp is Tenhcrdbgrid then
      (temp as Tenhcrdbgrid).ReadOnly := True
{$ENDIF}
    else if temp is TFRame then
      for j := 0 to (temp as TFRame).ComponentCount - 1 do
      begin
        temp2 := (temp as TFRame).Components[j];
        if temp2 is tdbedit then
          (temp2 as tdbedit).ReadOnly := True
{$IFNDEF VER330}
        else if temp2 is tjvdbcomboedit then
          (temp2 as tjvdbcomboedit).ReadOnly := True
        else if temp2 is Tenhcrdbgrid then
          (temp2 as Tenhcrdbgrid).ReadOnly := True
{$ENDIF}
      end;
  end;
end;

{ TJanuaCustomEditController }

function TJanuaVCLEditControl.InternalValidateComponent(aComponent: TComponent): boolean;
begin
  Result := False;
  if Assigned(aComponent) then
    Result := (aComponent is TControl) and Janua.VCL.Functions.CheckEdit(aComponent as TControl)
  else
    Result := True;
end;

procedure TJanuaVCLEditControl.SetText(aValue: string);
begin
  inherited;
  if Assigned(FComponent) then
  begin
    if self.FComponent is TCustomEdit then
      (self.FComponent as TCustomEdit).Text := aValue;
  end;
end;

{ TJanuaVCLTestControllers }

constructor TJanuaVCLTestControllers.Create(aOwner: TComponent);
begin
  inherited;
  {
    self.FInput1 := TJanuaVCLEditControl.Create;
    self.FInput2 := TJanuaVCLEditControl.Create;
    self.FInput3 := TJanuaVCLEditControl.Create;
    self.FInput4 := TJanuaVCLEditControl.Create;
    self.FLogOutput := TJanuaVCLEditControl.Create;
    self.FJsonOutput := TJanuaVCLEditControl.Create;
  }
end;

destructor TJanuaVCLTestControllers.Destroy;
begin
  {
    self.FInput1.Free;
    self.FInput2.Free;
    self.FInput3.Free;
    self.FInput4.Free;
    self.FLogOutput.Free;
  }
  inherited;
end;

{
  function TJanuaVCLTestControllers.getInput1: TJanuaVCLEditControl;
  begin
  if Assigned(self.FInput1) then
  Result := (self.FInput1 as TJanuaVCLEditControl)
  else
  Result := nil;
  end;

  function TJanuaVCLTestControllers.getInput2: TJanuaVCLEditControl;
  begin
  if Assigned(self.FInput2) then
  Result := (self.FInput2 as TJanuaVCLEditControl)
  else
  Result := nil;
  end;

  function TJanuaVCLTestControllers.getInput3: TJanuaVCLEditControl;
  begin
  if Assigned(self.FInput3) then
  Result := (self.FInput3 as TJanuaVCLEditControl)
  else
  Result := nil;
  end;

  function TJanuaVCLTestControllers.getInput4: TJanuaVCLEditControl;
  begin
  if Assigned(self.FInput4) then
  Result := (self.FInput4 as TJanuaVCLEditControl)
  else
  Result := nil;
  end;


  function TJanuaVCLTestControllers.getJsonOutput: TJanuaVCLEditControl;
  begin
  if Assigned(self.FJsonOutput) then
  Result := self.FJsonOutput as TJanuaVCLEditControl
  else
  Result := nil;
  end;

  function TJanuaVCLTestControllers.getLogOutput: TJanuaVCLEditControl;
  begin
  if Assigned(self.FLogOutput) then
  Result := (self.FLogOutput as TJanuaVCLEditControl)
  else
  Result := nil;
  end;

  procedure TJanuaVCLTestControllers.SetInput1(const Value: TJanuaVCLEditControl);
  begin
  FInput1 := Value;
  end;

  procedure TJanuaVCLTestControllers.SetInput2(const Value: TJanuaVCLEditControl);
  begin
  FInput2 := Value;
  end;

  procedure TJanuaVCLTestControllers.SetInput3(const Value: TJanuaVCLEditControl);
  begin
  FInput3 := Value;
  end;

  procedure TJanuaVCLTestControllers.SetInput4(const Value: TJanuaVCLEditControl);
  begin
  FInput4 := Value;
  end;

  procedure TJanuaVCLTestControllers.SetLogOutput(const Value: TJanuaVCLEditControl);
  begin
  FLogOutput := Value;
  end;
}

{ TJanuaVCLSelectControl }

procedure TJanuaVCLSelectControl.SetCaption(Value: string);
begin
  if (self.FComponent is TRadioGroup) then
    TRadioGroup(FComponent).Caption := Value;
end;

procedure TJanuaVCLSelectControl.SetSelected(Value: Integer);
begin

end;

{ TJanuaVCLDateEditComponent }

function TJanuaVCLDateEditComponent.InternalValidateComponent(aComponent: TComponent): boolean;
begin
  Result := False;
  if Assigned(aComponent) then
    Result := (aComponent is TDateTimePicker)
  else
    Result := True;
end;

{ TJanuaVCLSelectProperties }

function TJanuaVCLSelectProperties.InternalValidateComponent(aComponent: TComponent): boolean;
begin
  Result := False;
  if Assigned(aComponent) then
    Result := (aComponent is TGroupBox)
  else
    Result := True;
end;

end.

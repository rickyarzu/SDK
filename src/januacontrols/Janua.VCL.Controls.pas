unit Janua.VCL.Controls;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.CustomControls, VCL.StdCtrls, VCL.Controls,
  VCL.ExtCtrls, Janua.Core.Functions, Janua.Core.System, Janua.Core.Classes, Janua.Core.Users,
  VCL.ComCtrls, VCL.Forms, VCL.DBCtrls, JvDBControls, DBAdvOfficeButtons, Janua.VCL.EnhDBGrid,
  Janua.VCL.EnhCRDBGrid;

type
  TJanuaVCLEditProperties = class(TJanuaEditProperties)
  private
    function SetEdit(const aObject: TComponent; const aProperty: TJanuaEditProperties;
      var aField: TComponent): boolean;
  public
    // ******************** Edit Boxes **************************************************************
    procedure BindEdit(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;
    procedure BindEditObject(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); override;
    procedure SetComponent(const Value: TComponent); override;
    function GetEditText(aEdit: TComponent): string; override;
    procedure SetEditText(aEdit: TComponent; aText: string); override;
  end;

type
  TJanuaVCLDateEditProperties = class(TJanuaDateEditProperties)

  end;

type
  TJanuaVCLLabelProperties = class(TJanuaProperties)

  end;

type
  TJanuaVCLSelectProperties = class(TJanuaSelectProperties)
  private

  end;

type
  TJanuaVCLComboProperties = class(TJanuaComboProperties)
  private
  protected
    // *********************Comb Boxes **************************************************************
    function SetComboBox: boolean; override;

    procedure BindComboText; override;
    procedure BindComboList(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;

    procedure SetComboEvents(var aField: TComponent); override;
    procedure SetComboSelectedText(aCombo: TComponent; aText: string); override;
    function SetComboList(aCombo: TComponent; aList: TStrings): string; override;

    procedure BindComboObjectText(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); override;
    procedure BindComboObjectList(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); override;
    procedure BindComboObjectIndex(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); override;
  end;

type
  TJanuaVCLButtonProperties = class(TJanuaButtonProperties)
  protected
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
    function SetComboBox(const aObject: TComponent; const aProperty: TJanuaComboProperties;
      var aField: TComponent; aStringList: TStrings): boolean; override;

    procedure BindComboText(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;
    procedure BindComboList(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;

    procedure SetComboEvents(var aField: TComponent); override;
    procedure SetComboSelectedText(aCombo: TComponent; aText: string); override;
    function SetComboList(aCombo: TComponent; aList: TStrings): string; override;

    procedure BindComboObjectText(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); override;
    procedure BindComboObjectList(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); override;
    procedure BindComboObjectIndex(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); override;

    // ****************** Buttons & Labels ********************************************************

    procedure SetButton(const aObject: TComponent; const aProperty: TJanuaButtonProperties;
      var aField: TComponent); override;
    function SetLabel(const aObject: TComponent; const aProperty: TJanuaLabelProperties;
      var aField: TComponent): boolean; override;
    procedure bindLabelObject(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); override;

    // ******************** Edit Date **************************************************************

    function SetDateEdit(const aObject: TComponent; const aProperty: TJanuaDateEditProperties;
      var aField: TComponent): boolean; override;

    procedure BindDateEdit(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;

    procedure BindDateEditObject(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); override;

    // ******************** Edit Boxes **************************************************************
    procedure BindEdit(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;
    procedure BindEditObject(const aObject: TJanuaCoreObject; const aProperty: string;
      const aField: TComponent); override;
    function SetEdit(const aObject: TComponent; const aProperty: TJanuaEditProperties;
      var aField: TComponent): boolean; override;

    // ********************* bind Select ************************************************************
    { Nel caso della Select gli Items vanno collegati, la selezione avviene poi con ItemIndex }

    function SetSelect(const aObject: TComponent; const aProperty: TJanuaSelectProperties;
      var aField: TComponent; aList: TStrings): boolean; override;

    procedure BindSelectIndex(const aObject: TObject; const aProperty: string;
      const aField: TComponent); override;
    procedure BindSelectList(const aObject: TJanuaCoreComponent; const aProperty: string;
      const aField: TComponent); override;

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

{ TJanuaVCLController }

procedure TJanuaVCLController.BindComboList(const aObject: TJanuaCoreComponent;
  const aProperty: string; const aField: TComponent);
begin
  inherited;
  if Assigned(aObject) and Assigned(aField) and (aObject is TJanuaCoreComponent) then
  begin
    if (aField is TCustomComboBox) then
      aObject.Bind(aProperty, aField, 'Items');
    self.WriteLog('BindComboList Impostata proprietà: ' + (aObject as TJanuaCoreComponent).Name +
      '.' + aProperty + ' Componente: ' + aField.Name + '.' + 'Items');
  end;
end;

procedure TJanuaVCLController.BindComboObjectIndex(const aObject: TJanuaCoreObject;
  const aProperty: string; const aField: TComponent);
begin
  if Assigned(aObject) and Assigned(aField) then
    try

      if (aField is TCustomComboBox) then
        aObject.Bind(aProperty, aField, 'ItemIndex');

      self.WriteLog('BindComboObjectText Impostata proprietà: ' + aObject.ClassName + '.' +
        aProperty + ' Componente: ' + aField.Name + '.' + 'ItemIndex=' + (aField as TCustomComboBox)
        .ItemIndex.ToString);

    except
      on e: exception do
        self.WriteError('TJanuaVCLController.BindComboObjectTex Error:' + aField.Name, e);
    end;

end;

procedure TJanuaVCLController.BindComboObjectList(const aObject: TJanuaCoreObject;
  const aProperty: string; const aField: TComponent);
begin
  inherited;
  if Assigned(aObject) and Assigned(aField) then
  begin
    if (aField is TCustomComboBox) then
      aObject.Bind(aProperty, aField, 'Items');
    self.WriteLog('BindComboObjectList Impostata proprietà: ' + aObject.ClassName + '.' + aProperty
      + ' Componente: ' + aField.Name + '.' + 'Items');
  end;
end;

procedure TJanuaVCLController.BindComboObjectText(const aObject: TJanuaCoreObject;
  const aProperty: string; const aField: TComponent);
begin
  if Assigned(aObject) and Assigned(aField) then
    try
      if (aField is TComboBox) then
        aObject.Bind(aProperty, aField, 'Text')
      else if (aField is TCustomComboBox) then
        aObject.Bind(aProperty, aField, 'SelText');

      self.WriteLog('BindComboObjectText Impostata proprietà: ' + aObject.ClassName + '.' +
        aProperty + ' Componente: ' + aField.Name + '.' + 'SelText');
    except
      on e: exception do
        self.WriteError('TJanuaVCLController.BindComboObjectTex Error:' + aField.Name, e);
    end;
end;

procedure TJanuaVCLController.BindComboText(const aObject: TJanuaCoreComponent;
  const aProperty: string; const aField: TComponent);
begin
  if Assigned(aField) and (aObject is TJanuaCoreComponent) then
    try
      if (aField is TComboBox) then
        aObject.Bind(aProperty, aField, 'Text')
      else if (aField is TCustomComboBox) then
        aObject.Bind(aProperty, aField, 'SelText');

      self.WriteLog('BindComboText Impostata proprietà: ' + (aObject as TJanuaCoreComponent).Name +
        '.' + aProperty + ' Componente: ' + aField.Name + '.' + 'Text');

    except
      on e: exception do
        self.WriteError('TJanuaVCLController.BindComboText Error:' + aField.Name, e);
    end;
end;

procedure TJanuaVCLController.BindDateEdit(const aObject: TJanuaCoreComponent;
  const aProperty: string; const aField: TComponent);
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

procedure TJanuaVCLController.BindDateEditObject(const aObject: TJanuaCoreObject;
  const aProperty: string; const aField: TComponent);
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

procedure TJanuaVCLController.BindEditObject(const aObject: TJanuaCoreObject;
  const aProperty: string; const aField: TComponent);
begin
  if Assigned(aObject) and Assigned(aField) then
  begin
    if (aField is TCustomEdit) then
      aObject.Bind(aProperty, aField, 'Text');
    if (aField is TEdit) then
      TEdit(aField).OnChange := self.EditChange;
  end;

end;

procedure TJanuaVCLController.bindLabelObject(const aObject: TJanuaCoreObject;
  const aProperty: string; const aField: TComponent);
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
          self.WriteError('TJanuaVCLController.BindSelectIndex Error:' + aField.Name +
            '.ItemIndex', e);
      end;

  end;
end;

procedure TJanuaVCLController.BindSelectList(const aObject: TJanuaCoreComponent;
  const aProperty: string; const aField: TComponent);
begin
  inherited;
  if Assigned(aObject) and Assigned(aField) then
  begin
    if (aField is TRadioGroup) then
      try
        self.WriteLog('BindComboList Impostata proprietà: ' + aObject.Name + '.' + aProperty +
          ' Componente: ' + aField.Name + '.' + 'Items');
        aObject.Bind(aProperty, aField, 'Items');
      except
        on e: exception do
          self.WriteError('TJanuaVCLController.BindSelectList Error:' + aField.Name +
            '.ItemIndex', e);
      end;

  end;
end;

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
  if Assigned(aEdit) and (aEdit is TCustomEdit) then
    try
      Result := TCustomEdit(aEdit).Text;
    except
      on e: exception do
        self.WriteError('TJanuaVCLController.GetEditText Error:' + aEdit.Name, e);
    end;
end;

procedure TJanuaVCLController.SetButton(const aObject: TComponent;
  const aProperty: TJanuaButtonProperties; var aField: TComponent);
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

function TJanuaVCLController.SetComboBox(const aObject: TComponent;
  const aProperty: TJanuaComboProperties; var aField: TComponent; aStringList: TStrings): boolean;
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

      if (aField is TComboBox) then
        (aField as TComboBox).OnChange := self.ComboChange;

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
  i: integer;
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

function TJanuaVCLController.SetDateEdit(const aObject: TComponent;
  const aProperty: TJanuaDateEditProperties; var aField: TComponent): boolean;
begin
  Result := False;
  self.WriteLog('Assegnazione di ' + aObject.Name + ' classe:' + aObject.ClassName);
  if Assigned(aObject) then
    try
      if (aObject is TCustomEdit) then
      begin
        aField := aObject;
        Result := True;
        TCustomEdit(aField).Name := aProperty.Name;
        TCustomEdit(aField).Text := DateToStr(aProperty.Date);
        TCustomEdit(aField).TextHint := aProperty.TextHint;
      end
      else if (aObject is TCommonCalendar) then
      begin
        aField := aObject;
        Result := True;
        TCommonCalendar(aField).Name := aProperty.Name;
        if (aField is TDateTimePicker) then
          TDateTimePicker(aField).Date := aProperty.Date;
      end
    except
      on e: exception do
        self.WriteError('TJanuaVCLController.SetComboSelectedText Error:' + aField.Name, e);
    end
  else
  begin
    Result := False;
    aField := nil;
  end;
end;

function TJanuaVCLController.SetEdit(const aObject: TComponent;
  const aProperty: TJanuaEditProperties; var aField: TComponent): boolean;
begin

end;

function TJanuaVCLController.SetEditDate(aEdit: TComponent): TDateTime;
begin

end;

procedure TJanuaVCLController.SetEditText(aEdit: TComponent; aText: string);
begin
  if Assigned(aEdit) and (aEdit is TCustomEdit) then
    try
      TCustomEdit(aEdit).Text := aText;
    except
      on e: exception do
        self.WriteError('TJanuaVCLController.SetEditText Error:' + aEdit.Name, e);
    end;
end;

function TJanuaVCLController.SetLabel(const aObject: TComponent;
  const aProperty: TJanuaLabelProperties; var aField: TComponent): boolean;
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
        self.WriteError('TJanuaVCLController.SetEditText Error:' + aField.Name, e);
    end
  else
  begin
    Result := False;
    aField := nil;
  end;
end;

function TJanuaVCLController.SetSelect(const aObject: TComponent;
  const aProperty: TJanuaSelectProperties; var aField: TComponent; aList: TStrings): boolean;
begin
  Result := False;
  if Assigned(aObject) and (aObject is TCustomRadioGroup) then
    try
      Result := True;
      aField := aObject;
      TCustomRadioGroup(aField).Name := aProperty.Name;
      if (aField is TRadioGroup) then
        TRadioGroup(aField).Caption := aProperty.Caption;
      if Assigned(aList) then
        TRadioGroup(aField).Items.Assign(aList);
    except
      on e: exception do
        self.WriteError('TJanuaVCLController.SetSelect Error:' + aField.Name, e);
    end
  else
  begin
    aField := nil;
    Result := False;
  end;
end;

{ TJanuaVCLEditProperties }

procedure TJanuaVCLEditProperties.BindEdit(const aObject: TJanuaCoreComponent;
  const aProperty: string; const aField: TComponent);
begin
  if Assigned(aObject) and Assigned(aField) then
  begin
    if (aField is TEdit) then
      aObject.Bind(aProperty, aField, 'Text');

    if (aField is TEdit) then
      TEdit(aField).OnChange := self.EditChange;
  end;

end;

procedure TJanuaVCLEditProperties.BindEditObject(const aObject: TJanuaCoreObject;
  const aProperty: string; const aField: TComponent);
begin
  inherited;

end;

function TJanuaVCLEditProperties.GetEditText(aEdit: TComponent): string;
begin
  if Assigned(aEdit) and (aEdit is TCustomEdit) then
    try
      Result := TCustomEdit(aEdit).Text;
    except
      on e: exception do
        WriteError('TJanuaVCLController.GetEditText Error:' + aEdit.Name, e);
    end;
end;

procedure TJanuaVCLEditProperties.SetComponent(const Value: TComponent);
begin
  if (self.Owner is TJanuaCoreComponent) then
    TJanuaCoreComponent(self.Owner).WriteLog('Assegnazione di ' + Value.Name + ' classe:' +
      Value.ClassName);

  if Assigned(Value) and (Value is TCustomEdit) then
    try
      FComponent := Value;
      if self.Name > '' then
        TCustomEdit(FComponent).Name := self.Name;
      if self.Text > '' then
        TCustomEdit(FComponent).Text := self.Text;
      if self.Text > '' then
        TCustomEdit(FComponent).TextHint := self.TextHint;

      if (FComponent is TEdit) then
      begin
        if (self.PasswordChar > '') then
          TEdit(FComponent).PasswordChar := self.PasswordChar[1];
        TEdit(FComponent).OnChange := self.EditChange;
      end;

      self.BindTarget;

    except
      on e: exception do
        WriteError('TJanuaVCLEditProperties.SetComboSelectedText Error:' + FComponent.Name, e);
    end
  else
  begin
    FComponent := nil;
  end;
end;

function TJanuaVCLEditProperties.SetEdit(const aObject: TComponent;
  const aProperty: TJanuaEditProperties; var aField: TComponent): boolean;
begin

end;

procedure TJanuaVCLEditProperties.SetEditText(aEdit: TComponent; aText: string);
begin
  if Assigned(aEdit) and (aEdit is TCustomEdit) then
    try
      TCustomEdit(aEdit).Text := aText;
    except
      on e: exception do
        self.WriteError('TJanuaVCLController.SetEditText Error:' + aEdit.Name, e);
    end;

end;

{ TJanuaVCLButtonProperties }

procedure TJanuaVCLButtonProperties.SetComponent(const Value: TComponent);
var
  oldName: string;
begin
  self.FComponent := Value;
  if Assigned(FComponent) and (FComponent is TCustomButton) then
  begin
    try
      oldName := TCustomButton(FComponent).Name;
      TCustomButton(FComponent).Name := self.Name;
    except
      TCustomButton(FComponent).Name := oldName;
    end;

    if (FComponent is TButton) then
    begin
      TButton(FComponent).Caption := self.Caption;
      TButton(FComponent).OnClick := self.ButtonClick;
    end;
  end;

end;

{ TJanuaVCLSelectProperties }

{ TJanuaVCLComboProperties }

procedure TJanuaVCLComboProperties.BindComboList(const aObject: TJanuaCoreComponent;
  const aProperty: string; const aField: TComponent);
begin
  inherited;

end;

procedure TJanuaVCLComboProperties.BindComboObjectIndex(const aObject: TJanuaCoreObject;
  const aProperty: string; const aField: TComponent);
begin
  inherited;

end;

procedure TJanuaVCLComboProperties.BindComboObjectList(const aObject: TJanuaCoreObject;
  const aProperty: string; const aField: TComponent);
begin
  inherited;

end;

procedure TJanuaVCLComboProperties.BindComboObjectText(const aObject: TJanuaCoreObject;
  const aProperty: string; const aField: TComponent);
begin
  inherited;

end;

procedure TJanuaVCLComboProperties.BindComboText;
begin
  if Assigned(self.Component) and (self.Owner is TJanuaCoreComponent) and (TargetField > '') then
    try
      if (Component is TComboBox) then
        (self.Owner as TJanuaCoreComponent).Bind(self.TargetField, Component, 'Text')
      else if (Component is TCustomComboBox) then
        (self.Owner as TJanuaCoreComponent).Bind(TargetField, Component, 'SelText');

      self.WriteLog('BindComboText Impostata proprietà: ' + (Owner as TJanuaCoreComponent).Name +
        '.' + TargetField + ' Componente: ' + Component.Name + '.' + 'Text');

    except
      on e: exception do
        self.WriteError('TJanuaVCLController.BindComboText Error:' + Component.Name, e);
    end;

end;

function TJanuaVCLComboProperties.SetComboBox: boolean;
var
  oldName: string;
begin
  Result := False;
  try
    if Assigned(self.Component) and (self.Component is TCustomComboBox) then
    begin
      Result := True;
      self.WriteLog('TJanuaVCLController.SetComboBox set ' + self.Component.Name + '.Caption = ' +
        self.Caption);
      try
        oldName := TCustomComboBox(self.Component).Name;
        TCustomComboBox(self.Component).Name := self.ComponentName;
      except
        TCustomComboBox(self.Component).Name := oldName;
      end;

      if (self.Component is TComboBox) then
        (self.Component as TComboBox).OnChange := self.ComboChange;

    end
    else if not Assigned(self.Component) then
    begin
      self.Component := nil;
      Result := False;
    end;
  except
    on e: exception do
      self.WriteError('TJanuaVCLController.SetComboBox Error:', e);
  end;

end;

procedure TJanuaVCLComboProperties.SetComboEvents(var aField: TComponent);
begin
  inherited;

end;

function TJanuaVCLComboProperties.SetComboList(aCombo: TComponent; aList: TStrings): string;
begin

end;

procedure TJanuaVCLComboProperties.SetComboSelectedText(aCombo: TComponent; aText: string);
begin
  inherited;

end;

{ TJanuaReadOnly }

function TJanuaReadOnly.SetReadOnlyInternal: boolean;
var
  i, j: integer;
  temp, temp2: TComponent;
begin
  Result := True;
  for i := 0 to (Owner as TForm).ComponentCount - 1 do
  begin
    temp := (Owner as TForm).Components[i];
    if temp is tdbedit then
      (temp as tdbedit).ReadOnly := True
    else if temp is tjvdbcomboedit then
      (temp as tjvdbcomboedit).ReadOnly := True
    else if temp is TDBAdvOfficeRadioGroup then
      (temp as TDBAdvOfficeRadioGroup).ReadOnly := True
    else if temp is Tenhcrdbgrid then
      (temp as Tenhcrdbgrid).ReadOnly := True
    else if temp is TFRame then
      for j := 0 to (temp as TFRame).ComponentCount - 1 do
      begin
        temp2 := (temp as TFRame).Components[j];
        if temp2 is tdbedit then
          (temp2 as tdbedit).ReadOnly := True
        else if temp2 is tjvdbcomboedit then
          (temp2 as tjvdbcomboedit).ReadOnly := True
        else if temp2 is Tenhcrdbgrid then
          (temp2 as Tenhcrdbgrid).ReadOnly := True
        else if temp2 is TDBAdvOfficeRadioGroup then
          (temp2 as TDBAdvOfficeRadioGroup).ReadOnly := True
      end;
  end;
end;

end.

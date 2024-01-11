unit Janua.Controls.Impl;

{$I januacore.inc}

interface

uses Janua.Controls.Intf, Janua.Core.Export.Intf, Janua.Core.Classes, System.Classes, Spring.Collections;

type
  TJanuaCustomControl = class(TJanuaInterfacedBindableComponent) { IJanuaControl }
  protected
    function InternalValidateComponent(aComponent: TComponent): boolean; virtual; Abstract;
    function GetName: string;
    procedure SetName(const Value: string);
    function GetHint: string; Virtual; Abstract;
    procedure SetHint(const Value: string); Virtual; Abstract;
    function GetComponent: TComponent; Virtual;
    procedure SetComponent(const Value: TComponent); Virtual;
{$IFDEF delphixe}
    function GetChildControls: IList<IJanuaControl>;
    procedure setChildControls(const Value: IList<IJanuaControl>);
{$ENDIF delphixe}
{$IFDEF fpc}
    function GetChildControls: TList<IJanuaControl>;
    procedure setChildControls(const Value: TList<IJanuaControl>);
{$ENDIF fpc}
    function GetControls(const aIndex: integer): IJanuaControl;
    property Controls[const aIndex: integer]: IJanuaControl read GetControls;
  public
    constructor Create(aComponent: TComponent); overload; virtual;
    constructor Create; override;
  end;

type
  TJanuaRSControl = class(TJanuaCustomControl) { IJanuaControl }

  end;

type
  TJanuaRSWinControl = class(TJanuaRSControl) { IJanuaRSWinControl }

  end;

Type
  TJanuaControlBuilder = class(TInterfacedObject, IJanuaControlBuilder)
  private
    FJanuaControlFactory: IJanuaFrameworkFactory;
  strict protected
    function SetEditControl(aJanuaEdit: IJanuaEdit; const aComponent: TComponent; aName: string = '';
      aTextHint: string = ''; aCaption: string = ''): IJanuaEdit;
    function SetComboControl(aJanuaCombo: IJanuaCombo; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaCombo;
    function SetLabelControl(aJanuaLabel: IJanuaLabel; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaLabel;
    function SetDateControl(aJanuaDate: IJanuaDateEdit; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaDateEdit;
    // GroupBox
    function SetGroupBoxControl(const aJanuaGroupBox: IJanuaGroupBox; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaGroupBox;
    // IJanuaButton
    function SetButtonControl(const aJanuaGroupBox: IJanuaButton; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaButton;
    // IJanuaIntegerEdit
    function SetIntegerEdit(const aJanuaGroupBox: IJanuaIntegerEdit; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaIntegerEdit;
    // IJanuaSelect
    function SetSelectControl(const aJanuaSelect: IJanuaSelect; const aComponent: TComponent; aName: string = '';
      aCaption: string = ''): IJanuaSelect;
  public
    Constructor Create(const aFactory: IJanuaFrameworkFactory); overload;
  end;

implementation

uses Spring, System.SysUtils, Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaCustomController }

constructor TJanuaControlBuilder.Create(const aFactory: IJanuaFrameworkFactory);
begin
  self.Create; // important! calls the original Create Method
  Spring.Guard.CheckNotNull(aFactory, 'TJanuaControlBuilder.Crete aFactory is nil');
  self.FJanuaControlFactory := aFactory;
end;

function TJanuaControlBuilder.SetButtonControl(const aJanuaGroupBox: IJanuaButton; const aComponent: TComponent;
  aName, aCaption: string): IJanuaButton;
begin
  Result := aJanuaGroupBox;
  try
    if assigned(aComponent) and ((Result = nil) or (Result.Component <> aComponent)) then
    begin
      Result := FJanuaControlFactory.CreateButton(aComponent);
      Result.Caption := aCaption;
      Result.Name := aName;
    end
    else if not assigned(aComponent) then
      Result := nil;
  except
    on e: Exception do
      RaiseException('SetComboControl', e, self);
  end;
end;

function TJanuaControlBuilder.SetComboControl(aJanuaCombo: IJanuaCombo; const aComponent: TComponent;
  aName, aCaption: string): IJanuaCombo;
begin
  Result := aJanuaCombo;
  try
    if assigned(aComponent) and ((Result = nil) or (Result.Component <> aComponent)) then
    begin
      Result := FJanuaControlFactory.CreateCombo(aComponent);
      Result.Caption := aCaption;
      Result.Name := aName;
    end
    else if not assigned(aComponent) then
      Result := nil;
  except
    on e: Exception do
      RaiseException('SetComboControl', e, self);
  end;
end;

function TJanuaControlBuilder.SetDateControl(aJanuaDate: IJanuaDateEdit; const aComponent: TComponent;
  aName: string = ''; aCaption: string = ''): IJanuaDateEdit;
begin
  Result := aJanuaDate;
  try
    if assigned(aComponent) and ((Result = nil) or (Result.Component <> aComponent)) then
    begin
      Result := FJanuaControlFactory.CreateDateEdit(aComponent);
      if aCaption <> '' then
        Result.Caption := aCaption;
      Result.Name := aName;
    end
    else if not assigned(aComponent) then
      Result := nil;
  except
    on e: Exception do
      RaiseException('SetDateControl', e, self);
  end;
end;

function TJanuaControlBuilder.SetEditControl(aJanuaEdit: IJanuaEdit; const aComponent: TComponent; aName: string = '';
  aTextHint: string = ''; aCaption: string = ''): IJanuaEdit;
begin
  Result := aJanuaEdit;
  try
    if assigned(aComponent) and ((Result = nil) or (Result.Component <> aComponent)) then
    begin
      Result := FJanuaControlFactory.CreateEdit(aComponent);
      if aCaption <> '' then
        Result.Caption := aCaption;
      Result.Name := aName;
    end
    else if not assigned(aComponent) then
      Result := nil;
  except
    on e: Exception do
      RaiseException('SetEditControl', e, self);
  end;
end;

function TJanuaControlBuilder.SetGroupBoxControl(const aJanuaGroupBox: IJanuaGroupBox; const aComponent: TComponent;
  aName, aCaption: string): IJanuaGroupBox;
begin
  Result := aJanuaGroupBox;
  try
    if assigned(aComponent) and ((Result = nil) or (Result.Component <> aComponent)) then
    begin
      Result := FJanuaControlFactory.CreateGroupBox(aComponent);
      if aCaption <> '' then
        Result.Caption := aCaption;
      Result.Name := aName;
    end
    else if not assigned(aComponent) then
      Result := nil;
  except
    on e: Exception do
      RaiseException('SetEditControl', e, self);
  end;
end;

function TJanuaControlBuilder.SetIntegerEdit(const aJanuaGroupBox: IJanuaIntegerEdit; const aComponent: TComponent;
  aName, aCaption: string): IJanuaIntegerEdit;
begin

end;

function TJanuaControlBuilder.SetLabelControl(aJanuaLabel: IJanuaLabel; const aComponent: TComponent;
  aName, aCaption: string): IJanuaLabel;
begin

end;

function TJanuaControlBuilder.SetSelectControl(const aJanuaSelect: IJanuaSelect; const aComponent: TComponent;
  aName, aCaption: string): IJanuaSelect;
begin

end;

{ TJanuaCustomControl }

constructor TJanuaCustomControl.Create(aComponent: TComponent);
begin
  Guard.CheckNotNull(aComponent, 'aComponent is nil');
  Guard.CheckTrue(InternalValidateComponent(aComponent), 'aComponent is not valid ' + aComponent.ClassName);
  self.Create;
  self.SetComponent(aComponent);
end;

constructor TJanuaCustomControl.Create;
begin
  inherited Create;

end;

function TJanuaCustomControl.GetChildControls: IList<IJanuaControl>;
begin

end;

function TJanuaCustomControl.GetComponent: TComponent;
begin
  Result := self.FComponent
end;

function TJanuaCustomControl.GetControls(const aIndex: integer): IJanuaControl;
begin

end;

function TJanuaCustomControl.GetName: string;
begin
  if assigned(self.FComponent) then
    Result := self.FComponent.Name;
end;

procedure TJanuaCustomControl.setChildControls(const Value: IList<IJanuaControl>);
begin

end;

procedure TJanuaCustomControl.SetComponent(const Value: TComponent);
begin
  Guard.CheckTrue(InternalValidateComponent(Value), 'aComponent is not valid ' + Value.ClassName);
  self.FComponent := Value;
end;

procedure TJanuaCustomControl.SetName(const Value: string);
begin
  if assigned(self.FComponent) then
    self.FComponent.Name := Value;
end;

end.

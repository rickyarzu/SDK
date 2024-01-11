unit Janua.FMX.Controls;

interface

uses
  System.SysUtils, System.Classes, FMX.StdCtrls, FMX.Controls, FMX.ListBox, FMX.Edit,
  Janua.Core.CustomControls, Janua.Core.Functions, Janua.Core.System, Janua.Core.Classes,
  Janua.Core.Users;

type
  TJanuaFMXController = class(TJanuaCustomController)
  private
  protected
  public
    function SetComboBox(const aObject: TComponent; const aProperty: TJanuaComboProperties;
      var aField: TComponent; aStringList: TStrings): boolean; override;
    procedure SetComboEvents(var aField: TComponent); override;
    procedure SetButton(const aObject: TComponent; const aProperty: TJanuaButtonProperties;
      var aField: TComponent); override;
    function SetLabel(const aObject: TComponent; const aProperty: TJanuaLabelProperties;
      var aField: TComponent): boolean; override;
    function SetEdit(const aObject: TComponent; const aProperty: TJanuaEditProperties;
      var aField: TComponent): boolean; override;
    function GetEditText(aEdit: TComponent): string; override;
    function GetComboSelectedText(aCombo: TComponent): string; override;
  published
  end;

implementation


function TJanuaFMXController.GetComboSelectedText(aCombo: TComponent): string;
begin
  Result := TCustomComboBox(aCombo).Items[TCustomComboBox(aCombo).ItemIndex];
end;

function TJanuaFMXController.GetEditText(aEdit: TComponent): string;
begin
  if assigned(aEdit) and (aEdit is TCustomEdit) then
    Result := TCustomEdit(aEdit).Text;
end;

procedure TJanuaFMXController.SetButton(const aObject: TComponent;
  const aProperty: TJanuaButtonProperties; var aField: TComponent);
begin
  if (aObject is TCustomButton) then
  begin
    TCustomButton(aObject).Name := aProperty.Name;
    if (aObject is TButton) then
      TButton(aObject).Text := aProperty.Caption;
    aField := aObject;
  end;
end;

function TJanuaFMXController.SetComboBox(const aObject: TComponent;
  const aProperty: TJanuaComboProperties; var aField: TComponent; aStringList: TStrings): boolean;
begin
  inherited;
  if (aObject is TCustomComboBox) then
  begin
    aField := aObject;
    TComboBox(aField).Name := aProperty.Name;
    // TComboBox(Value).Text := cCaption;
    if assigned(aStringList) then
      TComboBox(aField).Items.Assign(aStringList);
    { TODO -oRiccardo  -cSistema : Impostare la ricerca dei ruoli }
  end;
end;

procedure TJanuaFMXController.SetComboEvents(var aField: TComponent);
begin
  inherited;

end;

function TJanuaFMXController.SetEdit(const aObject: TComponent;
  const aProperty: TJanuaEditProperties; var aField: TComponent): boolean;
begin
  if (aObject is TCustomEdit) then
  begin
    aField := aObject;
    TCustomEdit(aObject).Name := aProperty.Name;
    TCustomEdit(aObject).TextPrompt := aProperty.TextHint;
    if aProperty.PasswordChar <> '' then
      TCustomEdit(aObject).Password := True
    else
      TCustomEdit(aObject).Password := False;
  end;
end;

function TJanuaFMXController.SetLabel(const aObject: TComponent;
  const aProperty: TJanuaLabelProperties; var aField: TComponent): boolean;
begin
  if (aObject is TLabel) then
  begin
    aField := aObject;
    TLabel(aObject).Name := aProperty.Name;
    TLabel(aObject).Text := aProperty.Caption;
  end;
end;

end.

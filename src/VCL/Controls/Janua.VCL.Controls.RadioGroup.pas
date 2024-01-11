unit Janua.VCL.Controls.RadioGroup;

interface

uses
  /// RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Janua
  Janua.Controls.Select.Intf, Janua.Bindings.Intf, Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf,
  uJanuaVCLFrame, Janua.VCL.Controls.FrameSelectModel, Janua.Orm.Intf,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls;

type
  TframSelectRadioGroup = class(TframSelectModel, IJanuaContainer, IJanuaBindable, IJanuaSelect)
    rgSelect: TRadioGroup;
    procedure rgSelectClick(Sender: TObject);
  private
    FKeys: TStrings;
    FRadioContainer: IJanuaSearchRadioContainer;
    function GetItemIndex: integer;
    function GetSelectedKey: string;
    procedure SetItemIndex(const Value: integer);
    procedure SetSelectedKey(const Value: string);
    function GetValues: TStrings;
  strict protected
    procedure SetLabelText; override;
    procedure GetActivate; override;
    procedure InternalSetField; override;
  protected
    { Private declarations }
    function GetKeys: TStrings;
  public
    function AddItem(const aKey, aValue: string): integer;
    property Keys: TStrings read GetKeys;
    property Values: TStrings read GetValues;
    property ItemIndex: integer read GetItemIndex write SetItemIndex;
    property SelectedKey: string read GetSelectedKey write SetSelectedKey;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  framSelectRadioGroup: TframSelectRadioGroup;

implementation

uses System.Math;

{$R *.dfm}
{ TframSelectModel1 }

function TframSelectRadioGroup.AddItem(const aKey, aValue: string): integer;
begin
  FKeys.Add(aKey);
  rgSelect.Items.Add(aValue);
  Result := rgSelect.Items.Count;
end;

constructor TframSelectRadioGroup.Create(AOwner: TComponent);
begin
  inherited;
  FKeys := TStringList.Create;
  rgSelect.Items.Clear;
end;

destructor TframSelectRadioGroup.Destroy;
begin
  inherited;
  FKeys.Free;
end;

procedure TframSelectRadioGroup.GetActivate;
begin
  inherited;

end;

function TframSelectRadioGroup.GetItemIndex: integer;
begin
  Result := rgSelect.ItemIndex;
end;

function TframSelectRadioGroup.GetKeys: TStrings;
begin
  Result := FKeys;
end;

function TframSelectRadioGroup.GetSelectedKey: string;
begin
  Result := FKeys[rgSelect.ItemIndex]
end;

function TframSelectRadioGroup.GetValues: TStrings;
begin
  Result := rgSelect.Items
end;

procedure TframSelectRadioGroup.InternalSetField;
var
  lKeyValue: TKeyValue;
begin
  inherited;
  if Assigned(FJanuaField) then
  begin
    rgSelect.Caption := FJanuaField.Title;
    if Assigned(FJanuaField.SearchContainer) and Supports(FJanuaField.SearchContainer, IJanuaSearchRadioContainer,
      FRadioContainer) then
      for lKeyValue in FRadioContainer.LookupList do
        AddItem(lKeyValue.Key, lKeyValue.Value)
  end;

  if rgSelect.Items.Count > 0 then
    rgSelect.ItemIndex := 0;

  Width := 140 * Ceil(FRadioContainer.KeyCount / 2);
end;

procedure TframSelectRadioGroup.rgSelectClick(Sender: TObject);
begin
  inherited;
  if Assigned(FJanuaField) then
    FJanuaField.AsString := FKeys[rgSelect.ItemIndex]
end;

procedure TframSelectRadioGroup.SetItemIndex(const Value: integer);
begin
  rgSelect.ItemIndex := Value
end;

procedure TframSelectRadioGroup.SetLabelText;
begin
  inherited;

end;

procedure TframSelectRadioGroup.SetSelectedKey(const Value: string);
begin
  if FJanuaField.AsString <> Value then
    FJanuaField.AsString := Value;

end;

end.

unit Janua.VCL.Controls.ComboSelect;

interface

uses
  /// RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Janua
  Janua.Controls.Select.Intf, Janua.Bindings.Intf, Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf,
  Janua.VCL.Controls.CustomSelect, Janua.Orm.Intf,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, Janua.VCL.Controls.FrameSelectModel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvExControls, JvDBLookup, VCL.ExtCtrls,
  // Janua.TMS.Interposers
  Janua.VCL.Interposers;

type
  TframeComboSelect = class(TframeVCLCustomSelect, IJanuaBindable, IComboSelect)
    procedure cboLookupCloseUp(Sender: TObject);
  private
    FValues: TStrings;
    FItems: TStrings;
    FItemIndex: Integer;
    FListContainer: IJanuaSearchListContainer;
  strict protected
    procedure SetLabelText; override;
    procedure GetActivate; override;
    procedure InternalSetField; override;
  protected
    { Private declarations }
    function GetItems: TStrings;
    function GetValues: TStrings;
  public
    property Items: TStrings read GetItems;
    property Values: TStrings read GetValues;
  public
    procedure Callback(aFound: Integer);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  frameComboSelect: TframeComboSelect;

implementation

{$R *.dfm}
{ TframSelectModel1 }

constructor TframeComboSelect.Create(AOwner: TComponent);
begin
  inherited;
  FListContainer := nil;
  FValues := TStringList.Create;
  FItems := TStringList.Create;
end;

destructor TframeComboSelect.Destroy;
begin
  FValues.Free;
  FItems.Free;
  FListContainer := nil;
  inherited;
end;

procedure TframeComboSelect.Callback(aFound: Integer);
begin
  if aFound > 0 then
  begin
    if cboLookup.Value <> FListContainer.KeyValue then
    begin
      cboLookup.Value := FListContainer.KeyValue;
      memLookupTable.Locate('Key', FListContainer.KeyValue, [loCaseInsensitive])
    end;
  end;
end;

procedure TframeComboSelect.cboLookupCloseUp(Sender: TObject);
begin
  inherited;
  FListContainer.KeyValue := Text;
end;

procedure TframeComboSelect.GetActivate;
begin
  inherited
end;

function TframeComboSelect.GetItems: TStrings;
begin
  Result := FItems;
end;

function TframeComboSelect.GetValues: TStrings;
begin
  Result := FValues;
end;

procedure TframeComboSelect.InternalSetField;
var
  lKeyValue: TKeyValue;
begin
  inherited;
  if Assigned(FJanuaField) then
  begin
    if Assigned(FJanuaField.SearchContainer) then
    begin
      if Supports(FJanuaField.SearchContainer, IJanuaSearchListContainer, FListContainer) then
      begin
        for lKeyValue in FListContainer.LookupList do
        begin
          memLookupTable.Append;
          memLookupTableKey.AsString := lKeyValue.Key;
          memLookupTableValue.AsString := lKeyValue.Value;
          memLookupTable.Post;
        end;
      end;
    end;
  end;
end;

procedure TframeComboSelect.SetLabelText;
begin
  inherited
end;

end.

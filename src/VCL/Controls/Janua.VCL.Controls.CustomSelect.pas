unit Janua.VCL.Controls.CustomSelect;

interface

uses
  /// RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Janua
  Janua.Controls.Select.Intf, Janua.Bindings.Intf, Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf,
  uJanuaVCLFrame, Janua.VCL.Controls.FrameSelectModel, Janua.Orm.Intf,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.WinXCtrls, VCL.WinXPickers, VCL.StdCtrls, JvExControls,
  JvDBLookup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TframeVCLCustomSelect = class(TframSelectModel, ITextSelect, IJanuaBindable, IJanuaSelect)
    cboLookup: TJvDBLookupCombo;
    memLookupTable: TFDMemTable;
    memLookupTableKey: TStringField;
    memLookupTableValue: TStringField;
    dsLookup: TDataSource;
    procedure cboLookupCloseUp(Sender: TObject);
  private
    FText: string;
    function GetText: string;
    procedure SetJanuaField(const Value: IJanuaField);
  strict protected
    procedure InternalSetField; override;
    function InternalActivate: boolean; override;
  protected
    procedure SetText(const aText: string);
  public
    { Public declarations }
    property Text: string read GetText write SetText;
  end;

implementation

uses  Janua.Application.Framework, Spring;

{$R *.dfm}

procedure TframeVCLCustomSelect.cboLookupCloseUp(Sender: TObject);
begin
  if FText <> cboLookup.Value then
  begin
    FText := cboLookup.Value;
    Notify('Text');
  end;
end;

{ TframeVCLCustomSelect }

function TframeVCLCustomSelect.GetText: string;
begin
  Result := FText
end;

function TframeVCLCustomSelect.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Guard.CheckNotNull(FJanuaField, 'FJanuaField');
      Result := inherited;
      if Result then
      begin
        cboLookup.Value := FJanuaField.AsString;
      end;
    except
      on E: Exception do
      begin
        Result := False;
        RaiseException('InternalActivate', E, self);
      end;
    end;

end;

procedure TframeVCLCustomSelect.InternalSetField;
begin
    inherited;
    Text := FJanuaField.AsString;
    { La property locale 'Text' viene collegata alla property AsString del Campo }
    FJanuaField.Bind('AsString', self, 'Text', False);
end;


procedure TframeVCLCustomSelect.SetJanuaField(const Value: IJanuaField);
begin

end;

procedure TframeVCLCustomSelect.SetText(const aText: string);
begin
  if FText <> aText then
  begin
    FText := aText;
    if memLookupTable.Locate('Key', aText, [loCaseInsensitive]) and (memLookupTableKey.AsString <> cboLookup.Value) then
      cboLookup.Value := memLookupTableKey.AsString;
    Notify('Text');
  end;
end;

end.

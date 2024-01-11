unit JanuaDialogDBLookup;

interface

uses
  SysUtils, Classes, udlgJanuaDBLookup, db, Controls;

type
  TJanuaDialogDBLookup = class(TComponent)
  private
    FTitle: string;
    FValue: string;
    FCaption: string;
    FLookupField: string;
    FDisplayField: string;
    FLookupDataset: TDataset;
    procedure SetTitle(const Value: string);
    procedure SetValue(const Value: string);
    procedure SetCaption(const Value: string);
    procedure SetLookupField(const Value: string);
    procedure SetDisplayField(const Value: string);
    procedure SetLookupDataset(const Value: TDataset);
    { Private declarations }
  protected
    { Protected declarations }
  public
    function Execute: boolean; 
    { Public declarations }
  published
    { Published declarations }
    property Title: string read FTitle write SetTitle;
    property Value: string read FValue write SetValue;
    property Caption: string read FCaption write SetCaption;
    property LookupField: string read FLookupField write SetLookupField;
    property DisplayField: string read FDisplayField write SetDisplayField;
    property LookupDataset: TDataset read FLookupDataset write SetLookupDataset;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaDialogDBLookup]);
end;

{ TJanuaDialogDBLookup }

function TJanuaDialogDBLookup.Execute: boolean;
var
  localDialog: TdlgJanuadbLookup;
begin
  try
    localDialog := TdlgJanuadbLookup.Create(nil);
    localDialog.Caption := FTitle;
    localDialog.Label1.Caption := FCaption;
    localDialog.DataSource1.DataSet := FlookupDataset; 
    localDialog.JvDBLookupCombo1.LookupField := LookupField;
    localDialog.JvDBLookupCombo1.LookupDisplay := DisplayField;
    localDialog.JvDBLookupCombo1.Value := FValue;
    localDialog.ShowModal;
    if localDialog.ModalResult = mrOk then
    begin
      Result := True;
      FValue :=  localDialog.JvDBLookupCombo1.Value;
    end
    else
    begin
      FValue := '';
      Result := False;
    end;
  finally
    FreeAndNil(localDialog);
  end;
end;

procedure TJanuaDialogDBLookup.SetCaption(const Value: string);
begin
  FCaption := Value;
end;

procedure TJanuaDialogDBLookup.SetDisplayField(const Value: string);
begin
  FDisplayField := Value;
end;

procedure TJanuaDialogDBLookup.SetLookupDataset(const Value: TDataset);
begin
  FLookupDataset := Value;
end;

procedure TJanuaDialogDBLookup.SetLookupField(const Value: string);
begin
  FLookupField := Value;
end;

procedure TJanuaDialogDBLookup.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

procedure TJanuaDialogDBLookup.SetValue(const Value: string);
begin
  FValue := Value;
end;

end.

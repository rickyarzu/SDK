unit ParamForm;

interface

{$I QBIBXDemo.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, QBFloatTable;

type
  TfmInputParam = class(TForm)
    paClient: TPanel;
    paButtons: TPanel;
    buOK: TButton;
    buCancel: TButton;
    chUnassigned: TCheckBox;
    raNull: TRadioButton;
    raValue: TRadioButton;
    edValue: TEdit;
    procedure chUnassignedClick(Sender: TObject);
    procedure buOKClick(Sender: TObject);
  private
    FParam: TQBListItem;
    procedure SetParam(const Value: TQBListItem);
    procedure UpdateControlState;
  public
    property Param: TQBListItem read FParam write SetParam;
  end;

function InputParam(Param: TQBListItem): boolean;

implementation

uses Db{$IFDEF VCL6}, Variants{$ENDIF};

{$R *.DFM}

function InputParam(Param: TQBListItem): boolean;
var
  fmInputParam: TfmInputParam;
begin
  fmInputParam := TfmInputParam.Create(nil);
  try
    fmInputParam.Param := Param;
    Result := fmInputParam.ShowModal() = mrOk;
  finally
    fmInputParam.Free();
  end;
end;

procedure TfmInputParam.chUnassignedClick(Sender: TObject);
begin
  UpdateControlState();
end;

procedure TfmInputParam.buOKClick(Sender: TObject);
begin
  if not Assigned(FParam) then Exit;
  if chUnassigned.Checked then
    FParam.VarValue := Unassigned
  else if raNull.Checked then
    FParam.VarValue := NULL
  else if raValue.Checked then begin
    try
      case FParam.DataType of
        ftSmallint,
        ftWord,
        ftLargeint,
        ftInteger  : FParam.VarValue := StrToInt(edValue.Text);
        ftBoolean  : ;
        ftFloat,
        ftCurrency,
        ftBCD      : FParam.VarValue := StrToFloat(edValue.Text);
        ftDate     : FParam.VarValue := StrToDate(edValue.Text);
        ftTime     : FParam.VarValue := StrToTime(edValue.Text);
        ftDateTime : FParam.VarValue := StrToDateTime(edValue.Text);
      else
        FParam.VarValue := edValue.Text;
      end;
    except
      FParam.VarValue := Unassigned;
    end;
  end;
  FParam.Checked := VarType(FParam.VarValue) <> varEmpty;
end;

procedure TfmInputParam.UpdateControlState;
begin
  raNull.Enabled := not chUnassigned.Checked;
  raValue.Enabled := not chUnassigned.Checked;
  edValue.Enabled := not chUnassigned.Checked and raValue.Checked;
end;

procedure TfmInputParam.SetParam(const Value: TQBListItem);
begin
  FParam := Value;
  if not Assigned(FParam) then Exit;
  if VarType(FParam.VarValue) = varEmpty then
    chUnassigned.Checked := True
  else if VarType(FParam.VarValue) = varNull then begin
    chUnassigned.Checked := False;
    raNull.Checked := True;
  end else begin
    chUnassigned.Checked := False;
    raValue.Checked := True;
    edValue.Text := FParam.VarValue;
  end;
  UpdateControlState();
end;

end.

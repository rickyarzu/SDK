unit JanuaInputNumber;

interface

uses
  Classes, Controls,  Janua.VCL.dlgInputFloat;

type
  TJanuaInputNumber = class(TComponent)
  private
    FCaption: widestring;
    FNumber: Real;
    FDisplayText: widestring;
    procedure SetCaption(const Value: widestring);
    procedure SetDisplayText(const Value: widestring);
    procedure SetNumber(const Value: Real);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function Execute: boolean;
  published
    { Published declarations }
    property Number: Real read FNumber write SetNumber;
    property Caption: widestring read FCaption write SetCaption;
    property DisplayText: widestring read FDisplayText write SetDisplayText;
  end;

procedure Register;

implementation

uses
  SysUtils;

procedure Register;
begin
  RegisterComponents('Januaproject Dialogs', [TJanuaInputNumber]);
end;

{ TJanuaInputNumber }

function TJanuaInputNumber.Execute: boolean;
var
   dlgInput: TDlgInputFloat;
begin
  dlgInput := TDlgInputFloat.Create(nil);
  try
    dlgInput.Caption := self.FCaption;
    dlgInput.Label1.Caption := self.FDisplayText;
    dlgInput.AdvMaskEdit1.Text := FormatFloat('0.00', self.FNumber);
    dlgInput.ShowModal;
    Result := dlgInput.ModalResult = mrOK; 
    if Result then self.FNumber := StrToFloat( dlgInput.AdvMaskEdit1.Text); 
  finally
    dlgInput.Free;
  end;
end;

procedure TJanuaInputNumber.SetCaption(const Value: widestring);
begin
  FCaption := Value;
end;

procedure TJanuaInputNumber.SetDisplayText(const Value: widestring);
begin
  FDisplayText := Value;
end;

procedure TJanuaInputNumber.SetNumber(const Value: Real);
begin
  FNumber := Value;
end;

end.

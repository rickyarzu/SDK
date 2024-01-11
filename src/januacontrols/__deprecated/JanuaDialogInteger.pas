unit JanuaDialogInteger;

interface

uses
  SysUtils, Classes, Controls, udlgInputNumber;

type
  TJanuaDialogInteger = class(TComponent)
  private
    FCaption: String;
    FNumber: Int64;
    FDisplayText: String;
    procedure SetCaption(const Value: String);
    procedure SetNumber(const Value: Int64);
    procedure SetDisplayText(const Value: String);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function Execute: boolean; 
  published
    { Published declarations }
    property Number: Int64 read FNumber write SetNumber;
    property Caption: String read FCaption write SetCaption;
    property DisplayText: String read FDisplayText write SetDisplayText;

  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject Dialogs', [TJanuaDialogInteger]);
end;

{ TJanuaDialogInteger }

function TJanuaDialogInteger.Execute: boolean;
var
   dlgInput: TDlgInputNumber;
begin
  dlgInput := TDlgInputNumber.Create(nil);
  try
    dlgInput.Caption := self.FCaption;
    dlgInput.Label1.Caption := self.FDisplayText;
    dlgInput.AdvSpinEdit1.Value := self.FNumber;
    dlgInput.ShowModal;
    Result := dlgInput.ModalResult = mrOK; 
    if Result then self.FNumber := dlgInput.AdvSpinEdit1.Value;
  finally
    dlgInput.Free;
  end;
end;

procedure TJanuaDialogInteger.SetCaption(const Value: String);
begin
  FCaption := Value;
end;

procedure TJanuaDialogInteger.SetNumber(const Value: Int64);
begin
  FNumber := Value;
end;

procedure TJanuaDialogInteger.SetDisplayText(const Value: String);
begin
  FDisplayText := Value;
end;

end.

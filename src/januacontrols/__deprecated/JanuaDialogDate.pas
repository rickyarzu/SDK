unit JanuaDialogDate;

interface

uses
  SysUtils, Classes, udlgInputDate, Controls;

type
  TJanuaDialogDate = class(TComponent)
  private
    FDate: TDateTime;
    FDisplayText: string;
    FCaption: string;
    procedure SetDate(const Value: TDateTime);
    procedure SetDisplayText(const Value: string);
    procedure SetCaption(const Value: string);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function Execute: Boolean;
  published
    property Date: TDateTime read FDate write SetDate;
    property DisplayText: string read FDisplayText write SetDisplayText;
    property Caption: string read FCaption write SetCaption;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject Dialogs', [TJanuaDialogDate]);
end;

{ TJanuaDialogDate }

function TJanuaDialogDate.Execute: Boolean;
var
  vdlgInput: TdlgInputDate;
begin
   try
     vdlgInput := TdlgInputDate.Create(nil);
     vdlgInput.Label1.Caption := FDisplayText;
     vdlgInput.Caption := self.FCaption; 
     if FDate <= 1 then FDate := Now();
     vdlgInput.DefaultDate := FDate;
     vdlgInput.ShowModal;
     Result := (vdlgInput.ModalResult = mrOK ) or (vdlgInput.Tag = mrOK);
     if Result  then FDate :=  vdlgInput.PlannerMaskDatePicker1.Date
   finally
     vdlgInput.Free;
   end;
end;

procedure TJanuaDialogDate.SetCaption(const Value: string);
begin
  FCaption := Value;
end;

procedure TJanuaDialogDate.SetDate(const Value: TDateTime);
begin
  FDate := Value;
end;

procedure TJanuaDialogDate.SetDisplayText(const Value: string);
begin
  FDisplayText := Value;
end;

end.

unit JanuaSplashDialog;

interface

uses
  SysUtils, Classes, ufrmAttesa, Forms;

type
  TJanuaSplashDialog = class(TComponent)
  private
    { Private declarations }
    FForm: TfrmAttesa;
    FCaption: string;
    FText: string;
    FMax: Integer;
    procedure SetCaption(const Value: string);
    procedure SetText(const Value: string);
    procedure FreeForm;
    procedure SetMax(const Value: Integer);
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Show;
    procedure ShowModal;
    procedure Close;
    procedure Stepby(Steps: integer); 
  published
    { Published declarations }
    Property Caption: string read FCaption write SetCaption;
    Property Text: string read FText write SetText;
    property Max: Integer read FMax write SetMax default 100;
  end;

procedure Register;

implementation


procedure Register;
begin
  RegisterComponents('Januaproject Controls', [TJanuaSplashDialog]);
end;

{ TJanuaSplashDialog }

procedure TJanuaSplashDialog.Close;
begin
  if Assigned (FForm) then
  begin
    FForm.Close;
    FreeAndNil(FForm); 
  end;
end;

procedure TJanuaSplashDialog.FreeForm;
begin
    FreeAndNil(FForm); 
end;

procedure TJanuaSplashDialog.SetCaption(const Value: string);
begin
  FCaption := Value;
end;

procedure TJanuaSplashDialog.SetMax(const Value: Integer);
begin
  FMax := Value;
end;

procedure TJanuaSplashDialog.SetText(const Value: string);
begin
  FText := Value;
  if Assigned (FForm) then FForm.Text := FText;
end;

procedure TJanuaSplashDialog.Show;
begin
  if not Assigned(FForm) then FForm := TfrmAttesa.Create(nil);
  FForm.FormStyle := fsStayOnTop;
  FForm.Show;
end;

procedure TJanuaSplashDialog.ShowModal;
begin
  try
     if not Assigned(FForm) then FForm := TfrmAttesa.Create(nil);
     FForm.ShowModal;
  finally
    FreeForm;
  end;

end;

procedure TJanuaSplashDialog.Stepby(Steps: integer);
begin
  if Assigned (FForm) then FForm.ProgressBar1.StepBy(Steps)
end;

end.

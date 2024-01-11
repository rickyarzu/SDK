unit JanuaMailDialog;

interface

uses
  SysUtils, Classes, JanuaSystem;

type
  TJanuaMailDialog = class(TComponent)
  private
    FJanuaSystem: TJanuaSystem;
    procedure SetJanuaSystem(const Value: TJanuaSystem);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    function ShowMailDialog: boolean; 
  published
    { Published declarations }
    property JanuaSystem: TJanuaSystem read FJanuaSystem write SetJanuaSystem;
  end;

procedure Register;

implementation

uses udlgMail;

procedure Register;
begin
  RegisterComponents('Januaproject Controls', [TJanuaMailDialog]);
end;

{ TJanuaMail }

procedure TJanuaMailDialog.SetJanuaSystem(const Value: TJanuaSystem);
begin
  FJanuaSystem := Value;
end;

function TJanuaMailDialog.ShowMailDialog: boolean;
var
  localMail: TDlgMail;
begin
  Result := True;
  try
    localMail := TDlgMail.Create(nil);
    localMail.ShowModal;
  finally
    FreeAndNil(localMail); 
  end;
end;

end.

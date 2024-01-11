unit JvxSpeedButton;

interface

uses
  Windows, Messages, System.SysUtils, System.Classes, VCL.Controls, JvExControls,
  JvComponent, JvSpeedButton(*, AdvHintInfo*);

type
  TJvxSpeedButton = class(TJvSpeedButton)
  private
    { Private declarations }
    (*
    FOfficeHint: TAdvHintInfo;
    procedure SetOfficeHint(const Value: TAdvHintInfo);
    *)
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    (* property OfficeHint: TAdvHintInfo read FOfficeHint write SetOfficeHint; *)
    { Published declarations }
  end;

implementation

(*
procedure TJvxSpeedButton.SetOfficeHint(const Value: TAdvHintInfo);
begin
  FOfficeHint.Assign(Value);
end;
*)

end.

unit Janua.TMS.dlgInputNumber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, VCL.Graphics, VCL.Controls, VCL.Forms,
  VCL.Dialogs, VCL.StdCtrls, VCL.Mask, AdvSpin, AdvGlowButton,
  // Janua
  Janua.Controls.Dialogs.Intf, uJanuaVCLForm;

type
  TdlgTMSInputNumber = class(TJanuaVCLFormModel, IJanuaDlgIntegerForm)
    AdvSpinEdit1: TAdvSpinEdit;
    Label1: TLabel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
  protected
    function GetCaption: String;
    function GetNumber: Int64;
    function GetDisplayText: String;
    procedure SetCaption(const Value: String);
    procedure SetNumber(const Value: Int64);
    procedure SetDisplayText(const Value: String);
  public
    function Execute: boolean;
  end;

var
  dlgTMSInputNumber : TdlgTMSInputNumber;

implementation

{$R *.dfm}

{ TdlgTMSInputNumber }

function TdlgTMSInputNumber.Execute: boolean;
begin
   Self.ShowModal;
   Result := self.ModalResult = mrOK;
end;

function TdlgTMSInputNumber.GetCaption: String;
begin
   Result := self.Caption
end;

function TdlgTMSInputNumber.GetDisplayText: String;
begin
  Result := Label1.Caption
end;

function TdlgTMSInputNumber.GetNumber: Int64;
begin
  REsult := AdvSpinEdit1.Value
end;

procedure TdlgTMSInputNumber.SetCaption(const Value: String);
begin
  Caption := Value;
end;

procedure TdlgTMSInputNumber.SetDisplayText(const Value: String);
begin
 Label1.Caption := Value;
end;

procedure TdlgTMSInputNumber.SetNumber(const Value: Int64);
begin
  AdvSpinEdit1.Value := Value
end;

end.

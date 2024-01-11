unit Janua.VCL.SMS;

interface

uses
  System.Classes, System.SysUtils,
  VCL.Graphics, VCL.StdCtrls,
  Janua.Core.Mobyt, Janua.Core.Classes, Janua.Core.System;

type
  TJanuaVclSms = class(TJanuaCoreComponent)
  private
    FJanuaSms: TJanuaSMS;
    FSmsMemo: TMemo;
    FSendButton: TButton;
    FLimitLabel: TLabel;
    procedure SetJanuaSms(const Value: TJanuaSMS);
    procedure SetSendButton(const Value: TButton);
    procedure SetSmsMemo(const Value: TMemo);
    procedure SetLimitLabel(const Value: TLabel);
    procedure getLimitLength;
    procedure RefreshSms(Sender: TObject);
  protected
  public
    procedure MemoChange(Sender: TObject);
  published
    property SmsMemo: TMemo read FSmsMemo write SetSmsMemo;
    property SendButton: TButton read FSendButton write SetSendButton;
    property JanuaSms: TJanuaSMS read FJanuaSms write SetJanuaSms;
    property LimitLabel: TLabel read FLimitLabel write SetLimitLabel;

  end;

implementation

{ TJanuaVclSms }

procedure TJanuaVclSms.MemoChange(Sender: TObject);
begin
  RefreshSms(Sender);
end;

procedure TJanuaVclSms.RefreshSms(Sender: TObject);
begin
  if Assigned(Sender) and (Sender is TMemo) then
  begin
    self.FJanuaSms.SMSMessage := (Sender as TMemo).Lines.Text;
    if Assigned(FLimitLabel) then
      getLimitLength;
    if Length(self.FJanuaSms.SMSMessage) > 160 then
      (Sender as TMemo).Color := clRed
    else
      (Sender as TMemo).Color := clWhite;
  end;
end;

procedure TJanuaVclSms.getLimitLength;
begin
  self.LimitLabel.Caption := IntToStr(Length(FJanuaSms.SMSMessage));
end;

procedure TJanuaVclSms.SetJanuaSms(const Value: TJanuaSMS);
begin
  FJanuaSms := Value;
  getLimitLength;
end;

procedure TJanuaVclSms.SetLimitLabel(const Value: TLabel);
begin
  FLimitLabel := Value;
  self.RefreshSms(Value);
end;

procedure TJanuaVclSms.SetSendButton(const Value: TButton);
begin
  FSendButton := Value;
  if Assigned(self.FSendButton) then
  begin
    self.FSendButton.OnClick := self.FJanuaSms.SendListClick;
  end;
end;

procedure TJanuaVclSms.SetSmsMemo(const Value: TMemo);
begin
  FSmsMemo := Value;
  if Assigned(self.FSmsMemo) then
  begin
    self.FSmsMemo.OnChange := self.MemoChange;
    self.RefreshSms(Value);
  end;
end;

end.

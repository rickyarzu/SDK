unit Janua.VCL.Mail;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Janua Components
  Janua.Core.Cms, Janua.Core.CustomControls, Janua.Core.Classes, Janua.Cloud.Mail.Intf,
  // vcl
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.Buttons, VCL.StdCtrls;

type
  TJanuaMailController = class(TJanuaCoreComponent)
  private
    FJanuaMailSender: IJanuaMailSender;
    FlbUserName: TControl;
    FlbServer: TControl;
    FedPort: TControl;
    FedUserPassword: TControl;
    FedUserName: TControl;
    FedServer: TControl;
    FlbPort: TControl;
    FlbUserPassword: TControl;
    FbtnCheck: TControl;
    FbtnSend: TControl;
    procedure SetedPort(const Value: TControl);
    procedure SetedServer(const Value: TControl);
    procedure SetedUserName(const Value: TControl);
    procedure SetedUserPassword(const Value: TControl);
    procedure SeTJanuaCustomMailSender(const Value: IJanuaMailSender);
    procedure SetlbPort(const Value: TControl);
    procedure SetlbServer(const Value: TControl);
    procedure SetlbUserName(const Value: TControl);
    procedure SetlbUserPassword(const Value: TControl);
    procedure SetbtnCheck(const Value: TControl);
    procedure SetbtnSend(const Value: TControl);
  protected
    function IsButton(const Value: TControl): Boolean;
  public
    procedure btnSendClick(Sender: TObject);
  public
    procedure UpdateScreen;
    procedure UpdateComponent;
    property JanuaMailSender: IJanuaMailSender read FJanuaMailSender write SeTJanuaCustomMailSender;
  public // janua Component to check ...............................................................................
    property lbUserName: TControl read FlbUserName write SetlbUserName;
    property edUserName: TControl read FedUserName write SetedUserName;
    property edUserPassword: TControl read FedUserPassword write SetedUserPassword;
    property lbUserPassword: TControl read FlbUserPassword write SetlbUserPassword;
    property edPort: TControl read FedPort write SetedPort;
    property lbPort: TControl read FlbPort write SetlbPort;
    property edServer: TControl read FedServer write SetedServer;
    property lbServer: TControl read FlbServer write SetlbServer;
    property btnSend: TControl read FbtnSend write SetbtnSend;
    property btnCheck: TControl read FbtnCheck write SetbtnCheck;

  end;

implementation

{ TJanuaMailController }

procedure TJanuaMailController.btnSendClick(Sender: TObject);
begin
  if Assigned(FJanuaMailSender) then
  begin
    if not FJanuaMailSender.SendMail then
    begin

    end;
  end;

end;

function TJanuaMailController.IsButton(const Value: TControl): Boolean;
begin
  Result := (self.btnSend is TSpeedButton);
  if Result then
    (self.btnSend as TSpeedButton).OnClick := self.btnSendClick;
  // TCustomButton
  if not Result then
  begin
    Result := (self.btnSend is TButton);
    if Result then
      (self.btnSend as TButton).OnClick := self.btnSendClick
  end;
end;

procedure TJanuaMailController.SetbtnCheck(const Value: TControl);
begin
  FbtnCheck := Value;
end;

procedure TJanuaMailController.SetbtnSend(const Value: TControl);
begin
  FbtnSend := Value;
  if Assigned(self.FbtnSend) then
  begin
    if not IsButton(Value) then

    begin
      FbtnSend := nil;
      raise Exception.Create('Not a kind of button recognized by the control');
    end;
  end;
end;

procedure TJanuaMailController.SetedPort(const Value: TControl);
begin
  FedPort := Value;
end;

procedure TJanuaMailController.SetedServer(const Value: TControl);
begin
  FedServer := Value;
end;

procedure TJanuaMailController.SetedUserName(const Value: TControl);
begin
  FedUserName := Value;
end;

procedure TJanuaMailController.SetedUserPassword(const Value: TControl);
begin
  FedUserPassword := Value;
end;

procedure TJanuaMailController.SeTJanuaCustomMailSender(const Value: IJanuaMailSender);
begin
  FJanuaMailSender := Value;
end;

procedure TJanuaMailController.SetlbPort(const Value: TControl);
begin
  FlbPort := Value;
end;

procedure TJanuaMailController.SetlbServer(const Value: TControl);
begin
  FlbServer := Value;
end;

procedure TJanuaMailController.SetlbUserName(const Value: TControl);
begin
  FlbUserName := Value;
end;

procedure TJanuaMailController.SetlbUserPassword(const Value: TControl);
begin
  FlbUserPassword := Value;
end;

procedure TJanuaMailController.UpdateComponent;
begin

end;

procedure TJanuaMailController.UpdateScreen;
begin

end;

end.

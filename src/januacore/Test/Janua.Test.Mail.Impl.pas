unit Janua.Test.Mail.Impl;

interface

uses Janua.Test.Mail.Intf, Janua.Cloud.Mail.Intf, Janua.Cloud.Mail.Impl;

type

  TJanuaTestMailSender = class(TJanuaCustomMailSender, IJanuaMailTestSender, IJanuaMailSender)
  private

  protected
    function SendMailInternal: Boolean; override;
    procedure SendMailError(Sender: TObject; AErrorMessage: string);
    procedure SendMailOK(Sender: TObject);
  public
    constructor Create; override;
    destructor Destroy; override;
    function TestMailServer: Boolean; override;
  end;

implementation

{ TJanuaTestMailSender }

constructor TJanuaTestMailSender.Create;
begin
  inherited;

end;

destructor TJanuaTestMailSender.Destroy;
begin

  inherited;
end;

procedure TJanuaTestMailSender.SendMailError(Sender: TObject; AErrorMessage: string);
begin

end;

function TJanuaTestMailSender.SendMailInternal: Boolean;
begin
  Result := True;
end;

procedure TJanuaTestMailSender.SendMailOK(Sender: TObject);
begin

end;

function TJanuaTestMailSender.TestMailServer: Boolean;
begin
  Result := True;
end;

end.

unit udlgMail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Forms,  functions,
   uframeMail, Controls, JanuaSystem;

type
  TdlgMail = class(TForm)
    frameMail1: TframeMail;
    procedure FormCreate(Sender: TObject);
    procedure edsetcolorenter(Sender: TObject);
    procedure edsetcolorexit(Sender: TObject);
  private
    FJanuaSystem: TJanuaSystem;
    procedure SetJanuaSystem(const Value: TJanuaSystem);
    { Private declarations }
  public
    { Public declarations }
  published
     property JanuaSystem: TJanuaSystem read FJanuaSystem write SetJanuaSystem;
  end;

var
  dlgMail: TdlgMail;

implementation



{$R *.dfm}

procedure TdlgMail.edsetcolorenter(Sender: TObject);
begin
   setcolorenter(sender)
end;

procedure TdlgMail.edsetcolorexit(Sender: TObject);
begin
    setcolorexit(sender)
end;

procedure TdlgMail.FormCreate(Sender: TObject);
begin
    frameMail1.SetDefault;
end;

procedure TdlgMail.SetJanuaSystem(const Value: TJanuaSystem);
begin
  FJanuaSystem := Value;
end;

end.

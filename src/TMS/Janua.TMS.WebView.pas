unit Janua.TMS.WebView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TJanuaVCLWebView = class(TFrame)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure Register;

implementation

{$R *.dfm}

procedure Register;
begin
  RegisterComponents('Januaproject VCL Controls', [TJanuaVCLWebView]);
end;



end.

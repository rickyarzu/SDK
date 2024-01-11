unit Janua.TMS.FrameAdvBrowser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvCustomControl, AdvWebBrowser, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TframeTmsAdvBrowser = class(TFrame)
    pnlUrl: TPanel;
    edtUrl: TEdit;
    btnUrl: TButton;
    AdvWebBrowser1: TAdvWebBrowser;
    procedure btnUrlClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TframeTmsAdvBrowser.btnUrlClick(Sender: TObject);
begin
  AdvWebBrowser1.Navigate(edtUrl.Text)
end;

end.

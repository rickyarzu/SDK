unit AboutUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainUnit, scControls,
  scImageCollection;

type
  TAboutFrame = class(TFrame)
    scPanel1: TscPanel;
    scLabel28: TscLabel;
    scButton9: TscButton;
    scLabel30: TscLabel;
    scLabel1: TscLabel;
    procedure scButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
   Uses ShellApi;
{$R *.dfm}

procedure TAboutFrame.scButton9Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

end.

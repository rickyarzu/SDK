unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ToolWin, ComCtrls, ExtCtrls, sf_flash, jpeg, XPMan;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Image1: TImage;
    sfFlashPlayer1: TsfFlashPlayer;
    XPManifest1: TXPManifest;
    Label2: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
 sfFlashPlayer1.LoadMovie(0, Edit1.Text);
end;

end.

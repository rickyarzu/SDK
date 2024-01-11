unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  sf_flash, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    ComboBox1: TComboBox;
    sfFlashPlayer1: TsfFlashPlayer;
    XPManifest1: TXPManifest;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  if OpenDialog1.Execute
  then
    begin
      sfFlashPlayer1.LoadMovie(0, OpenDialog1.FileName);
    end;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
  sfFlashPlayer1.FLVPlaybackSkin := TsfFLVSkins(ComboBox1.ItemIndex);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex := 0;
end;

end.

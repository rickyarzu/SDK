unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, sf_flash, ImgList, XPMan;

type
  TForm1 = class(TForm)
    sfFlashImageList1: TsfFlashImageList;
    sfFlashList1: TsfFlashList;
    sfFlashImage1: TsfFlashImage;
    Button1: TButton;
    Memo1: TMemo;
    XPManifest1: TXPManifest;
    procedure Button1Click(Sender: TObject);
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
  if sfFlashImage1.ImageIndex < sfFlashImageList1.Count - 1
  then
    sfFlashImage1.ImageIndex := sfFlashImage1.ImageIndex + 1
  else
    sfFlashImage1.ImageIndex := 0;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  sfFlashImage1.ImageIndex := 0;
end;

end.
               
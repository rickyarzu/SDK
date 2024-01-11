unit ScreenshotFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TScreenshotForm = class(TForm)
    Image1: TImage;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScreenshotForm: TScreenshotForm;

implementation

{$R *.dfm}

procedure TScreenshotForm.Button1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    Image1.Picture.Graphic.SaveToFile(SaveDialog1.FileName);
end;

end.

unit CanvasFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, IKImage, IKTypes;

type
  TCanvasForm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    PaintBox: TLabel;
    PaintBox1: TPaintBox;
    Image2: TImage;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
  public
    Image: TIKImage;
    Filter: TIKFilter;
  end;

var
  CanvasForm: TCanvasForm;

implementation

{$R *.dfm}

procedure TCanvasForm.FormCreate(Sender: TObject);
begin
  Image := TIKImage.CreateWithGraphic(Image1.Picture.Graphic);
  Filter := TIKFilter.CreateWithName('ColorInvert');
  Filter.SetValue('InputImage', Image);
end;

procedure TCanvasForm.FormDestroy(Sender: TObject);
begin
  Filter.Free;
  Image.Free;
end;

procedure TCanvasForm.PaintBox1Paint(Sender: TObject);
var
  Context: TIKContext;
begin
  Context := TIKContext.CreateWithDC(PaintBox1.Canvas.Handle);
  Context.DrawImage(Filter.OutputImage, IKRect(0, 0, PaintBox1.Width, PaintBox1.Height));
  Context.Free;
end;

procedure TCanvasForm.Button1Click(Sender: TObject);
begin
  Image2.Picture.Assign(Filter.OutputImage.Bitmap);
end;

end.

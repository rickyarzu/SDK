unit Janua.FMX.dlgCanvasImage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Objects,
  FMX.Controls.Presentation,
  // Janua
  Janua.Core.Types,  Janua.FMX.frameCanvasPaintImage;

type
  TdlgFMXCanvasImage = class(TForm)
    toolBarDriverTask: TToolBar;
    Image6: TImage;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    frameFMXImageDraw1: TframeFMXImageDraw;
    procedure FormShow(Sender: TObject);
  private
    FImageDrawings: TJanuaImageDraws;
    procedure SetImageDrawings(const Value: TJanuaImageDraws);
    { Private declarations }
  public
    { Public declarations }
    property ImageDrawings: TJanuaImageDraws read FImageDrawings write SetImageDrawings;
  end;

var
  dlgFMXCanvasImage: TdlgFMXCanvasImage;

implementation

{$R *.fmx}
{ TdlgFMXCanvasImage }

procedure TdlgFMXCanvasImage.FormShow(Sender: TObject);
begin
  frameFMXImageDraw1.Activate;
end;

procedure TdlgFMXCanvasImage.SetImageDrawings(const Value: TJanuaImageDraws);
begin
  FImageDrawings := Value;
  frameFMXImageDraw1.ImageDrawings := self.FImageDrawings;
end;

end.

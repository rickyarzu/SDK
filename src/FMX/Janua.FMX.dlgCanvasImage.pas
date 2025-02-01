unit Janua.FMX.dlgCanvasImage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Objects,
  FMX.Controls.Presentation,
  // Janua
  Janua.Core.Types, Janua.FMX.frameCanvasPaintImage, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, FMX.Layouts;

type
  TdlgFMXCanvasImage = class(TForm)
    toolBarDriverTask: TToolBar;
    Image6: TImage;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    layoutCanvasImage: TLayout;
    frameFMXImageDraw1 : TframeFMXImageDraw;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure frameFMXImageDraw1btnRedrawClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    FOnCloseDialog: TNotifyEvent;
    procedure SetImageDrawings(const Value: TJanuaImageDraws);
    procedure SetOnCloseDialog(const Value: TNotifyEvent);
    function GetImageDrawings: TJanuaImageDraws;
    { Private declarations }
  public
    { Public declarations }
    property ImageDrawings: TJanuaImageDraws read GetImageDrawings write SetImageDrawings;
    property OnCloseDialog: TNotifyEvent read FOnCloseDialog write SetOnCloseDialog;
  end;

var
  dlgFMXCanvasImage: TdlgFMXCanvasImage;

implementation

{$R *.fmx}

uses Janua.FMX.dlgCanvasImageBlox;

procedure ResizeBitmap(Source: TBitmap; var Destination: TBitmap; NewWidth, NewHeight: Integer);
begin
  // Create a new bitmap with the desired size
  Destination := TBitmap.Create;
  Destination.SetSize(NewWidth, NewHeight);

  // Draw the source bitmap onto the destination bitmap, scaling it
  Destination.Canvas.BeginScene;
  try
    Destination.Canvas.DrawBitmap(Source,
                                  RectF(0, 0, Source.Width, Source.Height), // Source rectangle
                                  RectF(0, 0, NewWidth, NewHeight),         // Destination rectangle
                                  1.0,                                      // Opacity
                                  True);                                    // HighQuality (antialiasing)
  finally
    Destination.Canvas.EndScene;
  end;
end;

{ TdlgFMXCanvasImage }

procedure TdlgFMXCanvasImage.FormResize(Sender: TObject);
begin
  frameFMXImageDraw1.UpdateSize;
end;

procedure TdlgFMXCanvasImage.FormShow(Sender: TObject);
begin
  frameFMXImageDraw1.UpdateSize;
  // frameFMXImageDraw1.btnRedrawClick(frameFMXImageDraw1);
end;

procedure TdlgFMXCanvasImage.frameFMXImageDraw1btnRedrawClick(Sender: TObject);
begin
  frameFMXImageDraw1.btnRedrawClick(Sender);
end;

function TdlgFMXCanvasImage.GetImageDrawings: TJanuaImageDraws;
begin
  Result := frameFMXImageDraw1.ImageDrawings;
end;

procedure TdlgFMXCanvasImage.SetImageDrawings(const Value: TJanuaImageDraws);
begin
  frameFMXImageDraw1.ImageDrawings := Value;
  Memo1.Lines.Text := Value.Notes;
end;

procedure TdlgFMXCanvasImage.SetOnCloseDialog(const Value: TNotifyEvent);
begin
  FOnCloseDialog := Value;
end;

procedure TdlgFMXCanvasImage.SpeedButton1Click(Sender: TObject);
begin
  self.Close;
  if Assigned(FOnCloseDialog) then
    FOnCloseDialog(self);
end;

end.

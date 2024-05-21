unit Janua.FMX.dlgCanvasImage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Objects,
  FMX.Controls.Presentation,
  // Janua
  Janua.Core.Types, Janua.FMX.frameCanvasPaintImage, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

type
  TdlgFMXCanvasImage = class(TForm)
    toolBarDriverTask: TToolBar;
    Image6: TImage;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    frameFMXImageDraw1: TframeFMXImageDraw;
    Label1: TLabel;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FImageDrawings: TJanuaImageDraws;
    FOnCloseDialog: TNotifyEvent;
    procedure SetImageDrawings(const Value: TJanuaImageDraws);
    procedure SetOnCloseDialog(const Value: TNotifyEvent);
    { Private declarations }
  public
    { Public declarations }
    property ImageDrawings: TJanuaImageDraws read FImageDrawings write SetImageDrawings;
    property OnCloseDialog: TNotifyEvent read FOnCloseDialog write SetOnCloseDialog;
  end;

var
  dlgFMXCanvasImage: TdlgFMXCanvasImage;

implementation

{$R *.fmx}
{ TdlgFMXCanvasImage }

procedure TdlgFMXCanvasImage.FormResize(Sender: TObject);
begin
  self.frameFMXImageDraw1.UpdateSize;
end;

procedure TdlgFMXCanvasImage.FormShow(Sender: TObject);
begin
  frameFMXImageDraw1.Activate(frameFMXImageDraw1.LayoutImage.Position.Y);
end;

procedure TdlgFMXCanvasImage.SetImageDrawings(const Value: TJanuaImageDraws);
begin
  FImageDrawings := Value;
  frameFMXImageDraw1.ImageDrawings := self.FImageDrawings;
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

unit Janua.FMX.dlgCanvasImage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Objects,
  FMX.Controls.Presentation,
  // Janua
  Janua.Core.Types, Janua.FMX.frameCanvasPaintImage, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  Janua.FMX.frameFNCBlox;

type
  TdlgFMXCanvasImage = class(TForm)
    toolBarDriverTask: TToolBar;
    Image6: TImage;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    frameFMXImageDraw1: TframeFNCBloxDrawing;
    Label1: TLabel;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure frameFMXImageDraw1btnRedrawClick(Sender: TObject);
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
{ TdlgFMXCanvasImage }

procedure TdlgFMXCanvasImage.FormShow(Sender: TObject);
begin

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

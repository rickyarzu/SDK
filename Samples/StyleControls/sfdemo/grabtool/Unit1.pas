unit Unit1;

{$DEFINE FLASHTOPNG_CONVERT}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  sf_flash, StdCtrls, ExtCtrls, ImgList, ShellApi, Spin, Jpeg,
  Mask, ComCtrls {$IFDEF FLASHTOPNG_CONVERT}, sf_PngImage, XPMan{$ENDIF};

type
  TForm1 = class(TForm)
    Image1: TImage;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    TrackBar1: TTrackBar;
    Label4: TLabel;
    Label3: TLabel;
    TrackBar2: TTrackBar;
    Button1: TButton;
    sfFlashPlayer1: TsfFlashPlayer;
    XPManifest1: TXPManifest;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  FLoadFromFile: Boolean;
  FLoadFromStore: Boolean;
  StoreIndex: Integer;

implementation
     Uses sf_bitmap;
{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if OpenDialog.Execute
  then
    sfFlashPlayer1.LoadMovie(0, OpenDialog.FileName);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);
end;


procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  sfFlashPlayer1.Perform(WM_KEYDOWN, Key, 0);
end;

procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  sfFlashPlayer1.Perform(WM_KEYUP, Key, 0);
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  sfFlashPlayer1.Perform(WM_CHAR, Ord(Key), 0);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  sfFlashPlayer1.Width := TrackBar1.Position;
  Label2.Caption := 'Size (' +
    IntToStr(TrackBar1.Position) + 'x' + IntToStr(TrackBar2.Position) + '):';
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
  sfFlashPlayer1.Height:= TrackBar2.Position;
  Label2.Caption := 'Size (' +
    IntToStr(TrackBar1.Position) + 'x' + IntToStr(TrackBar2.Position) + '):';
end;

type
  TempPlayer = class(TsfFlashPlayer);

procedure TForm1.Button5Click(Sender: TObject);
var
  B: TsfBitMap;
begin
  SaveDialog.Filter := 'Bitmap with alpha channel (*.sfb)|*.sfb';
  SaveDialog.DefaultExt := 'sfb';
  B := sfFlashPlayer1.GrabToBmpAlpha;
  if SaveDialog.Execute
  then
    B.SaveToFile(SaveDialog.FileName);
  B.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  B: TBitMap;
begin
  SaveDialog.Filter := 'Bitmap(*.bmp)|*.bmp';
  SaveDialog.DefaultExt := 'bmp';
  B := sfFlashPlayer1.GrabToBmp;
  if SaveDialog.Execute
  then
    B.SaveToFile(SaveDialog.FileName);
  B.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  B: TJpegImage;
begin
  SaveDialog.Filter := 'Bitmap(*.jpg)|*.jpg';
  SaveDialog.DefaultExt := 'jpg';
  B := sfFlashPlayer1.GrabToJpg;
  if SaveDialog.Execute
  then
    B.SaveToFile(SaveDialog.FileName);
  B.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
{$IFDEF FLASHTOPNG_CONVERT}
var
  B: TsfPngImage;
{$ENDIF}
begin
  {$IFDEF FLASHTOPNG_CONVERT}
  SaveDialog.Filter := 'PNG image(*.png)|*.png';
  SaveDialog.DefaultExt := 'png';
  B := sfFlashPlayer1.GrabToPng;
  if SaveDialog.Execute
  then
    B.SaveToFile(SaveDialog.FileName);
  B.Free;
  {$ENDIF}
end;

end.

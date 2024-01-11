unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UFront, UBack,
  Vcl.ExtCtrls, Vcl.StdCtrls;



type
  TFrmMain = class(TForm)
    Timer1: TTimer;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
   FrmBack: TFrmBack;
   FrmFront: TFrmFront;
    { Private declarations }
  public
    { Public declarations }
    procedure Get_Back;
    procedure Get_Front;
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
 // self.Timer1.Enabled := True;
end;

procedure TFrmMain.Get_Back;
begin
  FrmBack := TFrmBack.Create(Self);
  FrmBack.Show_Back;
end;

procedure TFrmMain.Get_Front;
begin
  FrmFront := TFrmFront.Create(Self);
  FrmFront.Show_Front;
end;


procedure TFrmMain.Timer1Timer(Sender: TObject);
begin
  self.Timer1.Enabled := False;
  FrmBack := nil;
   Get_Back;
  FrmFront := nil;
   Get_Front;
end;

end.

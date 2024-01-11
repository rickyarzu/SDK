unit UFront;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TFrmFront = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Show_Front;
  end;

var
  FrmFront: TFrmFront;

implementation

uses
  UMain;

{$R *.dfm}

{ TFrmFront }

procedure TFrmFront.Show_Front;
begin
  Parent := FrmMain;
  //Align  := alClient;
  OnMouseDown := FrmMain.OnMouseDown;
//  BringToFront;
  Show;  // Visible := True;
end;

end.

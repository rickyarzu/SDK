unit UBack;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFrmBack = class(TForm)

  private
    { Private declarations }
  public
    { Public declarations }
    procedure Show_Back;
  end;

var
  FrmBack: TFrmBack;

implementation

uses
  UMain;

{$R *.dfm}

{ TFrmBack }


procedure TFrmBack.Show_Back;
begin
  Parent := FrmMain;
  Align  := alClient;
  OnMouseDown := FrmMain.OnMouseDown;
//  SendToBack;
  Show;  // Visible := True;
end;

end.

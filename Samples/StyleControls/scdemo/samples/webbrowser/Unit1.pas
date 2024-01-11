unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.OleCtrls, SHDocVw, scWebBrowser, scStyledForm, scStyleManager;

type
  TForm1 = class(TForm)
    scWebBrowser1: TscWebBrowser;
    scPanel1: TscPanel;
    scEdit1: TscEdit;
    scButton1: TscButton;
    scStyleManager1: TscStyleManager;
    scStyledForm1: TscStyledForm;
    procedure scButton1Click(Sender: TObject);
    procedure scEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  scWebBrowser1.Silent := True;
end;

procedure TForm1.scButton1Click(Sender: TObject);
begin
  scWebBrowser1.Navigate(scEdit1.Text);
end;

procedure TForm1.scEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   scWebBrowser1.Navigate(scEdit1.Text);
end;

end.

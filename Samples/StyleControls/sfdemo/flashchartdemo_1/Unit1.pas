unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  sf_flash, jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    sfFlashPlayer1: TsfFlashPlayer;
    sfFlashList1: TsfFlashList;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  FP: String;
implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
var
  S: String;
begin
  S := 'open-flash-chart.swf?data-file=bar3d.txt';
  sfFlashPlayer1.LoadMovie(0, S);
  ComboBox1.ItemIndex := 0;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  S: String;
begin
  S := 'open-flash-chart.swf?data-file=' + ComboBox1.Text;
  sfFlashPlayer1.LoadMovie(0, S);
  Timer1.Enabled := False;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  sfFlashList1.Flashs[ComboBox1.ItemIndex + 1].Flash.Position := 0;
  Memo1.Lines.LoadFromStream(sfFlashList1.Flashs[ComboBox1.ItemIndex + 1].Flash);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  S: String;
begin
  if Memo1.Lines.Count = 0 then Exit;
  sfFlashList1.Flashs[ComboBox1.ItemIndex + 1].Flash.Clear;
  Memo1.Lines.SaveToStream(sfFlashList1.Flashs[ComboBox1.ItemIndex + 1].Flash);
  S := 'open-flash-chart.swf?data-file=' + ComboBox1.Text;
  sfFlashPlayer1.LoadMovie(0, ''); // refresh flash
  sfFlashPlayer1.LoadMovie(0, S);
end;

end.

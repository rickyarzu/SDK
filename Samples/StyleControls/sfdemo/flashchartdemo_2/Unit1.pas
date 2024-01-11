unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  sf_flash, jpeg, ExtCtrls, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    sfFlashPlayer1: TsfFlashPlayer;
    sfFlashList1: TsfFlashList;
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    XPManifest1: TXPManifest;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
var
  S: String;
begin
  S := 'Gantt.swf?dataURL=Gantt.xml';
  sfFlashPlayer1.LoadMovie(0, S);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  sfFlashList1.Flashs[1].Flash.Position := 0;
  Memo1.Lines.LoadFromStream(sfFlashList1.Flashs[1].Flash);
end;


procedure TForm1.Button2Click(Sender: TObject);
var
  S: String;
begin
  if Memo1.Lines.Count = 0 then Exit;
  sfFlashList1.Flashs[1].Flash.Clear;
  Memo1.Lines.SaveToStream(sfFlashList1.Flashs[1].Flash);
  S := 'Gantt.swf?dataURL=Gantt.xml';
  sfFlashPlayer1.LoadMovie(0, '');
  sfFlashPlayer1.LoadMovie(0, S);
end;


end.

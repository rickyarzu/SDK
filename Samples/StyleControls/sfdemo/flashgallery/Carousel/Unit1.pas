unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  sf_flash, jpeg, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    sfFlashPlayer1: TsfFlashPlayer;
    sfFlashList1: TsfFlashList;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  sfFlashPlayer1.LoadMovie(0, 'carousel.swf?xmlfile=default.xml');
end;

end.

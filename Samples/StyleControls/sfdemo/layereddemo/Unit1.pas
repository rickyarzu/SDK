unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  sf_flash, StdCtrls, Menus, ShellAPI;

type
  TForm1 = class(TForm)
    sfFlashPlayer1: TsfFlashPlayer;
    sfFlashList1: TsfFlashList;
    sfLayeredFlashForm1: TsfLayeredFlashForm;
    PopupMenu1: TPopupMenu;
    Dragable1: TMenuItem;
    N1: TMenuItem;
    Close1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Dragable1Click(Sender: TObject);
    procedure sfFlashPlayer1HandleFSCommand(ASender: TObject;
      const command, args: WideString);
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
  sfFlashPlayer1.FlashIndex := 0;
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Dragable1Click(Sender: TObject);
begin
  Dragable1.Checked := not Dragable1.Checked;
  sfLayeredFlashForm1.Dragable := Dragable1.Checked;
end;

procedure TForm1.sfFlashPlayer1HandleFSCommand(ASender: TObject;
  const command, args: WideString);
begin
  if (command = 'website') and (args  = 'open')
  then
    begin
      ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
    end
  else
  if (command = 'closeabout')
  then
    begin
      Close;
    end;
end;

end.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  sf_flash, StdCtrls, ExtCtrls, ImgList, ShellApi;

type
  TForm1 = class(TForm)
    Image1: TImage;
    sfFlashPlayer1: TsfFlashPlayer;
    sfFlashList1: TsfFlashList;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    sfFlashPlayer2: TsfFlashPlayer;
    procedure FormCreate(Sender: TObject);
    procedure sfFlashPlayer2HandleFSCommand(ASender: TObject;
      const command, args: WideString);
    procedure sfFlashPlayer1HandleFSCommand(ASender: TObject;
      const command, args: WideString);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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



procedure TForm1.FormCreate(Sender: TObject);
begin
  OpenDialog.InitialDir := ExtractFilePath(Application.ExeName);
  sfFlashPlayer1.FlashIndex := 0;
  sfFlashPlayer2.FlashIndex := 3;
  FLoadFromFile := False;
  FLoadFromStore := True;
  StoreIndex := 0;
end;


procedure TForm1.sfFlashPlayer2HandleFSCommand(ASender: TObject;
  const command, args: WideString);
var
  FlashB: TBitMap;
begin
  if args  = 'about'
  then
    begin
      sfFlashPlayer1.FlashIndex := 4;
    end
  else
  if args  = 'transparent'
  then
    begin
      sfFlashPlayer1.Transparent := not sfFlashPlayer1.Transparent;
    end
  else
  if args  = 'grabframe'
  then
    begin
      FlashB := sfFlashPlayer1.GrabToBmp;
      if SaveDialog.Execute
      then
        FlashB.SaveToFile(SaveDialog.FileName);
      FlashB.Free;
    end
  else
  if args  = 'loadflash'
  then
    begin
     if OpenDialog.Execute
     then
       begin
         sfFlashPlayer1.LoadMovie(0, OpenDialog.FileName);
         FLoadFromFile := True;
         FLoadFromStore := False;
       end;
    end
    else
    if args  = 'loadstored'
    then
      begin
        if sfFlashPlayer1.FlashIndex = 4
        then
          sfFlashPlayer1.FlashIndex := 0
        else
        if sfFlashPlayer1.FlashIndex = 0
        then
          sfFlashPlayer1.FlashIndex := 1
        else
        if sfFlashPlayer1.FlashIndex = 1
        then
          sfFlashPlayer1.FlashIndex := 2
        else
        if sfFlashPlayer1.FlashIndex = 2
        then
         sfFlashPlayer1.FlashIndex := 0;
        FLoadFromFile := False;
        FLoadFromStore := True;
        StoreIndex := sfFlashPlayer1.FlashIndex;
     end;
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
      if FLoadFromStore
      then
        sfFlashPlayer1.FlashIndex := StoreIndex
      else
        sfFlashPlayer1.LoadMovie(0, OpenDialog.FileName);
    end;
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

end.

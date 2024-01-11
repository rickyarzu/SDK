unit extapifrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sf_flash, XPMan;

type
  TForm8 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    sfFlashPlayer1: TsfFlashPlayer;
    sfFlashList1: TsfFlashList;
    XPManifest1: TXPManifest;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sfFlashPlayer1FlashCall(ASender: TObject;
      const request: WideString);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
  // call "setText" function declared in Flash
  sfFlashPlayer1.CallFunction('<invoke name="mySetText" returntype="xml"><arguments><string>' + Memo1.Lines.Text + ' using External API - calling flash declared function mySetText</string></arguments></invoke>');
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  sfFlashPlayer1.SetVariable('mytext1.text', Memo1.Lines.Text + ' using SetVariable method of TsfFlashPlayer');
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  sfFlashPlayer1.FlashIndex := 0;
end;

procedure TForm8.sfFlashPlayer1FlashCall(ASender: TObject;
  const request: WideString);
begin
  // this method called from Flash
  // SetReturnValue return value to flash using External API
  sfFlashPlayer1.SetReturnValue('<string>' + Memo1.Lines.Text + ' using FlashCall and SetReturnValue</string>');
end;

end.

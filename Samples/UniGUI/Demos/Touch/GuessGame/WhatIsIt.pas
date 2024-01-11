unit WhatIsIt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses, uniMemo, unimMemo,
  uniMultiItem, unimList, uniLabel, unimLabel;

type
  TUnimForm1 = class(TUnimForm)
    UnimLabel1: TUnimLabel;
    procedure UnimFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UnimForm1: TUnimForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UnimForm1: TUnimForm1;
begin
  Result := TUnimForm1(UniMainModule.GetFormInstance(TUnimForm1));
end;

procedure TUnimForm1.UnimFormShow(Sender: TObject);
begin
  UnimLabel1.Caption := 'When the game starts, it chooses a four digit number.<br />'
  +' You have 3 lives, that means you have 3 rigths to guess. If you guess a number correctly<br />'
  +' you see apply image under that number. If you guess a number wrong there will be two different results.<br />'
  +' if your number is smaller than estimated number you see an up arrow image, otherwise you will see a down arrow image.<br />'
  +' For example if the number is 4827 and your guess is 4371, you see apply, down arrow, up arrow and down arrow '
  +' If you guess whole number correct will win the game. Have fun!';
end;

end.

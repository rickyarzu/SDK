// HTML5 Audio = Miscellaneous
unit MiscellaneousHTML5Audio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniSyntaxEditor, uniButton, uniPanel,
  uniHTMLFrame, uniGUIBaseClasses;

type
  TUniMiscellaneousHTML5Audio = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniHTMLFrame1: TUniHTMLFrame;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniHTMLFrame2: TUniHTMLFrame;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniSyntaxEdit2: TUniSyntaxEdit;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniSyntaxEdit3: TUniSyntaxEdit;
    UniHTMLFrame3: TUniHTMLFrame;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniMiscellaneousHTML5Audio.UniButton2Click(Sender: TObject);
begin
  UniSession.SendResponse('audio2.load(); audio2.play();');
end;

procedure TUniMiscellaneousHTML5Audio.UniButton4Click(Sender: TObject);
begin
  UniSession.SendResponse('var ael=document.getElementById("player2");ael.load();ael.play()');
end;

procedure TUniMiscellaneousHTML5Audio.UniButton5Click(Sender: TObject);
begin
  UniSession.SendResponse('var ael=document.getElementById("player3");ael.load();ael.play()');
end;

procedure TUniMiscellaneousHTML5Audio.UniFrameCreate(Sender: TObject);
begin
  UniSyntaxEdit1.Text:=UniHTMLFrame1.HTML.Text;
  UniSyntaxEdit2.Text:=UniHTMLFrame2.HTML.Text;
  UniSyntaxEdit3.Text:=UniHTMLFrame3.HTML.Text;
end;

initialization
  RegisterClass(TUniMiscellaneousHTML5Audio);
end.

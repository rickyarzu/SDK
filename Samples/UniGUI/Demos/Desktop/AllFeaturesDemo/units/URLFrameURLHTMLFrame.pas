// URL HTMLFrame = URLFrame
unit URLFrameURLHTMLFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniBitBtn, uniURLFrame,
  uniSyntaxEditor, uniGUIBaseClasses, uniPanel;

type
  TUniURLFrameURLHTMLFrame = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniHTMLFrame1: TUniURLFrame;
    UniBitBtn1: TUniBitBtn;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniURLFrameURLHTMLFrame.UniBitBtn1Click(Sender: TObject);
begin
  UniHTMLFrame1.HTML.Text:=UniSyntaxEdit1.Text;
end;

procedure TUniURLFrameURLHTMLFrame.UniFrameCreate(Sender: TObject);
begin
  UniSyntaxEdit1.Lines.Text := UniHTMLFrame1.HTML.Text;
end;

initialization
  RegisterClass(TUniURLFrameURLHTMLFrame);

end.

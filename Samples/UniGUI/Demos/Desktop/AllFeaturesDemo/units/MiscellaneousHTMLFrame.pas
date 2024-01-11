// HTML Frame = Miscellaneous
unit MiscellaneousHTMLFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniBitBtn, uniPanel, uniHTMLFrame,
  uniGUIBaseClasses, uniSyntaxEditor;

type
  TUniMiscellaneousHTMLFrame = class(TUniFrame)
    UniSyntaxEdit1: TUniSyntaxEdit;
    UniHTMLFrame1: TUniHTMLFrame;
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


procedure TUniMiscellaneousHTMLFrame.UniBitBtn1Click(Sender: TObject);
begin
  UniHTMLFrame1.HTML.Text:=UniSyntaxEdit1.Text;
end;

procedure TUniMiscellaneousHTMLFrame.UniFrameCreate(Sender: TObject);
begin
  UniSyntaxEdit1.Lines.Text := UniHTMLFrame1.HTML.Text;
end;

initialization
  RegisterClass(TUniMiscellaneousHTMLFrame);

end.

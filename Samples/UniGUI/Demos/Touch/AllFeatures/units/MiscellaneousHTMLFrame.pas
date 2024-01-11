//HTML Frame = Miscellaneous
unit MiscellaneousHTMLFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, unimButton, uniMemo, unimMemo,
  uniPanel, uniHTMLFrame, unimHTMLFrame, uniGUIBaseClasses, uniGUImJSForm,
  uniBitBtn, unimBitBtn;

type
  TUniMiscellaneousHTMLFrame = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimHTMLFrame1: TUnimHTMLFrame;
    UnimMemo1: TUnimMemo;
    UnimBitBtn1: TUnimBitBtn;
    procedure UniFrameCreate(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniMiscellaneousHTMLFrame.UniFrameCreate(Sender: TObject);
begin
  UnimMemo1.Lines.Text := UnimHTMLFrame1.HTML.Text;
end;

procedure TUniMiscellaneousHTMLFrame.UnimBitBtn1Click(Sender: TObject);
begin
  UnimHTMLFrame1.HTML.Text:=UnimMemo1.Text;
end;

initialization
  RegisterClass(TUniMiscellaneousHTMLFrame);

end.

// HTML Editor = Form Controls
unit FormControlsHTMLEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, UniHTMLMemo, uniButton, uniMemo,
  uniGUIBaseClasses, uniPanel;

type
  TUniFormControlsHTMLEditor = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniHTMLMemo1: TUniHTMLMemo;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsHTMLEditor.UniButton1Click(Sender: TObject);
begin
  UniHTMLMemo1.ShowToolbar:=not UniHTMLMemo1.ShowToolbar;
end;

procedure TUniFormControlsHTMLEditor.UniButton2Click(Sender: TObject);
begin
  UniMemo1.Text:=UniHTMLMemo1.Text;
end;

procedure TUniFormControlsHTMLEditor.UniButton3Click(Sender: TObject);
begin
  UniHTMLMemo1.Text:=UniMemo1.Text;
end;

procedure TUniFormControlsHTMLEditor.UniFrameCreate(Sender: TObject);
begin
  UniHTMLMemo1.Lines.Text:='<b>HTML</b> <i>formatting</i> <u>is fun...</u><br>';
end;

initialization
  RegisterClass(TUniFormControlsHTMLEditor);
end.

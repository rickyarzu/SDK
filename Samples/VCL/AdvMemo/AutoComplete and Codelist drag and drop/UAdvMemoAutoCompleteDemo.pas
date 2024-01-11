{ ************************************************************************* }
{ TAdvMemo, TDBAdvMemo demo application }
{ }
{ written by TMS Software }
{ copyright © 1998-2019 }
{ Email : info@tmssoftware.Com }
{ Web : https://www.tmssoftware.com }
{ }
{ The source code is given as is. The author is not responsible }
{ for any possible damage done due to the use of this code. }
{ The component can be freely used in any application. The complete }
{ source code remains property of the author and may not be distributed, }
{ published, given or sold in any form as such. No parts of the source }
{ code can be included in any other component or application without }
{ written authorization of the author. }
{ ************************************************************************* }
unit UAdvMemoAutoCompleteDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvMemo, AdvmPS, StdCtrls, AdvCodeList, XPMan, ExtCtrls, ShellAPI;

const
  crlf: string = #13 + #10;

type
  TForm1 = class(TForm)
    AdvMemo1: TAdvMemo;
    AdvMemo2: TAdvMemo;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    AdvCodeList1: TAdvCodeList;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    FileOpenDialog1: TFileOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure AdvCodeList1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvCodeList1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure AdvMemo1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvMemo1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure AdvMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure Label4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdvCodeList1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  AdvCodeList1.CodeBlocks.Add(AdvMemo1.Selection);
  AdvCodeList1.CodeBlocks[AdvCodeList1.CodeBlocks.Count - 1].ImageIndex := 0;
end;

procedure TForm1.AdvCodeList1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
  Accept := (Source is TAdvMemo);
end;

procedure TForm1.AdvMemo1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if (Source is TAdvCodeList) then
  begin
    AdvMemo1.DropText(X, Y, AdvCodeList1.CodeBlocks.Items[AdvCodeList1.itemindex].Code.Text);
  end;
end;

procedure TForm1.AdvMemo1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
  Accept := true;
end;

procedure TForm1.AdvMemo2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and (AdvMemo2.Lines[AdvMemo2.ActiveLine] <> '') then
  begin
    AdvPascalMemoStyler1.AllStyles[0].KeyWords.Add(AdvMemo2.Lines[AdvMemo2.ActiveLine].Trim);
    AdvPascalMemoStyler1.AutoCompletion.Add(AdvMemo2.Lines[AdvMemo2.ActiveLine].Trim);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ridx: Integer;
begin
  if Self.FileOpenDialog1.Execute then
    AdvMemo1.Lines.LoadFromFile(FileOpenDialog1.FileName);
  with AdvPascalMemoStyler1.AutoCompletion do
  begin
    for ridx := 0 to AdvPascalMemoStyler1.AllStyles[0].KeyWords.Count - 1 do
      Add(AdvPascalMemoStyler1.AllStyles[0].KeyWords[ridx]);
    for ridx := 0 to Count - 1 do
      AdvMemo2.Lines.Add(AdvPascalMemoStyler1.AutoCompletion.Strings[ridx]);

    AdvCodeList1.CodeBlocks.Add('for idx := min to max do' + crlf + '  begin' + crlf + '  end;');
    AdvCodeList1.CodeBlocks.Add('if = then' + crlf + '  begin' + crlf + '  end;');
    AdvCodeList1.CodeBlocks.Add('if = then' + crlf + '  begin' + crlf + '  end' + crlf + 'else' + crlf +
      '  begin' + crlf + '  end;');
    AdvCodeList1.CodeBlocks.Add('case   of ' + crlf + 'end;');
    AdvCodeList1.CodeBlocks.Add('while () do' + crlf + 'begin' + crlf + 'end;');
    AdvCodeList1.CodeBlocks.Add('repeat' + crlf + crlf + 'until ();');
    AdvCodeList1.CodeBlocks.Add('try' + crlf + 'finally' + crlf + 'end;');
    AdvCodeList1.CodeBlocks.Add('try' + crlf + 'exept' + crlf + 'end;');
    AdvCodeList1.CodeBlocks.Add('procedure ();' + crlf + '  begin' + crlf + '  end;');
    AdvCodeList1.CodeBlocks.Add('function();' + crlf + '  begin' + crlf + '  end;');
  end;
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
  ShellExecute(handle, 'open', 'https://tmssoftware.com/site/tmsvcluipack.asp', nil, nil, SW_SHOWNORMAL);
end;

end.

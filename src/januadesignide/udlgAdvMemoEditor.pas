{ ******************************************************************** }
{ TAdvMemo demo }
{ for Delphi 5,6,7 & C++Builder 5,6 }
{ version 1.5.0.7 }
{ }
{ written by TMS Software }
{ copyright © 2001-2004 }
{ Email : info@tmssoftware.com }
{ Website : http://www.tmssoftware.com }
{ ******************************************************************** }
unit udlgAdvMemoEditor;

interface

uses
  // System
  Windows, Messages, System.SysUtils, System.Classes, System.Actions,
  // VCL
  VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls, AdvCodeList, VCL.Buttons,
  VCL.ComCtrls, VCL.ImgList, System.Contnrs, VCL.ActnList,
  // Tms
  System.ImageList, advmjson, AdvMemo, Advmps, AdvMemoActions, AdvmWS, AdvmPYS, AdvmCSS, AdvmBS,
  // Janua
  Janua.Core.Types
{$IFDEF VER150}
    , Xpman
{$ENDIF}
    ;

type
  TdlgAdvMemoEditor = class(TForm)
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    Panel1: TPanel;
    AdvMemoFindDialog1: TAdvMemoFindDialog;
    AdvMemoFindReplaceDialog1: TAdvMemoFindReplaceDialog;
    AdvCodeList1: TAdvCodeList;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    TabControl1: TTabControl;
    AdvMemo1: TAdvMemo;
    SpeedButton3: TSpeedButton;
    ImageList1: TImageList;
    OpenDialog1: TOpenDialog;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ActionList1: TActionList;
    AdvMemoCut1: TAdvMemoCut;
    AdvMemoCopy1: TAdvMemoCopy;
    AdvMemoPaste1: TAdvMemoPaste;
    AdvMemoUndo1: TAdvMemoUndo;
    AdvMemoRedo1: TAdvMemoRedo;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    CheckBox1: TCheckBox;
    StatusBar1: TStatusBar;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    AdvJSMemoStyler1: TAdvJSMemoStyler;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    AdvPythonMemoStyler1: TAdvPythonMemoStyler;
    AdvBasicMemoStyler1: TAdvBasicMemoStyler;
    AdvCSSMemoStyler1: TAdvCSSMemoStyler;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    SpeedButton12: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure AdvMemo1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure AdvMemo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AdvCodeList1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvCodeList1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
      var Accept: Boolean);
    procedure AdvMemo1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure AdvCodeList1BlockClick(Sender: TObject; ACodeBlock: TCodeBlock);
    procedure AdvCodeList1BlockInsertFromClipboard(Sender: TObject; ACodeBlock: TCodeBlock);
  private
    FScriptType: TJanuaScriptType;
    procedure SetScriptType(const Value: TJanuaScriptType);
    { Private declarations }
  public
    { Public declarations }
    SourceList: TObjectList;
    SourceIndex: Integer;
  public
    property ScritpType: TJanuaScriptType read FScriptType write SetScriptType;
  end;

var
  dlgAdvMemoEditor: TdlgAdvMemoEditor;

implementation

uses Janua.Core.Functions;

{$R *.dfm}

procedure TdlgAdvMemoEditor.FormCreate(Sender: TObject);
begin
  try
    SourceList := TObjectList.Create;
    SourceList.Add(TAdvMemoSource.Create(self));
    TAdvMemoSource(SourceList.Items[SourceIndex]).SyntaxStyler := AdvMemo1.SyntaxStyles;
    SourceIndex := 0;
    AdvMemo1.MemoSource := TAdvMemoSource(SourceList.Items[SourceIndex]);
  except
    on e: exception do
      raise exception.Create('TdlgAdvMemoEditor.FormCreate ' + e.Message);
  end;
end;

procedure TdlgAdvMemoEditor.AdvMemo1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
  Accept := true;
end;

procedure TdlgAdvMemoEditor.AdvMemo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  // shortcut key handling for find & replace

  if (Key = ord('F')) and (ssCtrl in Shift) then
  begin
    AdvMemoFindDialog1.Execute;
  end;
  if (Key = ord('H')) and (ssCtrl in Shift) then
  begin
    AdvMemoFindReplaceDialog1.Execute;
  end;

  if Key = vk_F3 then
  begin
    AdvMemo1.FindText(AdvMemoFindDialog1.FindText, AdvMemoFindDialog1.Options);
  end;
end;

procedure TdlgAdvMemoEditor.AdvCodeList1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  AdvCodeList1.CodeBlocks.Add(AdvMemo1.Selection);
  AdvCodeList1.CodeBlocks[AdvCodeList1.CodeBlocks.Count - 1].ImageIndex := 0;
end;

procedure TdlgAdvMemoEditor.AdvCodeList1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TAdvMemo);
end;

procedure TdlgAdvMemoEditor.AdvMemo1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if (Source is TAdvCodeList) then
  begin
    AdvMemo1.DropText(X, Y, AdvCodeList1.CodeBlocks.Items[AdvCodeList1.itemindex].Code.Text);
  end;
end;

procedure TdlgAdvMemoEditor.SpeedButton1Click(Sender: TObject);
begin
  AdvMemo1.Undo;
end;

procedure TdlgAdvMemoEditor.SpeedButton2Click(Sender: TObject);
begin
  AdvMemo1.Redo;
end;

procedure TdlgAdvMemoEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AdvMemo1.MemoSource := nil;
  SourceList.Free;
end;

procedure TdlgAdvMemoEditor.SpeedButton3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    SourceList.Add(TAdvMemoSource.Create(self));

    TAdvMemoSource(SourceList.Items[SourceList.Count - 1]).Lines.LoadFromFile(OpenDialog1.filename);
    TAdvMemoSource(SourceList.Items[SourceList.Count - 1]).SyntaxStyler := AdvMemo1.SyntaxStyles;
    SourceIndex := SourceList.Count - 1;
    TabControl1.Tabs.Add(OpenDialog1.filename);
    TabControl1.TabIndex := TabControl1.Tabs.Count - 1;
    AdvMemo1.MemoSource := TAdvMemoSource(SourceList.Items[SourceIndex]);
    AdvMemo1.CurX := 0;
    AdvMemo1.CurY := 0;
    AdvMemo1.SetFocus;
  end;
end;

procedure TdlgAdvMemoEditor.TabControl1Change(Sender: TObject);
begin
  SourceIndex := TabControl1.TabIndex;
  AdvMemo1.MemoSource := TAdvMemoSource(SourceList.Items[SourceIndex]);
end;

procedure TdlgAdvMemoEditor.SpeedButton7Click(Sender: TObject);
begin
  AdvMemo1.Clear;
end;

procedure TdlgAdvMemoEditor.SpeedButton8Click(Sender: TObject);
begin
  AdvMemoFindDialog1.Execute;
end;

procedure TdlgAdvMemoEditor.SpeedButton9Click(Sender: TObject);
begin
  AdvMemoFindReplaceDialog1.Execute;
end;

procedure TdlgAdvMemoEditor.SetScriptType(const Value: TJanuaScriptType);
begin
  FScriptType := Value;
  case self.FScriptType of
    jstUnknown:
      begin
      end;
    jstJson:
      begin
      end;
    jstJavascript:
      begin
      end;
    jstPython:
      begin
      end;
    jstSQL:
      begin
      end;
    jstHtml:
      begin
      end;
    jstPascal:
      begin
      end;
    jstCSS:
      begin
      end;
    jstCSharp:
      begin
      end;
    jstBasic:
      begin
      end;
  end;
end;

procedure TdlgAdvMemoEditor.SpeedButton10Click(Sender: TObject);
begin
  AdvMemo1.MemoSource.Lines.SaveToFile(TabControl1.Tabs[TabControl1.TabIndex]);
end;

procedure TdlgAdvMemoEditor.SpeedButton11Click(Sender: TObject);
{
  var
  idx: Integer;
}
begin
  if SourceList.Count = 0 then
    Exit;

  // idx := SourceIndex;

  AdvMemo1.MemoSource := nil;
  SourceList.Delete(SourceIndex);
  TabControl1.Tabs.Delete(SourceIndex);

  if (SourceIndex > 0) then
  begin
    dec(SourceIndex);
    AdvMemo1.MemoSource := TAdvMemoSource(SourceList.Items[SourceIndex]);
    TabControl1.TabIndex := SourceIndex;
  end
  else
    AdvMemo1.Clear;
end;

procedure TdlgAdvMemoEditor.CheckBox1Click(Sender: TObject);
begin
  AdvCodeList1.ClipboardView := CheckBox1.Checked;
end;

procedure TdlgAdvMemoEditor.AdvCodeList1BlockClick(Sender: TObject; ACodeBlock: TCodeBlock);
begin
  ShowMessage(ACodeBlock.Code.Text);
end;

procedure TdlgAdvMemoEditor.AdvCodeList1BlockInsertFromClipboard(Sender: TObject;
  ACodeBlock: TCodeBlock);
begin
  // set image as clipboard icon
  ACodeBlock.ImageIndex := 1;
end;

end.

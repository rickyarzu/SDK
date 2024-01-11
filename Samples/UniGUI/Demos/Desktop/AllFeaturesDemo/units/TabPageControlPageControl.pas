// Page Control = Tab - PageControl
unit TabPageControlPageControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniPageControl, uniGUIBaseClasses,
  uniBasicGrid, uniStringGrid, uniRadioGroup, uniCheckBox, uniMemo, uniLabel,
  uniEdit, UniHTMLMemo, uniCalendar, uniMultiItem, uniListBox;

type
  TUniTabPageControlPageControl = class(TUniFrame)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    UniTabSheet5: TUniTabSheet;
    UniEdit1: TUniEdit;
    UniLabel1: TUniLabel;
    UniMemo1: TUniMemo;
    UniCheckBox1: TUniCheckBox;
    UniRadioGroup1: TUniRadioGroup;
    UniStringGrid1: TUniStringGrid;
    UniListBox1: TUniListBox;
    UniCalendar1: TUniCalendar;
    UniHTMLMemo1: TUniHTMLMemo;
    procedure UniTabSheet2Close(Sender: TObject; var AllowClose: Boolean);
    procedure UniTabSheet4Close(Sender: TObject; var AllowClose: Boolean);
    procedure UniTabSheet5Close(Sender: TObject; var AllowClose: Boolean);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CallBack(Sender: Tcomponent; AResult: Integer);
  end;

implementation

{$R *.dfm}

procedure TUniTabPageControlPageControl.CallBack(Sender: Tcomponent; AResult: Integer);
begin
  if AResult=mrYes then
    UniTabSheet4.Free;
end;


procedure TUniTabPageControlPageControl.UniFrameCreate(Sender: TObject);
var
  I,J: Integer;
begin
  UniStringGrid1.Cells[0, 0] := 'Row \ Col';
  for I := 1 to UniStringGrid1.ColCount - 1 do
    UniStringGrid1.Cells[I, 0] := 'Col'+IntToStr(I);
  for I := 1 to UniStringGrid1.RowCount - 1 do
    UniStringGrid1.Cells[0, I] := 'Row'+IntToStr(I);
  for I := 1 to UniStringGrid1.ColCount - 1 do
    for J := 1 to UniStringGrid1.RowCount - 1 do
      UniStringGrid1.Cells[I, J]:=IntToStr(Random(3000));
end;

procedure TUniTabPageControlPageControl.UniTabSheet2Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  AllowClose:=False;
  ShowMessage('Closing not allowed.');
end;

procedure TUniTabPageControlPageControl.UniTabSheet4Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  AllowClose:=False;
  MessageDlg('Close Tab?', mtConfirmation, mbYesNo, CallBack);
end;

procedure TUniTabPageControlPageControl.UniTabSheet5Close(Sender: TObject;
  var AllowClose: Boolean);
begin
  ShowMessage('Tab Closed.');
end;

initialization
  RegisterClass(TUniTabPageControlPageControl);

end.

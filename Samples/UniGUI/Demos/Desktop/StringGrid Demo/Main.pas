//AllFeatures: StringGrid,Basic Demo,icon-gridheader-tools
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid,
  uniStringGrid, uniButton, uniMemo, uniPanel, uniSplitter;

type
  TMainForm = class(TUniForm)
    UniStringGrid1: TUniStringGrid;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniContainerPanel1: TUniContainerPanel;
    UniSplitter1: TUniSplitter;
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string; Attribs: TUniCellAttribs);
  private
    procedure valueChange(Ix,Jx:Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniStrUtils;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
var
  I,J : Integer;
  val : array[0..20] of string;
  year : array[0..20] of string;
begin
  UniMemo1.Clear;

  for I := 0 to 20 do
  begin
    val[I] := '';
    year[I] := UniStringGrid1.Cells[0, I];
    for J := 1 to 12 do
      val[I] := val[I] + UniStringGrid1.Cells[J, I] + ',';

    val[I] := RemoveTrailingChar(val[I], ',');
  end;

  for I := 0 to 20 do
  begin
    UniMemo1.Lines.Add('------');
    UniMemo1.Lines.Add(year[I]);
    UniMemo1.Lines.Add(val[I]);
  end;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  // To increase render speed use "BeginUpdate / EndUpdate" when updating large number of cells
  UniStringGrid1.BeginUpdate;
  try
    valueChange(14, 21);
  finally
    UniStringGrid1.EndUpdate;
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I, J: Integer;
begin
  valueChange(12, 20);

  for I := 0 to 20 do
    UniStringGrid1.Cells[0, I] := IntToStr(1995+I);
end;

procedure TMainForm.UniStringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  var Value: string; Attribs: TUniCellAttribs);
begin
  if (ACol > 5) and (ARow > 4) then
    Attribs.Font.Color := Random($FFFFFF);
end;

procedure TMainForm.valueChange(Ix,Jx: Integer);
var
  I, J: Integer;
begin
  for I := 1 to Ix do
    for J := 0 to Jx do
      UniStringGrid1.Cells[I,J] := IntToStr(Random(10000) + 1000);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

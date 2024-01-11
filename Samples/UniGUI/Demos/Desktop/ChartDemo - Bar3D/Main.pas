//AllFeatures: Chart,Chart - Basic Demo,icon-area-charts
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, StdCtrls, 
  UniButton, Grids, UniStringGrid, uniChart, uniLabel,
  uniGUIRegClasses,  uniguiclasses, UniBasicGrid, UniPanel, uniGUIBaseClasses;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    UniChart1: TUniChart;
    Series1: TUniHorizBar3DSeries;
    Series2: TUniHorizBar3DSeries;
    Series3: TUniHorizBar3DSeries;
    Series4: TUniBar3DSeries;
    Series5: TUniBar3DSeries;
    UniStringGrid1: TUniStringGrid;
    UniButton1: TUniButton;
    UniChart2: TUniChart;
    procedure UniFormCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ApplyChanges;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  ApplyChanges;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
var
  I : Integer;
begin
  for I := 0 to 5 do
  begin
    UniStringGrid1.Cells[0,I] := IntToStr(2000 + I);
    UniStringGrid1.Cells[1,I] := IntToStr(Random(100) + 50);
  end;
  ApplyChanges;
end;

procedure TMainForm.ApplyChanges;
var
  I : Integer;
  Val : Double;
  Head : string;
begin
  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;
  Series5.Clear;
  for I := 0 to UniStringGrid1.RowCount - 1 do
  begin
    if UniStringGrid1.Cells[0,I] = '' then Break;

    Val := StrToFloatDef(UniStringGrid1.Cells[1,I], 0.0);
    Head := UniStringGrid1.Cells[0,I];
    Series1.Add(Val, Head);
    Series2.Add(Val + Random(200), Head);
    Series3.Add(Val + Random(200), Head);

    Series4.Add(Val, Head);
    Series5.Add(Val + Random(200), Head);
  end;
end;

initialization
  RegisterMainFormClass(TMainForm);

end.

unit uFrmHCLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, Datasnap.DBClient, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSHighCharts, UnimFSHighCharts;

type
  TFrmHCLine = class(TUnimForm)
    CDS: TClientDataSet;
    HighCharts: TUnimFSHighCharts;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    procedure LoadData;
  public
    { Public declarations }
  end;

function FrmHCLine: TFrmHCLine;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmHCLine: TFrmHCLine;
begin
  Result := TFrmHCLine(UniMainModule.GetFormInstance(TFrmHCLine));
end;

{ TFrmHCLine }

procedure TFrmHCLine.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Task', ftString,20);
    FieldDefs.Add('Cust', ftFloat);
    FieldDefs.Add('Hours per Day', ftInteger);
    CreateDataSet;
    AppendRecord(['Work', 25.20, 11]);
    AppendRecord(['Eat', 40, 2]);
    AppendRecord(['Commute', 35.60, 2]);
    AppendRecord(['Watch TV', 10, 10]);
    AppendRecord(['Sleep', 30, 7]);
  end;
end;

procedure TFrmHCLine.UnimFormCreate(Sender: TObject);
begin
  LoadData;
  HighCharts.LoadChart;
end;

procedure TFrmHCLine.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  if TUnimTitleButton(Sender).ButtonId = 1 then
  begin
    HighCharts.LoadChart;
  end;
end;

end.

unit uFrmBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, Datasnap.DBClient, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSGoogleChart, UnimFSGoogleChart;

type
  TfrmBar = class(TUnimForm)
    GoogleChart: TUnimFSGoogleChart;
    CDS: TClientDataSet;
    procedure UnimFormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
  public
    { Public declarations }
  end;

function frmBar: TfrmBar;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmBar: TfrmBar;
begin
  Result := TfrmBar(UniMainModule.GetFormInstance(TfrmBar));
end;

{ TfrmBar }

procedure TfrmBar.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Periodo', ftString, 10);
    FieldDefs.Add('Meta Mês', ftFloat);
    FieldDefs.Add('Valor Venda', ftFloat);
    CreateDataSet;
    AppendRecord(['202102', 250000, 26630.36]);
    AppendRecord(['202103', 300000, 18245.19]);
    AppendRecord(['202104', 300000, 23288.36]);
    AppendRecord(['202105', 1000000, 20718.99]);
    AppendRecord(['202106', 1000000, 36037.77]);
    AppendRecord(['202107', 500000, 13620]);
  end;
end;

procedure TfrmBar.UnimFormCreate(Sender: TObject);
begin
  LoadData;
  GoogleChart.LoadChart;
end;

end.

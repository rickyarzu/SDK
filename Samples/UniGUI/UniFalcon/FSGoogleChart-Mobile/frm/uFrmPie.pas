unit uFrmPie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  Data.DB, Datasnap.DBClient, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSGoogleChart, UnimFSGoogleChart;

type
  TfrmPie = class(TUnimForm)
    GoogleChart: TUnimFSGoogleChart;
    CDS: TClientDataSet;
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);
  private
    procedure LoadData;
  public
    { Public declarations }
  end;

function frmPie: TfrmPie;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmPie: TfrmPie;
begin
  Result := TfrmPie(UniMainModule.GetFormInstance(TfrmPie));
end;

{ TfrmPie }

procedure TfrmPie.LoadData;
begin
  with CDS do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Pais', ftString,20);
    FieldDefs.Add('Popularidade', ftInteger);
    CreateDataSet;
    AppendRecord(['Germany', 200]);
    AppendRecord(['United States', 300]);
    AppendRecord(['Brazil', 400]);
    AppendRecord(['Canada', 500]);
    AppendRecord(['France', 600]);
    AppendRecord(['RU', 700]);
  end;
end;

procedure TfrmPie.UnimFormCreate(Sender: TObject);
begin
  LoadData;
  GoogleChart.LoadChart;
end;

procedure TfrmPie.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  case TUnimTitleButton(Sender).ButtonId of
    1 : GoogleChart.LoadChart;
  end;
end;

end.

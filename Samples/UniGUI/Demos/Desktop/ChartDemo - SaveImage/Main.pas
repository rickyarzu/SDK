//AllFeatures: Chart,Chart - Save Image,icon-financial-charts
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniChart, uniGUIBaseClasses,
  uniPanel, Data.DB, Datasnap.DBClient, uniButton, uniHTMLFrame, uniImage;

type
  TMainForm = class(TUniForm)
    UniChart1: TUniChart;
    UniButton1: TUniButton;
    UniPieSeries1: TUniPieSeries;
    procedure UniButton1Click(Sender: TObject);
    procedure UniChart1ChartImage(Sender: TUniCustomChart; Image: TGraphic);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniChart1.SaveImage;
end;

procedure TMainForm.UniChart1ChartImage(Sender: TUniCustomChart; Image: TGraphic);
var
  fName : string;
begin
  fName := UniServerModule.LocalCachePath + 'Chart.png';
  Image.SaveToFile(fName);
  UniSession.SendFile(fName);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniPieSeries1.Add(100, 'Value1');
  UniPieSeries1.Add(140, 'Value2');
  UniPieSeries1.Add(200, 'Value3');
  UniPieSeries1.Add(10, 'Value4');
  UniPieSeries1.Add(25, 'Value5');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

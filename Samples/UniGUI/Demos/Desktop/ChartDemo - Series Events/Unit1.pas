unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniBitBtn,
  uniSpeedButton, uniToolBar, uniChart, uniPanel;

type
  TUniForm1 = class(TUniForm)
    UniChart1: TUniChart;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniGaugeSeries1: TUniGaugeSeries;
    procedure UniToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      procedure ShowChart(const Value: Real);
  end;

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;

procedure TUniForm1.ShowChart(const Value: Real);
begin
  UniGaugeSeries1.Clear;
  UniGaugeSeries1.Add(Value, 'Index');
  Self.Show();
end;

procedure TUniForm1.UniToolButton1Click(Sender: TObject);
begin
  Close;
end;

end.

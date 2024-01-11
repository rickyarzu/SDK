unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniWidgets, uniPanel,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, DB, uniImageList, uniDBNavigator;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    UniButtonWidget1: TUniButtonWidget;
    UniSliderWidget1: TUniSliderWidget;
    UniProgressbarWidget1: TUniProgressbarWidget;
    UniProgressbarWidget2: TUniProgressbarWidget;
    UniDBNavigator1: TUniDBNavigator;
    UniSparklineLineWidget1: TUniSparklineLineWidget;
    procedure UniButtonWidget1Click(Sender: TObject);
    procedure UniSparklineLineWidget1GetData(const DataSet: TDataSet;
      var Data: UniExtendedArray);
  private
    { Private declarations }
  public
    { Public declarations }
    XArray : array of UniExtendedArray;
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButtonWidget1Click(Sender: TObject);
begin
  UniForm1.ShowModal();
end;

procedure TMainForm.UniSparklineLineWidget1GetData(const DataSet: TDataSet;
  var Data: UniExtendedArray);
var
  RNo, I : Integer;
begin
  RNo := DataSet.RecNo;
  if RNo >= 0 then
  begin
    if RNo >= Length(XArray) then
    begin
      SetLength(XArray, RNo + 1);
      SetLength(XArray[RNo], 25);
      for I := Low(XArray[RNo]) to High(XArray[RNo]) do
        XArray[RNo][I] := Random(50);
    end;
    Data := XArray[RNo];
  end;

end;

initialization
  RegisterAppFormClass(TMainForm);

end.

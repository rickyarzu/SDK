// Column Widgets = Grids
unit GridsColumnWidget;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBNavigator, uniWidgets, uniPanel,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, Data.DB, uniImageList,
  Datasnap.DBClient;

type
  TUniGridsColumnWidget = class(TUniFrame)
    UniDBGrid1: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    UniButtonWidget1: TUniButtonWidget;
    UniSliderWidget1: TUniSliderWidget;
    UniProgressbarWidget1: TUniProgressbarWidget;
    UniProgressbarWidget2: TUniProgressbarWidget;
    UniSparklineLineWidget1: TUniSparklineLineWidget;
    UniDBNavigator1: TUniDBNavigator;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1SpeciesNo: TFloatField;
    ClientDataSet1Category: TStringField;
    ClientDataSet1Common_Name: TStringField;
    ClientDataSet1SpeciesName: TStringField;
    ClientDataSet1Lengthcm: TFloatField;
    ClientDataSet1Length_In: TFloatField;
    ClientDataSet1Notes: TMemoField;
    ClientDataSet1Graphic: TGraphicField;
    UniNativeImageList1: TUniNativeImageList;
    DataSource1: TDataSource;
    procedure UniSparklineLineWidget1GetData(const DataSet: TDataSet;
      var Data: UniExtendedArray);
    procedure UniButtonWidget1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    XArray : array of UniExtendedArray;
  end;

implementation

uses
  WidgetForm;

{$R *.dfm}


procedure TUniGridsColumnWidget.UniButtonWidget1Click(Sender: TObject);
begin
  ColumnWidgetForm.ds := ClientDataSet1;
  ColumnWidgetForm.ShowModal;
end;

procedure TUniGridsColumnWidget.UniSparklineLineWidget1GetData(
  const DataSet: TDataSet; var Data: UniExtendedArray);
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
  RegisterClass(TUniGridsColumnWidget);

end.

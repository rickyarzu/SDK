// Mask Data = Mask
unit MaskMaskData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMemo, uniButton,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel, DB, DBClient;

type
  TUniMaskMaskData = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    UniDBGrid4: TUniDBGrid;
    UniButton1: TUniButton;
    UniMemo1: TUniMemo;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1EmpNo: TIntegerField;
    ClientDataSet1LastName: TStringField;
    ClientDataSet1FirstName: TStringField;
    ClientDataSet1PhoneExt: TStringField;
    ClientDataSet1HireDate: TDateTimeField;
    ClientDataSet1Salary: TFloatField;
    ClientDataSet1Shift: TBooleanField;
    ClientDataSet1ShiftStart: TTimeField;
    ClientDataSet1City: TStringField;
    DataSource1: TDataSource;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniMaskMaskData.UniButton1Click(Sender: TObject);
begin
  ClientDataSet1.Active := not ClientDataSet1.Active;
end;

initialization
  RegisterClass(TUniMaskMaskData);
end.

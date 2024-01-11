// Cell Editors = Grids
unit GridsCellEditors;
{$I uniCompilers.inc}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniSpinEdit, uniMultiItem, uniComboBox,
  uniDateTimePicker, uniEdit, uniPanel, uniDBNavigator, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, DB, MainModule, DBClient, ServerModule;

type
  TUniGridsCellEditors = class(TUniFrame)
    DataSource1: TDataSource;
    UniDBNavigator1: TUniDBNavigator;
    UniHiddenPanel1: TUniHiddenPanel;
    UniEdit1: TUniEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniComboBox1: TUniComboBox;
    UniSpinEdit1: TUniSpinEdit;
    UniDateTimePicker2: TUniDateTimePicker;
    UniEdit2: TUniEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    ClientDataSet1: TClientDataSet;
    UniFormattedNumberEdit1: TUniFormattedNumberEdit;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBGrid1DrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}

procedure TUniGridsCellEditors.UniDBGrid1DrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
 if Column.FieldName = 'Shift' then
  begin
    if Column.Field.AsBoolean then
      Attribs.Font.Color := clGreen
    else
      Attribs.Font.Color := clRed;
  end;
end;

procedure TUniGridsCellEditors.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1,'Employee.cds');
  (ClientDataSet1.FieldByName('salary') as TFloatField).Currency:=True;

  (OwnerForm as TUniForm).ActiveControl := UniDBGrid1;
end;

initialization
  RegisterClass(TUniGridsCellEditors);
end.

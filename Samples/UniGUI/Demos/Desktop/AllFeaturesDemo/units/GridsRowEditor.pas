// Row Editor = Grids
unit GridsRowEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBNavigator, uniBasicGrid, uniDBGrid,
  uniSpinEdit, uniMultiItem, uniComboBox, uniDateTimePicker, uniEdit,
  uniGUIBaseClasses, uniPanel, DB, MainModule, DBClient, ServerModule;

type
  TUniGridsRowEditor = class(TUniFrame)
    DataSource1: TDataSource;
    UniHiddenPanel1: TUniHiddenPanel;
    UniEdit1: TUniEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniComboBox1: TUniComboBox;
    UniSpinEdit1: TUniSpinEdit;
    UniDateTimePicker2: TUniDateTimePicker;
    UniEdit2: TUniEdit;
    UniDBGrid1: TUniDBGrid;
    UniDBNavigator1: TUniDBNavigator;
    UniContainerPanel1: TUniContainerPanel;
    ClientDataSet1: TClientDataSet;
    UniFormattedNumberEdit1: TUniFormattedNumberEdit;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uniGUIForm;

{$R *.dfm}



procedure TUniGridsRowEditor.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Employee.cds');
  (ClientDataSet1.FieldByName('salary') as TFloatField).Currency:=True;

  (OwnerForm as TUniForm).ActiveControl := UniEdit1;
end;


initialization
  RegisterClass(TUniGridsRowEditor);
end.

//Employee Data= Database
unit DatabaseEmployeeData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniDBNavigator, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBEdit, uniEdit, uniGUIBaseClasses, uniPanel, uniBasicGrid,
  uniDBGrid, MainModule, DB, uniDBMemo, uniListBox, uniDBListBox, uniMemo,
  uniButton, uniBitBtn, uniRadioGroup, uniDBRadioGroup, uniImage, uniDBImage,
  uniDBText, uniLabel, DBClient, uniCheckBox, uniDBCheckBox,
  uniDateTimePicker, uniDBDateTimePicker, ServerModule;

type
  TUniDatabaseEmployeeData = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBNavigator1: TUniDBNavigator;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    UniDBGrid1: TUniDBGrid;
    UniDBListBox1: TUniDBListBox;
    UniLabel5: TUniLabel;
    UniDBCheckBox1: TUniDBCheckBox;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniDBComboBox1: TUniDBComboBox;
    UniDBText1: TUniDBText;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
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



procedure TUniDatabaseEmployeeData.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Employee.cds');

  (ClientDataSet1.FieldByName('salary') as TFloatField).Currency:=True;



  (OwnerForm as TUniForm).ActiveControl := UniDBEdit1;
end;

initialization
  RegisterClass(TUniDatabaseEmployeeData);

end.

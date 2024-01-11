// Combo Trigger = Form Controls
unit FormControlsComboBoxTrigger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniImageList,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniGroupBox,
  uniDBNavigator, DB, DBClient, MainModule, ComboTriggerUnit;

type
  TUniFormControlsComboBoxTrigger = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    UniDBNavigator1: TUniDBNavigator;
    UniGroupBox1: TUniGroupBox;
    UniComboBox1: TUniComboBox;
    UniGroupBox2: TUniGroupBox;
    UniComboBox2: TUniComboBox;
    UniGroupBox3: TUniGroupBox;
    UniDBGrid1: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    UniComboBox3: TUniComboBox;
    UniNativeImageList1: TUniNativeImageList;
    UniNativeImageList2: TUniNativeImageList;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniComboBox1TriggerEvent(Sender: TUniCustomComboBox;
      AButtonId: Integer);
    procedure UniComboBox3TriggerEvent(Sender: TUniCustomComboBox;
      AButtonId: Integer);
  private
    { Private declarations }
    procedure ACallBack(Sender: TComponent; AResult:Integer);
    procedure GridCallBack(Sender: TComponent; AResult: Integer);
  public
    { Public declarations }

  end;

implementation

{$R *.dfm}



procedure TUniFormControlsComboBoxTrigger.ACallBack(Sender: TComponent;
  AResult: Integer);
var
  S : string;
begin
  if AResult = mrOK then
  begin
    S := (Sender as TComboTrigger).UniEdit1.Text;
    case Sender.Tag of
      1 : UniComboBox1.Text := S;
      2 : UniComboBox2.Text := S;
    end;
  end;
end;

procedure TUniFormControlsComboBoxTrigger.GridCallBack(Sender: TComponent;
  AResult: Integer);
var
  S : string;
begin
  if AResult = mrOK then
  begin
    S := (Sender as TComboTrigger).UniEdit1.Text;
    ClientDataSet1.Edit;
    ClientDataSet1.FieldByName('Company').AsString := S;
    ClientDataSet1.Post;
  end;
end;

procedure TUniFormControlsComboBoxTrigger.UniComboBox1TriggerEvent(
  Sender: TUniCustomComboBox; AButtonId: Integer);
begin
  case AButtonId of
    1 : ShowMessage('Button #1 Pressed!');
    2 :
      begin
        ComboTrigger.Tag := Sender.Tag;
        ComboTrigger.ShowModal(ACallBack);
      end;
  end;
end;

procedure TUniFormControlsComboBoxTrigger.UniComboBox3TriggerEvent(
  Sender: TUniCustomComboBox; AButtonId: Integer);
begin
  if AButtonId = 1 then
  begin
    UniDBGrid1.CancelEditing(True);
    ComboTrigger.UniEdit1.Text := ClientDataSet1.FieldByName('company').AsString;
    ComboTrigger.ShowModal(GridCallBack);
  end
  else if AButtonId = 2 then
  begin
    UniDBGrid1.CancelEditing(True);
    if ClientDataSet1.State in dsEditModes then
      ClientDataSet1.Cancel;
  end;
end;

procedure TUniFormControlsComboBoxTrigger.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Customer.cds');
end;

initialization
  RegisterClass(TUniFormControlsComboBoxTrigger);

end.

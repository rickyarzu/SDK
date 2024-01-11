//AllFeatures: Combobox,Combobox - Triggers,icon-custom-template-combo
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniMultiItem, uniComboBox,
  uniGUIBaseClasses, uniGroupBox, uniImageList, DB, DBClient,
  uniBasicGrid, uniDBGrid, uniPanel, uniDBNavigator;

type
  TMainForm = class(TUniForm)
    UniGroupBox1: TUniGroupBox;
    UniComboBox1: TUniComboBox;
    UniNativeImageList1: TUniNativeImageList;
    UniGroupBox2: TUniGroupBox;
    UniComboBox2: TUniComboBox;
    UniHiddenPanel1: TUniHiddenPanel;
    UniComboBox3: TUniComboBox;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    UniNativeImageList2: TUniNativeImageList;
    UniGroupBox3: TUniGroupBox;
    UniDBGrid1: TUniDBGrid;
    UniDBNavigator1: TUniDBNavigator;
    procedure UniComboBox1TriggerEvent(Sender: TUniCustomComboBox;
      AButtonId: Integer);
    procedure UniComboBox3TriggerEvent(Sender: TUniCustomComboBox;
      AButtonId: Integer);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ACallBack(Sender: TComponent; AResult:Integer);
    procedure GridCallBack(Sender: TComponent; AResult: Integer);
  public
    { Public declarations }
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

procedure TMainForm.ACallBack(Sender: TComponent; AResult: Integer);
var
  S : string;
begin
  if AResult = mrOK then
  begin
    S := (Sender as TUniForm1).UniEdit1.Text;
    case Sender.Tag of
      1 : UniComboBox1.Text := S;
      2 : UniComboBox2.Text := S;
    end;
  end;
end;

procedure TMainForm.GridCallBack(Sender: TComponent; AResult: Integer);
var
  S : string;
begin
  if AResult = mrOK then
  begin
    S := (Sender as TUniForm1).UniEdit1.Text;
    ClientDataSet1.Edit;
    ClientDataSet1.FieldByName('Company').AsString := S;
    ClientDataSet1.Post;
  end;
end;

procedure TMainForm.UniComboBox1TriggerEvent(Sender: TUniCustomComboBox;
  AButtonId: Integer);
begin
  case AButtonId of
    1 : ShowMessage('Button #1 Pressed!');
    2 :
      begin
        UniForm1.Tag := Sender.Tag;
        UniForm1.ShowModal(ACallBack);
      end;
  end;
end;

procedure TMainForm.UniComboBox3TriggerEvent(Sender: TUniCustomComboBox;
  AButtonId: Integer);
begin
  if AButtonId = 1 then
  begin
    UniDBGrid1.CancelEditing(True);
    UniForm1.UniEdit1.Text := ClientDataSet1.FieldByName('company').AsString;
    UniForm1.ShowModal(GridCallBack);
  end
  else if AButtonId = 2 then
  begin
    UniDBGrid1.CancelEditing(True);
    if ClientDataSet1.State in dsEditModes then
      ClientDataSet1.Cancel;
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'Customer.cds');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

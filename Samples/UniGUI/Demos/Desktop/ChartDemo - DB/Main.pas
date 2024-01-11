//AllFeatures: Chart,Chart - DB,icon-column-charts
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniChart, uniGUIBaseClasses,
  uniPanel, DB, DBClient, uniButton, uniHTMLFrame, uniImage;

type
  TMainForm = class(TUniForm)
    UniChart1: TUniChart;
    UniBarSeries1: TUniBarSeries;
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
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  ClientDataSet1.First;
  ClientDataSet1.Edit;
  ClientDataSet1.FieldByName('salary').AsFloat := ClientDataSet1.FieldByName('salary').AsFloat + 1000;
  ClientDataSet1.Post;
  UniChart1.RefreshData;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIRegClasses,  uniguiclasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid, uniDBGrid, DB,
  DBClient, uniPanel, uniDBNavigator, uniEdit, uniDBEdit;

type
  TMainForm = class(TUniForm)
    ClientDataSet2: TClientDataSet;
    DataSource1: TDataSource;
    UniDBGrid1: TUniDBGrid;
    ClientDataSet2CustNo: TFloatField;
    ClientDataSet2Company: TStringField;
    ClientDataSet2Addr1: TStringField;
    ClientDataSet2Addr2: TStringField;
    ClientDataSet2City: TStringField;
    ClientDataSet2State: TStringField;
    ClientDataSet2Zip: TStringField;
    ClientDataSet2Country: TStringField;
    ClientDataSet2Phone: TStringField;
    ClientDataSet2FAX: TStringField;
    ClientDataSet2TaxRate: TFloatField;
    ClientDataSet2Contact: TStringField;
    ClientDataSet2LastInvoiceDate: TDateTimeField;
    ClientDataSet2IsUS: TBooleanField;
    UniDBNavigator1: TUniDBNavigator;
    procedure ClientDataSet2CalcFields(DataSet: TDataSet);
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

procedure TMainForm.ClientDataSet2CalcFields(DataSet: TDataSet);
begin
  ClientDataSet2IsUS.AsBoolean := ClientDataSet2Country.Text = 'US';
end;

initialization
  RegisterMainFormClass(TMainForm);

end.

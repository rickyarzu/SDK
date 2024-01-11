unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniMultiItem,
  unimList, uniButton, unimButton, DB, DBClient,
  uniGUIBaseClasses, uniEdit, unimEdit, uniLabel, unimLabel;

type
  TMainmForm = class(TUnimForm)
    UnimEdit1: TUnimEdit;
    UnimButton1: TUnimButton;
    UnimList1: TUnimList;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CustNo: TFloatField;
    ClientDataSet1Company: TStringField;
    ClientDataSet1Addr1: TStringField;
    ClientDataSet1Addr2: TStringField;
    ClientDataSet1City: TStringField;
    ClientDataSet1State: TStringField;
    ClientDataSet1Zip: TStringField;
    ClientDataSet1Country: TStringField;
    ClientDataSet1Phone: TStringField;
    ClientDataSet1FAX: TStringField;
    ClientDataSet1TaxRate: TFloatField;
    ClientDataSet1Contact: TStringField;
    ClientDataSet1LastInvoiceDate: TDateTimeField;
    procedure UnimButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
  UnimList1.Clear;
  ClientDataSet1.Filter:='city LIKE ''%'+UnimEdit1.Text+'%''';
  while not ClientDataSet1.Eof do
  begin
    UnimList1.Items.Add(ClientDataSet1.FieldByName('city').AsString);
    ClientDataSet1.Next;
  end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.

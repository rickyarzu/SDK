unit uframeVCLTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.ComCtrls, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin, MoneyEdit,
  //
  Janua.Orm.Test.Intf, Janua.Vcl.Interposers, Janua.TMS.Interposers;

type
  TframeVCLTest = class(TFrame)
    edStringField: TEdit;
    lbStringField: TLabel;
    edIntField: TSpinEdit;
    lbIntField: TLabel;
    edFloatField: TMoneyEdit;
    lbFloatField: TLabel;
    ckbBoolField: TCheckBox;
    edDateTime: TDateTimePicker;
    lbDateTime: TLabel;
    edDate: TDateTimePicker;
    lbDate: TLabel;
    memMemoField: TMemo;
    lbMemo: TLabel;
  private
    [weak]
    FTestRecord: IJanuaTestNestedRecord;
    procedure SetTestRecord(const Value: IJanuaTestNestedRecord);
    { Private declarations }
  public
    { Public declarations }
    property TestRecord: IJanuaTestNestedRecord read FTestRecord write SetTestRecord;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}
{ TFrame2 }

procedure TframeVCLTest.SetTestRecord(const Value: IJanuaTestNestedRecord);
begin
  try
    FTestRecord := Value;
    if Assigned(FTestRecord) then
    begin
      edStringField.Text := FTestRecord.TestString.AsString;
      FTestRecord.TestString.Bind('AsString', edStringField, 'Text');
      lbStringField.Caption := FTestRecord.TestString.Title;
      FTestRecord.TestString.Bind('Title', lbStringField, 'Caption');

      edIntField.Value := FTestRecord.TestInteger.AsInteger;
      FTestRecord.TestInteger.Bind('AsInteger', edIntField, 'Value');
      lbIntField.Caption := FTestRecord.TestInteger.Title;
      FTestRecord.TestInteger.Bind('Title', lbIntField, 'Caption');

      ckbBoolField.Checked := FTestRecord.TestBoolean.AsBoolean;
      FTestRecord.TestBoolean.Bind('AsBoolean', ckbBoolField, 'Checked');
      ckbBoolField.Caption := FTestRecord.TestBoolean.Title;
      FTestRecord.TestBoolean.Bind('Title', ckbBoolField, 'Caption');

      edFloatField.Value := FTestRecord.TestDouble.AsFloat;
      FTestRecord.TestDouble.Bind('AsFloat', edFloatField, 'Value');
      lbFloatField.Caption := FTestRecord.TestDouble.Title;
      FTestRecord.TestDouble.Bind('Title', lbFloatField, 'Caption');

      edDateTime.DateTime := FTestRecord.TestDateTime.AsDateTime;
      FTestRecord.TestDateTime.Bind('AsDateTime', edDateTime, 'DateTime');
      lbDateTime.Caption := FTestRecord.TestDateTime.Title;
      FTestRecord.TestDateTime.Bind('Title', lbDateTime, 'Caption');

      memMemoField.Text := FTestRecord.TestMemo.AsString;
      FTestRecord.TestMemo.Bind('AsString', Self.memMemoField, 'Lines.Text');
      lbMemo.Caption := FTestRecord.TestMemo.Title;
      FTestRecord.TestMemo.Bind('Title', lbMemo, 'Caption');
    end;
  except
    on e: exception do
      raiseexception('SetTestRecord', e, Self);

  end;

end;

end.

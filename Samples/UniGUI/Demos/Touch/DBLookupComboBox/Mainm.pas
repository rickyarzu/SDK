//AllFeatures: DBLookupComboBox,DBLookup - Basic,icon-custom-template-combo
unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUImForm, uniGUImJSForm, uniGUITypes, Grids, DBGrids, uniDBGrid,
  DB, StdCtrls, UniLabel, DBCtrls, uniDBLookupComboBox, uniDBLookupListBox,
  uniDBNavigator, DBClient, ComCtrls, uniStatusBar, uniBasicGrid,
  uniGUIRegClasses,  uniGUIClasses, uniPanel, uniListBox, uniDBListBox,
  uniMultiItem, uniComboBox, uniDBComboBox, uniGUIBaseClasses, uniButton, uniMemo,
  uniDateTimePicker, unimMemo, unimComboBox, unimLabel, unimDBNavigator,
  uniBitBtn, unimBitBtn, unimButton;

type
  TMainmForm = class(TUnimForm)
    UniDBNavigator1: TUnimDBNavigator;
    UniDBLookupComboBox2: TUnimDBLookupComboBox;
    UniMemo1: TUnimMemo;
    UniDBLookupComboBox3: TUnimDBLookupComboBox;
    UniDBLookupComboBox4: TUnimDBLookupComboBox;
    UniDBLookupComboBox5: TUnimDBLookupComboBox;
    UniDBLookupComboBox6: TUnimDBLookupComboBox;
    procedure UniDBLookupComboBox2Select(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, uniGUIAbstractClasses;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UniDBLookupComboBox2Select(Sender: TObject);
begin
  UniMemo1.Lines.Add('KeyValue = ' + (sender as TUnimDBLookupComboBox).KeyValueStr);
end;

procedure TMainmForm.UniFormCreate(Sender: TObject);
var
  I, N, N1: Integer;
  ds1, ds2 : TDataSet;
begin
  UniMemo1.Lines.Clear;

  // create dummy data for filtering
  ds1 := UniMainModule.PartsSource.DataSet;
  ds2 := UniMainModule.PartOrderSource.DataSet;
  N := ds1.RecordCount;
  for I := 1 to 2000 do
  begin
    N1 := Random(N);
    ds1.First;
    ds1.MoveBy(N1);

    ds2.Append;
    ds2.FieldByName('partno').Value := ds1.FieldByName('partno').Value;
    ds2.FieldByName('orderdate').AsDateTime := Date - Random(1000);
    ds2.Post;
  end;
  ds2.First;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.

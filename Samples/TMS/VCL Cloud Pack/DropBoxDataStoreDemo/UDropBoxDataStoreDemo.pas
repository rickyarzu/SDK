{***************************************************************************}
{ TMS Cloud Pack                                                            }
{ for Delphi & C++Builder                                                   }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2012 - 2014                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of the author.                                      }
{***************************************************************************}

unit UDropBoxDataStoreDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, CloudBase,
  CloudDropBoxDataStore, CloudCustomDropBoxDataStore, ExtCtrls, ComCtrls, Mask,
  CloudBaseWin;

type
  TForm12 = class(TForm)
    AdvDropBoxDataStore1: TAdvDropBoxDataStore;
    btConnect: TButton;
    GroupBox1: TGroupBox;
    btCreate: TButton;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    btInsertRow: TButton;
    Label2: TLabel;
    cbRow: TComboBox;
    edField1: TEdit;
    edValue1: TEdit;
    edValue2: TEdit;
    edField2: TEdit;
    edField3: TEdit;
    edField4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edTableName: TEdit;
    Label5: TLabel;
    btDeleteRow: TButton;
    btUpdateRow: TButton;
    edValue3: TEdit;
    edValue4: TEdit;
    Label6: TLabel;
    edID: TEdit;
    edDataStore: TEdit;
    btDeleteDataStore: TButton;
    btRemove: TButton;
    btGetByName: TButton;
    btSetMetaData: TButton;
    cb1: TCheckBox;
    cb2: TCheckBox;
    cb3: TCheckBox;
    cb4: TCheckBox;
    btDeleteFields: TButton;
    lvDataStores: TListView;
    edTitle: TEdit;
    btClear: TButton;
    dsName: TEdit;
    btSample: TButton;
    procedure btConnectClick(Sender: TObject);
    procedure AdvDropBoxDataStore1ReceivedAccessToken(Sender: TObject);
    procedure btCreateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btInsertRowClick(Sender: TObject);
    procedure cbRowChange(Sender: TObject);
    procedure btDeleteRowClick(Sender: TObject);
    procedure btUpdateRowClick(Sender: TObject);
    procedure btDeleteDataStoreClick(Sender: TObject);
    procedure btRemoveClick(Sender: TObject);
    procedure btGetByNameClick(Sender: TObject);
    procedure btSetMetaDataClick(Sender: TObject);
    procedure btDeleteFieldsClick(Sender: TObject);
    procedure lbDataStoresClick(Sender: TObject);
    procedure lvDataStoresSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure btClearClick(Sender: TObject);
    procedure btSampleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Opened: boolean;
    procedure FillData(Index: integer);
    procedure FillCheckedValue(Value: string);
    procedure ToggleControls;
    procedure ShowDataStores;
    procedure ShowRows;
  end;

var
  Form12: TForm12;

implementation

uses
  dbxjson;

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE DROPBOX SERVICE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  DropBoxAppkey = 'xxxxxxxxx';
//  DropBoxAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm12.AdvDropBoxDataStore1ReceivedAccessToken(Sender: TObject);
begin
  opened := true;
  ToggleControls();
  AdvDropBoxDataStore1.SaveTokens;
  ShowDataStores;
end;

procedure TForm12.btSetMetaDataClick(Sender: TObject);
var
  ds: TDataStore;
begin
  if (lvDataStores.ItemIndex >= 0) then
  begin
    ds := AdvDropBoxDataStore1.DataStoreList[lvDataStores.ItemIndex];
    ds.SetMetaData(edTitle.Text, Now);
    ShowDataStores;
  end;
end;

procedure TForm12.btDeleteFieldsClick(Sender: TObject);
var
  Fields: TStringList;
  ds: TDataStore;
  dr: TDataStoreRow;
begin
  ds := AdvDropBoxDataStore1.DataStoreList[lvdatastores.ItemIndex];
  dr := ds.Rows[cbRow.ItemIndex];

  Fields := TStringList.Create;
  try
    if cb1.Checked then
      Fields.Add(dr.Fields[0].FieldName);
    if cb2.Checked then
      Fields.Add(dr.Fields[1].FieldName);
    if cb3.Checked then
      Fields.Add(dr.Fields[2].FieldName);
    if cb4.Checked then
      Fields.Add(dr.Fields[3].FieldName);

    if not ds.DeleteFields(dr, Fields) then
      ShowMessage(AdvDropBoxDataStore1.LastError);
  finally
    Fields.Free;
  end;
end;

procedure TForm12.FillCheckedValue(Value: string);
begin
  if cb1.Checked then
    edValue1.Text := Value;
  if cb2.Checked then
    edValue2.Text := Value;
  if cb3.Checked then
    edValue2.Text := Value;
  if cb4.Checked then
    edValue2.Text := Value;
end;

procedure TForm12.btCreateClick(Sender: TObject);
var
  ds: TDataStore;
begin
  if edDataStore.Text <> '' then
  begin
    ds := AdvDropBoxDataStore1.CreateDataStore(edDataStore.Text);

    if not Assigned(ds) then
      ShowMessage('Error creating datastore')
    else
      ShowDataStores;
  end
  else
    ShowMessage('Specify name for datastore');
end;

procedure TForm12.btInsertRowClick(Sender: TObject);
var
  ds: TDataStore;
  dr: TDataStoreRow;
begin
  if edTableName.Text = '' then
  begin
    ShowMessage('Please specify a tablename');
    Exit;
  end;

  if (lvDataStores.ItemIndex >= 0) then
  begin
    ds := AdvDropBoxDataStore1.DataStoreList[lvdatastores.ItemIndex];
    dr := ds.Rows.Add;
    dr.ID := ds.GetNewID;
    dr.TableName := edTableName.Text;

    if (edField1.Text <> '') and (edValue1.Text <> '') then
    begin
      dr.AddData(edField1.Text, edValue1.Text);
    end;

    if (edField2.Text <> '') and (edValue2.Text <> '') then
    begin
      dr.AddData(edField2.Text, edValue2.Text);
    end;

    if (edField3.Text <> '') and (edValue3.Text <> '') then
    begin
      dr.AddData(edField3.Text, edValue3.Text);
    end;

    if (edField4.Text <> '') and (edValue4.Text <> '') then
    begin
      dr.AddData(edField4.Text, edValue4.Text);
    end;

    if not ds.InsertRecord(dr) then
    begin
      ShowMessage(AdvDropBoxDataStore1.LastError);
    end
    else
      ShowRows;
  end;
end;

procedure TForm12.FillData(Index: integer);
var
  ds: TDataStore;
  dr: TDataStoreRow;
begin
  if cbRow.ItemIndex >= 0 then
  begin
    ds := AdvDropBoxDataStore1.DataStoreList[lvdatastores.ItemIndex];
    dr := ds.Rows[Index];

    edTableName.Text := dr.TableName;
    edId.Text := dr.ID;

    edField1.Text := '';
    edField2.Text := '';
    edField3.Text := '';
    edField4.Text := '';

    edValue1.Text := '';
    edValue2.Text := '';
    edValue3.Text := '';
    edValue4.Text := '';

    if dr.Fields.Count > 0 then
    begin
        edField1.Text := dr.Fields[0].FieldName;
        edValue1.Text := dr.Fields[0].Value.ToString;
    end;

    if dr.Fields.Count > 1 then
    begin
        edField2.Text := dr.Fields[1].FieldName;
        edValue2.Text := dr.Fields[1].Value.ToString;
    end;

    if dr.Fields.Count > 2 then
    begin
        edField3.Text := dr.Fields[2].FieldName;
        edValue3.Text := dr.Fields[2].Value.ToString;
    end;

    if dr.Fields.Count > 3 then
    begin
        edField4.Text := dr.Fields[3].FieldName;
        edValue4.Text := dr.Fields[3].Value.ToString;
    end;
  end;
end;

procedure TForm12.btDeleteRowClick(Sender: TObject);
var
 ds: TDataStore;
begin
  if lvDataStores.ItemIndex >= 0 then
  begin
    ds := AdvDropBoxDataStore1.DataStoreList[lvdatastores.ItemIndex];
    if not ds.DeleteRecord(ds.Rows[cbRow.ItemIndex]) then
      ShowMessage(AdvDropBoxDataStore1.LastError)
    else
      ShowRows;
  end;
end;

procedure TForm12.btUpdateRowClick(Sender: TObject);
var
  ds: TDataStore;
  dr: TDataStoreRow;
begin
  if edTableName.Text = '' then
  begin
    ShowMessage('Please specify a tablename');
    Exit;
  end;

  if lvDataStores.ItemIndex >= 0 then
  begin
    ds := AdvDropBoxDataStore1.DataStoreList[lvdatastores.ItemIndex];

    dr := ds.Rows[cbRow.ItemIndex];
    dr.ID := edID.Text;
    dr.TableName := edTableName.Text;

    if (edField1.Text <> '') and (edValue1.Text <> '') then
    begin
      dr.AddData(edField1.Text, edValue1.Text);
    end;

    if (edField2.Text <> '') and (edValue2.Text <> '') then
    begin
      dr.AddData(edField2.Text, edValue2.Text);
    end;

    if (edField3.Text <> '') and (edValue3.Text <> '') then
    begin
      dr.AddData(edField3.Text, edValue3.Text);
    end;

    if (edField4.Text <> '') and (edValue4.Text <> '') then
    begin
      dr.AddData(edField4.Text, edValue4.Text);
    end;

    if not ds.UpdateRecord(ds.Rows[cbRow.ItemIndex]) then
      ShowMessage(AdvDropBoxDataStore1.LastError)
    else
      ShowRows;
  end;
end;

procedure TForm12.btClearClick(Sender: TObject);
begin
  edValue1.Text := '';
  edValue2.Text := '';
  edValue3.Text := '';
  edValue4.Text := '';
end;

procedure TForm12.btSampleClick(Sender: TObject);
var
  ds: TDataStore;
  dr: TDataStoreRow;

begin
  if Assigned(AdvDropBoxDataStore1.DataStoreList.FindByName('demo')) then
  begin
    ShowMessage('Demo datastore already exists');
    Exit;
  end;

  ds := AdvDropBoxDataStore1.CreateDataStore('demo');

  dr := ds.Rows.Add;
  dr.ID := ds.GetNewID;
  dr.TableName := 'Capitals';

  dr.Fields.AddPair('Name','Paris');
  dr.Fields.AddPair('Country','France');
  dr.Fields.AddPair('Citizens',10000000);
  dr.Fields.AddPair('Europe',true);
  ds.InsertRecord(dr);

  dr := ds.Rows.Add;
  dr.ID := ds.GetNewID;
  dr.TableName := 'Capitals';

  dr.Fields.AddPair('Name','Brussels');
  dr.Fields.AddPair('Country','Belgium');
  dr.Fields.AddPair('Citizens',3000000);
  dr.Fields.AddPair('Europe',true);

  ds.InsertRecord(dr);

  dr := ds.Rows.Add;
  dr.ID := ds.GetNewID;
  dr.TableName := 'Capitals';

  dr.Fields.AddPair('Name','Berlin');
  dr.Fields.AddPair('Country','Germany');
  dr.Fields.AddPair('Citizens',6000000);
  dr.Fields.AddPair('Europe',true);

  ds.InsertRecord(dr);

  dr := ds.Rows.Add;
  dr.ID := ds.GetNewID;
  dr.TableName := 'Capitals';

  dr.Fields.AddPair('Name','London');
  dr.Fields.AddPair('Country','United Kingdom');
  dr.Fields.AddPair('Citizens',11000000);
  dr.Fields.AddPair('Europe',true);

  ds.InsertRecord(dr);

  dr := ds.Rows.Add;
  dr.ID := ds.GetNewID;
  dr.TableName := 'Capitals';

  dr.Fields.AddPair('Name','Washington');
  dr.Fields.AddPair('Country','USA');
  dr.Fields.AddPair('Citizens',8000000);
  dr.Fields.AddPair('Europe',false);

  ds.InsertRecord(dr);

  ShowDataStores;
end;

procedure TForm12.btDeleteDataStoreClick(Sender: TObject);
begin
  if lvDataStores.ItemIndex >= 0 then
  begin
    if AdvDropBoxDataStore1.DeleteDataStore(AdvDropBoxDataStore1.DataStoreList[lvDataStores.ItemIndex]) then
      ShowDataStores;
  end;
end;

procedure TForm12.btRemoveClick(Sender: TObject);
begin
  AdvDropBoxDataStore1.ClearTokens();
end;

procedure TForm12.btGetByNameClick(Sender: TObject);
var
  ds: TDataStore;
begin
  if dsName.Text <> '' then
  begin
    ds := AdvDropBoxDataStore1.GetDataStoreByName(dsName.Text);
    if Assigned(ds) then
    begin
      lvDataStores.ItemIndex :=  AdvDropBoxDataStore1.DataStoreList.IndexOf(ds.ID);
      ShowMessage('Datastore <'+dsName.Text + '> found'#13'ID='+ds.ID+#13'Rev='+IntToStr(ds.Revision));
    end
    else
      ShowMessage('Datastore not found');
  end
  else
    ShowMessage('Please specify a datastore name');
end;

procedure TForm12.cbRowChange(Sender: TObject);
begin
  FillData(cbRow.ItemIndex);
end;

procedure TForm12.btConnectClick(Sender: TObject);
var
  acc: boolean;
begin
  AdvDropBoxDataStore1.App.Key := DropBoxAppKey;
  AdvDropBoxDataStore1.App.Secret := DropBoxAppSecret;

  AdvDropBoxDataStore1.LoadTokens;

  acc := AdvDropBoxDataStore1.TestTokens;

  if acc then
  begin
    opened := true;
    ToggleControls;
    ShowDataStores;
  end
  else
    AdvDropBoxDataStore1.DoAuth;
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
  Opened := false;
  ReportMemoryLeaksOnShutdown := true;

  AdvDropBoxDataStore1.Logging := true;
  AdvDropBoxDataStore1.LogLevel := llDetail;

  ToggleControls;
end;

procedure TForm12.lbDataStoresClick(Sender: TObject);
begin
  cbRow.Items.Clear;
  edField1.Text := '';
  edField2.Text := '';
  edField3.Text := '';
  edField4.Text := '';
  edValue1.Text := '';
  edValue2.Text := '';
  edValue3.Text := '';
  edValue4.Text := '';
  edTableName.Text := '';
  edID.Text := '';
end;

procedure TForm12.lvDataStoresSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  if Selected then
    ShowRows;
end;

procedure TForm12.ShowDataStores;
var
  i: integer;
  ds: TDataStore;
  lv: TListItem;

begin
  AdvDropBoxDataStore1.GetDataStores();

  lvDataStores.Items.Clear;

  for I := 0 to AdvDropBoxDataStore1.DataStoreList.Count - 1 do
  begin
    ds := AdvDropBoxDataStore1.DataStoreList[i];

    lv := lvDataStores.Items.Add;
    lv.Caption := ds.DataStoreName;
    lv.SubItems.Add(IntToStr(ds.Revision));
    lv.SubItems.Add(ds.Title);
    lv.SubItems.Add(DateTimeToStr(ds.DateTime));
  end;

  if lvDataStores.Items.Count > 0 then
    lvDataStores.ItemIndex := 0;

end;

procedure TForm12.ShowRows;
var
  ds: TDataStore;
  i: integer;
begin
  if lvDataStores.ItemIndex >= 0 then
  begin
    ds := AdvDropBoxDataStore1.DataStoreList[lvdatastores.ItemIndex];
    ds.GetRecords;

    cbRow.Items.Clear;
    for i := 0 to ds.Rows.Count - 1 do
      cbRow.Items.Add(IntToStr(i + 1));

    if (cbRow.Items.Count > 0) then
    begin
      cbrow.ItemIndex := 0;
      FillData(cbRow.ItemIndex);
    end;
  end;
end;

procedure TForm12.ToggleControls;
begin
  btConnect.Enabled := not opened;
  btRemove.Enabled := opened;
  btCreate.Enabled := opened;
  btInsertRow.Enabled := opened;
  btDeleteRow.Enabled := opened;
  btUpdateRow.Enabled := opened;
  btSample.Enabled := opened;
  btDeleteDataStore.Enabled := opened;
  btGetByName.Enabled := opened;
  btSetMetaData.Enabled := opened;
  btDeleteFields.Enabled := opened;
  btClear.Enabled := opened;
  lvDataStores.Enabled := opened;
  cbRow.Enabled := opened;
  edField1.Enabled := opened;
  edField2.Enabled := opened;
  edField3.Enabled := opened;
  edField4.Enabled := opened;
  edValue1.Enabled := opened;
  edValue2.Enabled := opened;
  edValue3.Enabled := opened;
  edValue4.Enabled := opened;
  edTableName.Enabled := opened;
  edID.Enabled := opened;
end;

end.

// Fish Facts = Database
unit DatabaseFishFacts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniFileUpload, uniGUIBaseClasses, uniImageList,
  DB, uniRadioGroup, uniDBRadioGroup, uniButton, uniBitBtn, uniMemo,
  uniDBMemo, uniDBText, uniMultiItem, uniComboBox, uniDBComboBox, uniBasicGrid,
  uniDBGrid, uniDBEdit, uniDBNavigator, uniEdit, uniImage, uniDBImage, uniLabel,
  DBClient, ServerModule, uniPanel, uniFieldSet;

type
  TUniDatabaseFishFacts = class(TUniFrame)
    UniLabel6: TUniLabel;
    UniDBImage1: TUniDBImage;
    UniDBGrid1: TUniDBGrid;
    UniDBText1: TUniDBText;
    UniDBMemo1: TUniDBHTMLMemo;
    UniDBRadioGroup1: TUniDBRadioGroup;
    DataSource1: TDataSource;
    UniFileUpload1: TUniFileUpload;
    ClientDataSet1: TClientDataSet;
    UniContainerPanel1: TUniContainerPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniFieldSet1: TUniFieldSet;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBNumberEdit1: TUniDBNumberEdit;
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBGrid1AfterLoad(Sender: TUniCustomDBGrid);
  private
    { Private declarations }
    FInited: Boolean;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, uniGUIForm;

procedure TUniDatabaseFishFacts.UniBitBtn1Click(Sender: TObject);
begin
  ClientDataSet1.Append;
end;

procedure TUniDatabaseFishFacts.UniBitBtn2Click(Sender: TObject);
begin
  UniFileUpload1.Execute;
end;

procedure TUniDatabaseFishFacts.UniDBGrid1AfterLoad(Sender: TUniCustomDBGrid);
begin
  if not FInited then
  begin
//    (OwnerForm as TUniForm).ActiveControl := UniDBGrid1;
    FInited := True;
  end;
end;

procedure TUniDatabaseFishFacts.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
var
  FEditing : Boolean;
begin
  with ClientDataSet1 do
    if Active then
    begin
      FEditing := State in dsEditModes;
      if not FEditing then Edit;
      try
        TBlobField(FieldByName('Graphic')).LoadFromStream(AStream);
        if not FEditing then Post;
      except
        Cancel;
        raise;
      end;
    end;
end;

procedure TUniDatabaseFishFacts.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1,'biolife.cds');
end;

initialization
  RegisterClass(TUniDatabaseFishFacts);

end.

//AllFeatures: Miscellaneous,DB Demo,icon-dataview-basic
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUIForm, Grids, DBGrids, uniDBGrid, DB, DBCtrls,
  UniDBImage, StdCtrls, uniDBEdit, ExtCtrls, uniDBNavigator, Menus,
  UniMainMenu, ComCtrls, UniStatusBar, ImgList, UniDBMemo, UniLabel,
  UniButton, ToolWin, UniToolBar, uniMemo, uniGUIClasses, uniPanel, uniEdit,
  uniImage, uniBasicGrid, uniGUIBaseClasses, uniImageList, uniGUIAbstractClasses,
  uniGUITypes, uniMultiItem, uniComboBox, uniDBComboBox, uniGUIRegClasses,
  uniDBText, uniBitBtn, uniFileUpload, uniRadioGroup, uniDBRadioGroup,
  DBClient;

type
  TMainForm = class(TUniForm)
    DataSource1: TDataSource;
    UniDBImage1: TUniDBImage;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBNavigator1: TUniDBNavigator;
    UniMainMenu1: TUniMainMenu;
    File1: TUniMenuItem;
    Exit1: TUniMenuItem;
    UniStatusBar1: TUniStatusBar;
    ImageList1: TUniImageList;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniDBNumberEdit1: TUniDBNumberEdit;
    UniDBGrid1: TUniDBGrid;
    UniDBComboBox1: TUniDBComboBox;
    UniDBText1: TUniDBText;
    UniDBMemo1: TUniDBHTMLMemo;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniFileUpload1: TUniFileUpload;
    UniDBRadioGroup1: TUniDBRadioGroup;
    UniNativeImageList1: TUniNativeImageList;
    procedure Exit1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, UniGUIApplication, ServerModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  UniStatusBar1.Panels[0].Text:=DataSource1.DataSet.FieldByName('species no').AsString;
  UniStatusBar1.Panels[1].Text:=DataSource1.DataSet.FieldByName('common_name').AsString;
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  UniMainModule.ClientDataSet.Append;
end;

procedure TMainForm.UniBitBtn2Click(Sender: TObject);
begin
  UniFileUpload1.Execute;
end;

procedure TMainForm.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
var
  FEditing : Boolean;
begin
  with UniMainModule.ClientDataSet do
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

initialization
  RegisterMainFormClass(TMainForm);
end.

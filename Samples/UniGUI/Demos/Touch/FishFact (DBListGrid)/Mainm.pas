unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  DB, uniLabel, unimLabel, uniEdit, uniDBEdit, unimDBEdit, uniImage,
  uniDBImage, unimDBImage, uniDBNavigator, unimDBNavigator, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid, unimDBListGrid, uniMultiItem, unimSelect,
  unimDBSelect, uniButton, unimButton, uniFileUpload, unimFileUpload;

type
  TMainmForm = class(TUnimForm)
    UnimDBListGrid1: TUnimDBListGrid;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimDBNavigator1: TUnimDBNavigator;
    UnimDBImage1: TUnimDBImage;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimDBEdit2: TUnimDBEdit;
    DataSource1: TDataSource;
    UnimDBEdit3: TUnimDBEdit;
    UnimDBSelect1: TUnimDBSelect;
    UnimFileUpload1: TUnimFileUpload;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimFileUpload1Completed(Sender: TObject; AStream: TFileStream);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, unimImage, unimBitBtn,
  jpeg, uniGUIUtils, uniImgTools;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimButton1Click(Sender: TObject);
begin
  UnimFileUpload1.Execute;
end;

procedure TMainmForm.UnimFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
begin

 with UniMainModule do
    if ClientDataSet.Active then
    begin
      ClientDataSet.Edit;
      try
        TBlobField(ClientDataSet.FieldByName('Graphic')).LoadFromStream(AStream);
      except
        ClientDataSet.Cancel;
        raise;
      end;
    end;

end;

initialization
  RegisterAppFormClass(TMainmForm);

end.

unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  DB, uniDBNavigator, unimDBNavigator, uniBasicGrid, uniDBGrid,
  unimDBListGrid, unimDBGrid, uniImage, uniDBImage, unimDBImage, uniButton,
  unimButton, uniMultiItem, unimSelect, unimDBSelect, uniEdit, uniDBEdit,
  unimDBEdit, uniGUIBaseClasses, uniFileUpload, unimFileUpload;

type
  TMainmForm = class(TUnimForm)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimDBEdit3: TUnimDBEdit;
    UnimDBSelect1: TUnimDBSelect;
    UnimDBEdit2: TUnimDBEdit;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimDBImage1: TUnimDBImage;
    UnimDBGrid1: TUnimDBGrid;
    UnimDBNavigator1: TUnimDBNavigator;
    DataSource1: TDataSource;
    UnimFileUpload1: TUnimFileUpload;
    procedure UnimFileUpload1Completed(Sender: TObject; AStream: TFileStream);
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
      ClientDataSet.Post;
    end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.

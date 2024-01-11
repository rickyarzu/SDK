unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, DB,
  DBClient, uniMultiItem, unimSelect, unimDBSelect, uniEdit, uniDBEdit,
  unimDBEdit, uniImage, uniDBImage, unimDBImage, uniPanel, uniDBNavigator,
  UnimDBNavigator, uniGUIBaseClasses, uniGUImJSForm, uniMemo, uniDBMemo,
  unimDBMemo, unimList, unimDBList;

type
  TMainmForm = class(TUnimForm)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimDBNavigator1: TUnimDBNavigator;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1SpeciesNo: TFloatField;
    ClientDataSet1Category: TStringField;
    ClientDataSet1Common_Name: TStringField;
    ClientDataSet1SpeciesName: TStringField;
    ClientDataSet1Lengthcm: TFloatField;
    ClientDataSet1Length_In: TFloatField;
    ClientDataSet1Notes: TMemoField;
    ClientDataSet1Graphic: TGraphicField;
    DataSource1: TDataSource;
    UnimContainerPanel2: TUnimContainerPanel;
    UnimDBImage1: TUnimDBImage;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimDBList1: TUnimDBList;
    UnimContainerPanel4: TUnimContainerPanel;
    UnimDBEdit2: TUnimDBEdit;
    UnimDBEdit1: TUnimDBEdit;
    UnimDBEdit3: TUnimDBEdit;
    UnimDBEdit4: TUnimDBEdit;
    UnimDBEdit5: TUnimDBEdit;
    UnimDBMemo1: TUnimDBMemo;
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

initialization
  RegisterAppFormClass(TMainmForm);

end.

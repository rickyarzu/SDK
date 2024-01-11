//AllFeatures: Grid,Context Menu,icon-menu-grid
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, DB, DBClient,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, Menus, uniMainMenu, uniEdit,
  uniDBEdit, uniLabel, uniDBNavigator;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
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
    UniPopupMenu1: TUniPopupMenu;
    DeleteRow1: TUniMenuItem;
    InsertRow1: TUniMenuItem;
    Edit1: TUniMenuItem;
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBNavigator1: TUniDBNavigator;
    UniPopupMenu2: TUniPopupMenu;
    Post1: TUniMenuItem;
    Cancel1: TUniMenuItem;
    procedure UniDBGrid1CellContextClick(Column: TUniDBGridColumn; X,
      Y: Integer);
    procedure DeleteRow1Click(Sender: TObject);
    procedure InsertRow1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Post1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
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

procedure TMainForm.Cancel1Click(Sender: TObject);
begin
  if ClientDataSet1.State in dsEditModes then
    ClientDataSet1.Cancel;
end;

procedure TMainForm.DeleteRow1Click(Sender: TObject);
begin
  ClientDataSet1.Delete;
end;

procedure TMainForm.Edit1Click(Sender: TObject);
begin
  ClientDataSet1.Edit;
end;

procedure TMainForm.InsertRow1Click(Sender: TObject);
begin
  ClientDataSet1.Insert;
end;

procedure TMainForm.Post1Click(Sender: TObject);
begin
  if ClientDataSet1.State in dsEditModes then
    ClientDataSet1.Post;
end;

procedure TMainForm.UniDBGrid1CellContextClick(Column: TUniDBGridColumn; X,
  Y: Integer);
begin
  if ClientDataSet1.State in dsEditModes then
    UniPopupMenu2.Popup(X, Y, UniDBGrid1)
  else
    UniPopupMenu1.Popup(X, Y, UniDBGrid1);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

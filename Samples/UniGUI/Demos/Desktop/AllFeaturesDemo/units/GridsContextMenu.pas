//  Context Menu = Grids
unit GridsContextMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Menus, uniMainMenu, DB,
  DBClient, uniDBNavigator, uniLabel, uniEdit, uniDBEdit,
  uniGUIBaseClasses, uniBasicGrid, uniDBGrid, MainModule;

type
  TUniGridsContextMenu = class(TUniFrame)
    UniDBGrid1: TUniDBGrid;
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBNavigator1: TUniDBNavigator;
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
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ServerModule;

procedure TUniGridsContextMenu.Cancel1Click(Sender: TObject);
begin
  if ClientDataSet1.State in dsEditModes then
    ClientDataSet1.Cancel;
end;

procedure TUniGridsContextMenu.DeleteRow1Click(Sender: TObject);
begin
  ClientDataSet1.Delete;
end;

procedure TUniGridsContextMenu.Edit1Click(Sender: TObject);
begin
  ClientDataSet1.Edit;
end;

procedure TUniGridsContextMenu.InsertRow1Click(Sender: TObject);
begin
  ClientDataSet1.Insert;
end;

procedure TUniGridsContextMenu.Post1Click(Sender: TObject);
begin
  if ClientDataSet1.State in dsEditModes then
    ClientDataSet1.Post;
end;

procedure TUniGridsContextMenu.UniDBGrid1CellContextClick(
  Column: TUniDBGridColumn; X, Y: Integer);
begin
  if ClientDataSet1.State in dsEditModes then
    UniPopupMenu2.Popup(X, Y, UniDBGrid1)
  else
    UniPopupMenu1.Popup(X, Y, UniDBGrid1);
end;

procedure TUniGridsContextMenu.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.LoadClientFromStream(ClientDataSet1, 'biolife.cds');
end;

initialization
  RegisterClass(TUniGridsContextMenu);

end.

// Multi Select = Grids
unit GridsMultiSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniButton, uniBitBtn,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel;

type
  TUniGridsMultiSelect = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);
  private
    procedure CopySelected(ADelete: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

{ TUniMultiGrid }

procedure TUniGridsMultiSelect.CopySelected(ADelete: Boolean);
var
  I: Integer;
begin
  ClientDataSet1.DisableControls;
  try
    for I := 0 to UniDBGrid1.SelectedRows.Count - 1 do
    begin
      ClientDataSet1.Bookmark := UniDBGrid1.SelectedRows[I];

      ClientDataSet2.Append;
      ClientDataSet2.CopyFields(ClientDataSet1);
      ClientDataSet2.Post;
    end;
  finally
    if ADelete then
      UniDBGrid1.SelectedRows.Delete;
    ClientDataSet1.EnableControls;
  end;
end;

procedure TUniGridsMultiSelect.UniBitBtn1Click(Sender: TObject);
begin
  CopySelected(False);
end;

procedure TUniGridsMultiSelect.UniBitBtn2Click(Sender: TObject);
begin
  CopySelected(True);
end;

procedure TUniGridsMultiSelect.UniBitBtn3Click(Sender: TObject);
begin
  ClientDataSet2.EmptyDataSet;
end;

initialization
  RegisterClass(TUniGridsMultiSelect);
end.

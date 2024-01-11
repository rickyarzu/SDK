unit JanuaGridColorRow;

interface

uses
  SysUtils, Classes, EnhCRDBGrid, Menus, DB;

type
  TJanuaGridColorRow = class(TComponent)
  procedure SetupClick(Sender: TObject);
  private
    FGrid: TEnhCRDBGrid;
    FGridColorSetup: TMenuItem;
    FSetupDataset: TDataset;
    procedure SetGrid(const Value: TEnhCRDBGrid);
    procedure SetSetupDataset(const Value: TDataset);

    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }

  published
    { Published declarations }
    property Grid: TEnhCRDBGrid read FGrid write SetGrid;
    property SetupDataset: TDataset read FSetupDataset write SetSetupDataset;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaGridColorRow]);
end;

{ TJanuaGridColorRow }

procedure TJanuaGridColorRow.SetGrid(const Value: TEnhCRDBGrid);
begin
  FGrid := Value;
  if Assigned(FGrid) then
  begin
    if Assigned(FGrid.PopupMenu) then
    begin
      FGridColorSetup := TMenuItem.Create(FGrid.PopupMenu) ;
      FGridColorSetup.Caption := 'Imposta Colori Griglia';
      FGridColorSetup.Name := 'ImpostaColori' + FGrid.Name;
      FGridColorSetup.OnClick := SetupClick;
      FGrid.PopupMenu.Items.Add(FGridColorSetup);
    end;
  end;
end;

procedure TJanuaGridColorRow.SetSetupDataset(const Value: TDataset);
begin
  FSetupDataset := Value;
end;

procedure TJanuaGridColorRow.SetupClick(Sender: TObject);
begin
  // procedure di Setup dell'oggetto .....
end;

end.

unit uJanuaDBListEditDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uJanuaDBRecordEditDialog, DB, DBAccess, Ora, JanuaSystem, MemDS,
  uJanuaFrameNavigator, AdvGlowButton, Grids, DBGrids, CRGrid, EnhCRDBGrid;

type
  TJanuaDBListEditDialog = class(TJanuaDBRecordEditDialog)
    EnhCRDBGrid1: TEnhCRDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JanuaDBListEditDialog: TJanuaDBListEditDialog;

implementation

{$R *.dfm}

end.

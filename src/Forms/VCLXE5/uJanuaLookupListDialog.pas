unit uJanuaLookupListDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uJanuaModelDialog, JanuaSystem, DB, MemDS, DBAccess, Ora,
  AdvGlowButton, JvExControls, JvDBLookup;

type
  TJanuaLookupListDialog = class(TJanuaModelDialog)
    dblModalita: TJvDBLookupList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JanuaLookupListDialog: TJanuaLookupListDialog;

implementation

{$R *.dfm}

end.

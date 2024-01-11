unit uJanuaDBRecordEditDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uJanuaModelDialog, DB, DBAccess, Ora, JanuaSystem, MemDS,
  AdvGlowButton, ExtCtrls, DBCtrls, uJanuaFrameNavigator;

type
  TJanuaDBRecordEditDialog = class(TJanuaModelDialog)
    JanuaFrameNavigator1: TJanuaFrameNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JanuaDBRecordEditDialog: TJanuaDBRecordEditDialog;

implementation

{$R *.dfm}

end.

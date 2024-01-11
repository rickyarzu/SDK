unit uJanuaModelDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Ora, AdvGlowButton, JanuaSystem;

type
  TJanuaModelDialog = class(TForm)
    OraSession1: TOraSession;
    OraQuery1: TOraQuery;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    JanuaSystem1: TJanuaSystem;
    OraDataSource1: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JanuaModelDialog: TJanuaModelDialog;

implementation

{$R *.dfm}

end.

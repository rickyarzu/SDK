unit udlgJanuaDBLookup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvDBLookup, StdCtrls, AdvGlowButton, DB;

type
  TdlgJanuadbLookup = class(TForm)
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label1: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgJanuadbLookup: TdlgJanuadbLookup;

implementation

{$R *.dfm}

end.

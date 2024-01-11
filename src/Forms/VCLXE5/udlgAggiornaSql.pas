unit udlgAggiornaSql;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, AdvMemo, AdvmSQLS, JvExControls,
  JvEditorCommon, JvUnicodeEditor, AdvGlowButton;

type
  TdlgAggiornaSql = class(TForm)
    Panel1: TPanel;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    JvWideEditor1: TJvWideEditor;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
  private
    { Private declarations }
  public
    { Public declarations }
  published

  end;

var
  dlgAggiornaSql: TdlgAggiornaSql;

implementation


{$R *.dfm}

end.

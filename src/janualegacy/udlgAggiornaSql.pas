unit udlgAggiornaSql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, VCL.Graphics,
  VCL.Controls, VCL.Forms,
  VCL.Dialogs, VCL.StdCtrls, VCL.Buttons, VCL.ExtCtrls, AdvMemo, AdvmSQLS, JvExControls,
  JvEditorCommon, JvUnicodeEditor, AdvGlowButton;

type
  TdlgAggiornaSql = class(TForm)
    Panel1: TPanel;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    JvWideEditor1: TJvWideEditor;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  published

  end;

var
  dlgAggiornaSql: TdlgAggiornaSql;

implementation

uses udmRepository;

{$R *.dfm}

procedure TdlgAggiornaSql.FormShow(Sender: TObject);
begin
  if not Assigned(dmRepository) then
    Application.CreateForm(TdmRepository, dmRepository);
end;

procedure TdlgAggiornaSql.AdvGlowButton1Click(Sender: TObject);
var
  MemoryStream: TMemoryStream;
begin
  try
    MemoryStream := TMemoryStream.Create;
    JvWideEditor1.Lines.SaveToStream(MemoryStream);
  finally
    FreeAndNil(dmRepository);
  end;
end;

end.

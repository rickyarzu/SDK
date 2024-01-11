unit udlgTestDico33DatiParente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, JvExMask, JvToolEdit, Vcl.StdCtrls, AdvGlowButton;

type
  TdlgTestDico33DatiParente = class(TForm)
    Label12: TLabel;
    Edit3: TEdit;
    Label14: TLabel;
    Edit5: TEdit;
    Label17: TLabel;
    Edit2: TEdit;
    Label16: TLabel;
    Edit4: TEdit;
    Label13: TLabel;
    Edit1: TEdit;
    Label15: TLabel;
    Edit6: TEdit;
    Label18: TLabel;
    Edit7: TEdit;
    Label19: TLabel;
    JvDateEdit1: TJvDateEdit;
    AdvGlowButton1: TAdvGlowButton;
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgTestDico33DatiParente: TdlgTestDico33DatiParente;

implementation

{$R *.dfm}

procedure TdlgTestDico33DatiParente.AdvGlowButton1Click(Sender: TObject);
begin
  self.Close;
end;

end.

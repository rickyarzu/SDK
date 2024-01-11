unit udlgMaiilSettingsTMS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvOfficeButtons, AdvGlowButton, AdvEdit, DBAdvEd, Vcl.StdCtrls, Vcl.ExtCtrls,
  Shader, AdvGroupBox;

type
  TdlgMaiilSettingsTMS = class(TForm)
    Shader1: TShader;
    Label1: TLabel;
    lbIP: TLabel;
    Label3: TLabel;
    lbDNDSuccess: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edServerAddress: TEdit;
    edPort: TDBAdvEdit;
    edUsername: TEdit;
    edPassword: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    btnOK: TAdvGlowButton;
    AdvOfficeRadioGroup1: TAdvOfficeRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgMaiilSettingsTMS: TdlgMaiilSettingsTMS;

implementation

{$R *.dfm}

end.

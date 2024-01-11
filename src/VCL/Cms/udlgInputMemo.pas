unit udlgInputMemo;

interface

uses Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Forms,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TdlgInputMemo = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Memo1: TMemo;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgInputMemo: TdlgInputMemo;

implementation

{$R *.dfm}

end.

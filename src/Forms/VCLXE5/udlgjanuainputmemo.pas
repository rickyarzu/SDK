unit udlgjanuainputmemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvGlowButton, StdCtrls, AdvSmoothButton, CurvyControls;

type
  Tdlgjanuainputmemo = class(TForm)
    Panel1: TPanel;
    Memo1: TCurvyMemo;
    btnOK: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgjanuainputmemo: Tdlgjanuainputmemo;

implementation

{$R *.dfm}

procedure Tdlgjanuainputmemo.FormShow(Sender: TObject);
begin
   memo1.setfocus;
end;

end.

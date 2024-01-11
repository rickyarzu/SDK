unit ufrmTestRSS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Janua.Core.System, Vcl.StdCtrls, Janua.Core.Cms,
  Janua.Core.Classes;

type
  TfrmTestRSS = class(TForm)
    JanuaOS1: TJanuaOS;
    Button1: TButton;
    JanuaRSSFeedReader1: TJanuaRSSFeedReader;
    JanuaCoreLogger1: TJanuaCoreLogger;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FJanuaRSS: Janua.Core.Cms.TJanuaRSSFeedReader;
  public
    { Public declarations }
  end;

var
  frmTestRSS: TfrmTestRSS;

implementation

{$R *.dfm}

procedure TfrmTestRSS.Button1Click(Sender: TObject);
begin
  FJanuaRSS := Janua.Core.Cms.TJanuaRSSFeedReader.Create(self);
  FJanuaRSS.JanuaCoreOS1 := self.JanuaOS1;
end;

end.

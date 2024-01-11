unit TestFrame2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, Vcl.StdCtrls;

type
  TBarFrame2 = class(TFrame)
    scMemo1: TscMemo;
    scCheckBox1: TscCheckBox;
    scButton1: TscButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

unit TestFrame1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, MainUnit;

type
  TBarFrame1 = class(TFrame)
    scButton1: TscButton;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton4: TscButton;
    scButton5: TscButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

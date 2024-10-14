unit Janua.VCL.frameGoogleColor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TframeVCLJanuaGoogleColor = class(TFrame)
    pnlColor: TPanel;
    lbColorIF: TLabel;
    lbBackGround: TLabel;
    lbForeGround: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

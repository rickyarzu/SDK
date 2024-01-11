unit Janua.FMX.frmBrowser;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation, FMX.WebBrowser;

type
  TfmLndBrowser = class(TForm)
    ToolBar1: TToolBar;
    lblTitle1: TLabel;
    SpeedButton3: TSpeedButton;
    WebBrowser1: TWebBrowser;
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmLndBrowser: TfmLndBrowser;

implementation

{$R *.fmx}

procedure TfmLndBrowser.SpeedButton3Click(Sender: TObject);
begin
  self.Close
end;

end.

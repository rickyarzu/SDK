unit ufrmJanuaAllDemosContainer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Janua.VCL.frameWebServerManager;

type
  TfrmAllDemosContainer = class(TForm)
    Panel1: TPanel;
    frameDMVCWebBroker: TJanuaframeWebServerManager;
    edPassword: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    btnLogin: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAllDemosContainer: TfrmAllDemosContainer;

implementation

{$R *.dfm}

end.

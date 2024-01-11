unit Janua.Test.VCL.frmRESTAuthorization;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmVCLTestRESTAuthorization = class(TForm)
    pnlTestsHeader: TPanel;
    btnStartTests: TButton;
    memTest: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLTestRESTAuthorization: TfrmVCLTestRESTAuthorization;

implementation

{$R *.dfm}

end.

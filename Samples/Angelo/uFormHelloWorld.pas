unit uFormHelloWorld;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uJanuaVCLForm, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmHelloWorld = class(TJanuaVCLFormModel)
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHelloWorld: TfrmHelloWorld;

implementation

{$R *.dfm}

end.

unit ufrmVCLTestBindings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uVCLBindingInterposers;

type
  TfrmVCLTestBindings = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLTestBindings: TfrmVCLTestBindings;

implementation

uses uBindingEngine;


{$R *.dfm}



procedure TfrmVCLTestBindings.FormCreate(Sender: TObject);
begin
  Edit1.Bind('Text', Edit2, 'Text');
end;

end.

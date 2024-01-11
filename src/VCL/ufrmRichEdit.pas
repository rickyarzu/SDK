unit ufrmRichEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Forms, AdvMemo, Vcl.Controls,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmRichEdit = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    advMemo1: TRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRichEdit: TfrmRichEdit;

implementation

{$R *.dfm}

end.

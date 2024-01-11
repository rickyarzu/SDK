unit ufrmAttesa;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ComCtrls, jpeg;

type
  TfrmAttesa = class(TForm)
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    ProductName: TLabel;
    Memo1: TMemo;
    Image1: TImage;
  private
    FText: string;
    procedure SetText(const Value: string);
    { Private declarations }
  public
    { Public declarations }
  published
    property Text: string read FText write SetText;
  end;

var
  frmAttesa: TfrmAttesa;

implementation


{$R *.DFM}

{ TfrmAttesa }

procedure TfrmAttesa.SetText(const Value: string);
begin
  FText := Value;
  Memo1.Lines.Text := Value; 
end;

end.
 

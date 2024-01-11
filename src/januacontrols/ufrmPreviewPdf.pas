unit ufrmPreviewPdf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, AcroPDFLib_TLB, ExtCtrls, AdvPanel, Buttons, StdCtrls;

type
  TjanuaPreviewPDF = class(TForm)
    AdvPanel1: TAdvPanel;
    AcroPDF1: TAcroPDF;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  januaPreviewPDF: TjanuaPreviewPDF;

implementation


{$R *.dfm}

procedure TjanuaPreviewPDF.SpeedButton1Click(Sender: TObject);
begin
      Close;
end;

procedure TjanuaPreviewPDF.FormResize(Sender: TObject);
begin
     AcroPDF1.Width := Self.Width - 8;

end;

procedure TjanuaPreviewPDF.FormCreate(Sender: TObject);
begin
     AcroPDF1.Width := Screen.Width - 8;
     AcroPDF1.Height := Screen.Height - 60;

end;

end.

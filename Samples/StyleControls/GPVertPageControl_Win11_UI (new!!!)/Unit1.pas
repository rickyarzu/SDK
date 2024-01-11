unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scGPVertPagers,
  Vcl.StdCtrls, Vcl.Mask, scGPExtControls, scGPControls, scImageCollection,
  scGPImages, scModernControls;

type
  TForm1 = class(TForm)
    scGPVertPageControl1: TscGPVertPageControl;
    scGPVertPageControlPage1: TscGPVertPageControlPage;
    scGPVertPageControlPage2: TscGPVertPageControlPage;
    scGPVertPageControlPage3: TscGPVertPageControlPage;
    scGPVertPageControlPage4: TscGPVertPageControlPage;
    scGPEdit1: TscGPEdit;
    scGPVertPageControlPage5: TscGPVertPageControlPage;
    scGPVertPageControlPage6: TscGPVertPageControlPage;
    scGPPanel1: TscGPPanel;
    scGPGlyphButton19: TscGPGlyphButton;
    scGPGlyphButton21: TscGPGlyphButton;
    scGPGlyphButton2: TscGPGlyphButton;
    scLabel1: TscLabel;
    scLabel2: TscLabel;
    scLabel3: TscLabel;
    scLabel4: TscLabel;
    scLabel5: TscLabel;
    scLabel6: TscLabel;
    scGPImageCollection1: TscGPImageCollection;
    scGPTrackBar1: TscGPTrackBar;
    scGPTrackBar2: TscGPTrackBar;
    scGPTrackBar3: TscGPTrackBar;
    scGPSwitch1: TscGPSwitch;
    scGPSwitch2: TscGPSwitch;
    scGPSwitch3: TscGPSwitch;
    procedure scGPGlyphButton21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.scGPGlyphButton21Click(Sender: TObject);
begin
  Close;
end;

end.

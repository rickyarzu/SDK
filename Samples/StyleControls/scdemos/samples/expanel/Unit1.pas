unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scControls, scExtControls, Vcl.StdCtrls,
  scStyleManager, scStyledForm;

type
  TForm1 = class(TForm)
    scExPanel1: TscExPanel;
    scExPanel2: TscExPanel;
    scExPanel3: TscExPanel;
    scExPanel4: TscExPanel;
    scScrollBox1: TscScrollBox;
    scExPanel5: TscExPanel;
    scStyledForm1: TscStyledForm;
    scStyleManager1: TscStyleManager;
    scCheckBox1: TscCheckBox;
    scLabel1: TscLabel;
    procedure scCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.scCheckBox1Click(Sender: TObject);
begin
  scExPanel5.MovingInParentClientBounds := scCheckBox1.Checked;
end;

end.

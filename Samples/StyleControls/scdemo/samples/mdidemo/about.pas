unit about;

interface

uses Windows, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, scStyledForm, scControls, ShellApi;

type
  TAboutBox = class(TForm)
    scStyledForm1: TscStyledForm;
    scPanel1: TscPanel;
    scButton1: TscButton;
    scLabel4: TscLabel;
    scButton10: TscButton;
    scLabel28: TscLabel;
    procedure scButton1Click(Sender: TObject);
    procedure scButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

procedure TAboutBox.scButton10Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TAboutBox.scButton1Click(Sender: TObject);
begin
  Close;
end;

end.
 

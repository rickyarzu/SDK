unit uNavBarFrame;

interface

uses
  Vcl.Forms, Vcl.Buttons, Vcl.Controls, Vcl.StdCtrls, System.Classes, Vcl.ExtCtrls, AdvPanel;

type
  TFrameNavBar = class(TFrame)
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

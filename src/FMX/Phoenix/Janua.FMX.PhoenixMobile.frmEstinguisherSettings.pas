unit Janua.FMX.PhoenixMobile.frmEstinguisherSettings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Layouts, FMX.Objects,
  FMX.Controls.Presentation, Janua.FMX.PhoenixMobile.frameEstinguisherSettings;

type
  TfrmFMXEstinguisherSettings = class(TForm)
    Rectangle9: TRectangle;
    Layout11: TLayout;
    lbLuci: TLabel;
    SpeedButton7: TSpeedButton;
    frameFMXPhoenixMobileEstinguisherSetting1: TframeFMXPhoenixMobileEstinguisherSetting;
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFMXEstinguisherSettings: TfrmFMXEstinguisherSettings;

implementation

{$R *.fmx}

procedure TfrmFMXEstinguisherSettings.SpeedButton7Click(Sender: TObject);
begin
  Close;
end;

end.

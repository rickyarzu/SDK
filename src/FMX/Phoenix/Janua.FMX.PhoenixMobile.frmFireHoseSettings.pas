unit Janua.FMX.PhoenixMobile.frmFireHoseSettings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Layouts, FMX.Objects,
  FMX.Controls.Presentation, Janua.FMX.PhoenixMobile.frameFireHoseSettings;

type
  TfrmFMXFireHoseSettings = class(TForm)
    Rectangle9: TRectangle;
    Layout11: TLayout;
    lbLuci: TLabel;
    SpeedButton7: TSpeedButton;
    frameFMXPhoenixMobileFireHoseSetting1: TframeFMXPhoenixMobileFireHoseSetting;
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFMXFireHoseSettings: TfrmFMXFireHoseSettings;

implementation

{$R *.fmx}

procedure TfrmFMXFireHoseSettings.SpeedButton7Click(Sender: TObject);
begin
  Close;
end;

end.

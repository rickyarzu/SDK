unit Janua.FMX.PhoenixMobile.frmDoorSettings;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Layouts, FMX.Objects,
  FMX.Controls.Presentation, Janua.FMX.PhoenixMobile.frameDoorSettings;

type
  TfrmFMXDoorSettings = class(TForm)
    Rectangle9: TRectangle;
    Layout11: TLayout;
    lbLuci: TLabel;
    SpeedButton7: TSpeedButton;
    frameFMXPhoenixMobileDoorSetting1: TframeFMXPhoenixMobileDoorSetting;
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFMXDoorSettings: TfrmFMXDoorSettings;

implementation

{$R *.fmx}

procedure TfrmFMXDoorSettings.SpeedButton7Click(Sender: TObject);
begin
  Close;
end;

end.

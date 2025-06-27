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

    procedure SpeedButton7Click(Sender: TObject);
  private
    FFRame: TframeFMXPhoenixMobileDoorSetting;
    function GetFrame: TframeFMXPhoenixMobileDoorSetting;
    { Private declarations }
  public
    { Public declarations }
    property frameFMXPhoenixMobileDoorSetting1: TframeFMXPhoenixMobileDoorSetting read GetFrame;
  end;

var
  frmFMXDoorSettings: TfrmFMXDoorSettings;

implementation

{$R *.fmx}

function TfrmFMXDoorSettings.GetFrame: TframeFMXPhoenixMobileDoorSetting;
begin
  if not ASsigned(FFRame) then
  begin
    FFRame := TframeFMXPhoenixMobileDoorSetting.Create(self);
    FFRame.Position.y := 100;
    FFRame.Align := TAlignLayout.Client;
    FFRame.Parent := Self;
    FFRame.Visible := True;
  end;

  Result := FFRame
end;

procedure TfrmFMXDoorSettings.SpeedButton7Click(Sender: TObject);
begin
  FFRame.Free;
  FFRame := nil;
  Close;
end;

end.

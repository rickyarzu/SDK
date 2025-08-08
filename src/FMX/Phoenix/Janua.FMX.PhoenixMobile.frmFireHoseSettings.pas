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
    procedure SpeedButton7Click(Sender: TObject);
  private
    FFRame: TframeFMXPhoenixMobileFireHoseSetting;
    function GetFrame: TframeFMXPhoenixMobileFireHoseSetting;
    { Private declarations }
  public
    { Public declarations }
    property frameFMXPhoenixMobileFireHoseSetting1: TframeFMXPhoenixMobileFireHoseSetting read GetFrame;
  end;

var
  frmFMXFireHoseSettings: TfrmFMXFireHoseSettings;

implementation

{$R *.fmx}

function TfrmFMXFireHoseSettings.GetFrame: TframeFMXPhoenixMobileFireHoseSetting;
begin
  if not ASsigned(FFRame) then
  begin
    FFRame := TframeFMXPhoenixMobileFireHoseSetting.Create(self);
    FFRame.Position.y := 100;
    FFRame.Align := TAlignLayout.Client;
    FFRame.Parent := Self;
    FFRame.Visible := True;
  end;

  Result := FFRame

end;

procedure TfrmFMXFireHoseSettings.SpeedButton7Click(Sender: TObject);
begin
  FFRame.Free;
  FFRame := nil;
  Close;
end;

end.

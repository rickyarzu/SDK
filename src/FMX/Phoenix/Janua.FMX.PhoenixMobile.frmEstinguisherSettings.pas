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

    procedure SpeedButton7Click(Sender: TObject);
  private
    FFRame: TframeFMXPhoenixMobileEstinguisherSetting;
    function GetFrame: TframeFMXPhoenixMobileEstinguisherSetting;
    { Private declarations }
  public
    property frameFMXPhoenixMobileEstinguisherSetting1: TframeFMXPhoenixMobileEstinguisherSetting
      read GetFrame;
  end;

var
  frmFMXEstinguisherSettings: TfrmFMXEstinguisherSettings;

implementation

{$R *.fmx}

function TfrmFMXEstinguisherSettings.GetFrame: TframeFMXPhoenixMobileEstinguisherSetting;
begin
  if not ASsigned(FFRame) then
  begin
    FFRame := TframeFMXPhoenixMobileEstinguisherSetting.Create(self);
    FFRame.Position.y := 100;
    FFRame.Align := TAlignLayout.Client;
    FFRame.Parent := Self;
    FFRame.Visible := True;
  end;

  Result := FFRame
end;

procedure TfrmFMXEstinguisherSettings.SpeedButton7Click(Sender: TObject);
begin
  FFRame.Free;
  FFRame := nil;
  Close;
end;

end.

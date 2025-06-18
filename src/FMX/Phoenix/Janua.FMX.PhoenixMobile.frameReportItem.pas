unit Janua.FMX.PhoenixMobile.frameReportItem;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Objects, FMX.Layouts, FMX.TMSBitmapContainer, FMX.Ani, FMX.TMSBaseControl, FMX.TMSBitmap,
  // Janua
  DTO.Phoenix.ReportList;

type
  TframeReportItem = class(TFrame)
    Rectangle1: TRectangle;
    Label1: TLabel;
    lbRagioneSociale: TLabel;
    lbAddress: TLabel;
    lbEstinguishers: TLabel;
    Layout1: TLayout;
    btnGoogleMaps: TTMSFMXImage;
    BitmapAnimation1: TBitmapAnimation;
    BitmapAnimation2: TBitmapAnimation;
    BitmapAnimation3: TBitmapAnimation;
    btnPhone: TTMSFMXImage;
    BitmapAnimation4: TBitmapAnimation;
    BitmapAnimation5: TBitmapAnimation;
    BitmapAnimation6: TBitmapAnimation;
    procedure NotifyClick(Sender: TObject);
  private
    FStatino: TLSStatino;
    FOnItemClick: TNotifyEvent;
    procedure SetStatino(const Value: TLSStatino);
    procedure SetOnItemClick(const Value: TNotifyEvent);
    { Private declarations }
  public
    { Public declarations }
    property Statino: TLSStatino read FStatino write SetStatino;
    property OnItemClick: TNotifyEvent read FOnItemClick write SetOnItemClick;
  end;

implementation

{$R *.fmx}

uses Janua.FMX.PhoenixMobile.Resources, Janua.FMX.PhoenixMobile.dmAppMobileController;

{ TframeReportItem }

procedure TframeReportItem.NotifyClick(Sender: TObject);
begin
  if Assigned(FOnItemClick) then
    FOnItemClick(self);
end;

procedure TframeReportItem.SetOnItemClick(const Value: TNotifyEvent);
begin
  FOnItemClick := Value;
end;

procedure TframeReportItem.SetStatino(const Value: TLSStatino);
begin
  FStatino := Value;
end;

end.

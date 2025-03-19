unit Janua.FMX.frmTMSFNCGoogleDirections;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.TMSFNCCustomControl, FMX.TMSFNCWebBrowser, FMX.TMSFNCMaps,
  FMX.TMSFNCMapsCommonTypes, FMX.TMSFNCGoogleMaps, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit,
  FMX.Layouts, FMX.ListBox, FMX.ScrollBox, FMX.Memo, FMX.Colors, FMX.Objects, FMX.TabControl;

type
  TrmFMXTMSFNCGoogleDirections = class(TForm)
    tabMap: TTabControl;
    tabGMap: TTabItem;
    tabRoute: TTabItem;
    pnlRoutes: TPanel;
    TMSFNCWebBrowser1: TTMSFNCWebBrowser;
    Rectangle1: TRectangle;
    Label6: TLabel;
    lbDescription: TLabel;
    lbDistance: TLabel;
    lbDuration: TLabel;
    Label2: TLabel;
    TMSFNCGoogleMaps1: TTMSFNCGoogleMaps;
    toolBarDriverTask: TToolBar;
    Image6: TImage;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure TMSFNCGoogleMaps1RetrievedDirectionsData(Sender: TObject; AEventData: TTMSFNCMapsEventData;
      ADirectionsData: TTMSFNCGoogleMapsDirectionsData);
    procedure edAPIKeyChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FTravelMode: TTMSFNCGoogleMapsDirectionsTravelMode;
    FDestination: string;
    FOrigin: string;
    FAPIKey: string;
    FRouteColor: TAlphaColor;
    procedure SetTravelMode(const Value: TTMSFNCGoogleMapsDirectionsTravelMode);
    procedure SetDestination(const Value: string);
    procedure SetOrigin(const Value: string);
    procedure SetAPIKey(const Value: string);
    procedure SetRouteColor(const Value: TAlphaColor);
    { Private declarations }
  public
    { Public declarations }
    htmlstyle: string;
    procedure ClearDirections;
    procedure GetDirections;
    property TravelMode: TTMSFNCGoogleMapsDirectionsTravelMode read FTravelMode write SetTravelMode;
    property Origin: string read FOrigin write SetOrigin;
    property Destination: string read FDestination write SetDestination;
    property APIKey: string read FAPIKey write SetAPIKey;
    property RouteColor: TAlphaColor read FRouteColor write SetRouteColor;
  end;

var
  rmFMXTMSFNCGoogleDirections: TrmFMXTMSFNCGoogleDirections;

implementation

{$R *.fmx}

procedure TrmFMXTMSFNCGoogleDirections.ClearDirections;
begin
  //btShowDirections.Enabled := True;
  TMSFNCGoogleMaps1.ClearDirections;
  TMSFNCWebBrowser1.LoadHTML(htmlstyle);
  lbDescription.Text := '';
  lbDistance.Text := '';
  lbDuration.Text := '';
  Origin := '';
  Destination := '';
  FRouteColor := TAlphaColorRec.Blue; // Imposta il colore blu;
end;

procedure TrmFMXTMSFNCGoogleDirections.edAPIKeyChange(Sender: TObject);
begin
  TMSFNCGoogleMaps1.BeginUpdate;
  TMSFNCGoogleMaps1.APIKey := APIKey;
  TMSFNCGoogleMaps1.EndUpdate;
end;

procedure TrmFMXTMSFNCGoogleDirections.FormCreate(Sender: TObject);
begin
  htmlstyle := '<style>' +
    'body {font-family: Arial, sans-serif; font-size: 0.9em; background-color: #F0F0F0;} ' +
    'ol { list-style: none; counter-reset: item} ' + 'li { counter-increment: item; margin-bottom: 5px;} ' +
    'li:before { margin-right: 10px;  margin-bottom: 10px; padding: 5px; content: counter(item); border-radius: 50%; background-color: gray; width: 1.5em; display: inline-block; color: white; text-align: center;} '
    + '</style>';
  TMSFNCWebBrowser1.LoadHTML(htmlstyle);
  lbDistance.Text := '';
  lbDuration.Text := '';
  FAPIKey := 'AIzaSyC4MhJTBoZVF6ps-jPIaw_bvyRlAyITxoM';
  FRouteColor := TAlphaColorRec.Blue; // Imposta il colore blu;
end;

procedure TrmFMXTMSFNCGoogleDirections.GetDirections;
begin
  if (Origin <> '') and (Destination <> '') then
  begin
    //btShowDirections.Enabled := False;
    TMSFNCGoogleMaps1.AddDirections(Origin, Destination, True, True, FRouteColor, 2, 1, FTravelMode, False,
      nil, False);
  end
  else
    ShowMessage('Please fill in the Origin and Destination fields first.');
end;

procedure TrmFMXTMSFNCGoogleDirections.SetAPIKey(const Value: string);
begin
  FAPIKey := Value;
end;

procedure TrmFMXTMSFNCGoogleDirections.SetDestination(const Value: string);
begin
  FDestination := Value;
end;

procedure TrmFMXTMSFNCGoogleDirections.SetOrigin(const Value: string);
begin
  FOrigin := Value;
end;

procedure TrmFMXTMSFNCGoogleDirections.SetRouteColor(const Value: TAlphaColor);
begin
  FRouteColor := Value;
end;

procedure TrmFMXTMSFNCGoogleDirections.SetTravelMode(const Value: TTMSFNCGoogleMapsDirectionsTravelMode);
begin
  FTravelMode := Value;
end;

procedure TrmFMXTMSFNCGoogleDirections.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TrmFMXTMSFNCGoogleDirections.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  GetDirections;
end;

procedure TrmFMXTMSFNCGoogleDirections.TMSFNCGoogleMaps1RetrievedDirectionsData(Sender: TObject;
  AEventData: TTMSFNCMapsEventData; ADirectionsData: TTMSFNCGoogleMapsDirectionsData);
var
  I, J: Integer;
  html: string;
begin
  //btShowDirections.Enabled := True;
  lbDescription.Text := '';
  lbDistance.Text := '';
  lbDuration.Text := '';
  html := htmlstyle;

  if Length(ADirectionsData.Routes) > 0 then
  begin
    lbDescription.Text := ADirectionsData.Routes[0].Name;

    for I := 0 to Length(ADirectionsData.Routes[0].Legs) - 1 do
    begin
      lbDuration.Text := IntToStr(Round(ADirectionsData.Routes[0].Legs[I].Duration / 60)) + ' min';
      lbDistance.Text := FormatFloat('0', ADirectionsData.Routes[0].Legs[I].Distance / 1000) + ' km';

      html := html + '<ol>';

      for J := 0 to Length(ADirectionsData.Routes[0].Legs[I].Steps) - 1 do
      begin
        html := html + '<li><b>' + FormatFloat('0.00', ADirectionsData.Routes[0].Legs[I].Steps[J].Distance /
          1000) + ' km | ' + IntToStr(Round(ADirectionsData.Routes[0].Legs[I].Steps[J].Duration / 60)) +
          ' min </b><br>' + ADirectionsData.Routes[0].Legs[I].Steps[J].Instructions + '<br><br></li>';
      end;

      html := html + '</ol>';
    end;
  end
  else
    ShowMessage('Directions could not be calculated for the provided Origin and Destination values.');

  TMSFNCWebBrowser1.LoadHTML(html);
end;

end.

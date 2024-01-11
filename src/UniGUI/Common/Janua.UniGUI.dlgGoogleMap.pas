unit Janua.UniGUI.dlgGoogleMap;

interface

uses
  // Win RTL
  Windows, Messages, SysUtils, Variants, Classes, Graphics, System.Generics.Collections,
  Controls, Forms,
  // Janua
  Janua.Core.Classes,
  // UniGUI
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniButton,
  uniBitBtn, uniHTMLFrame, UniFSMap, uniTimer;

type

  TJanuaPin = record
  public
    Latitude: Double;
    Longitude: Double;
    Animation: Boolean;
    Title: string;
  public
    constructor Create(const aLat, aLon: Double; const aAnimation: Boolean = True);
  end;

  TdlgUniGUIGoogleMap = class(TUniForm)
    pnlBottom: TUniPanel;
    btnOK: TUniBitBtn;
    map: TUniFSMap;
    btnTest: TUniButton;
    UniTimer1: TUniTimer;
    UniTimer2: TUniTimer;
    procedure btnOKClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniTimer1Timer(Sender: TObject);
    procedure btnTestClick(Sender: TObject);
    procedure UniTimer2Timer(Sender: TObject);
  private
    FPins: TList<TJanuaPin>;
    procedure SetupMap;
    procedure SetPins(const Value: TList<TJanuaPin>);
    { Private declarations }
  public
    property Pins: TList<TJanuaPin> read FPins write SetPins;
  end;

  TGoogleMapsDialog = class(TJanuaCoreComponent)
  private
    FPins: TList<TJanuaPin>;
    procedure SetPins(const Value: TList<TJanuaPin>);
    procedure SetupMap;
  public
    constructor Create(AOnwer: TComponent); override;
    destructor Destroy; override;
    procedure Execute(const aLat, aLon: Double);
    procedure AddSimplePin(const aLat, aLon: Double; const aAnimation: Boolean = True);
    property Pins: TList<TJanuaPin> read FPins write SetPins;
  published

  end;

implementation

uses
  uniGUIApplication, Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}
{ TGoogleMapsDialog }

procedure TGoogleMapsDialog.AddSimplePin(const aLat, aLon: Double; const aAnimation: Boolean);
var
  aRecord: TJanuaPin;
begin
  aRecord := TJanuaPin.Create(aLat, aLon, aAnimation);
  Pins.Add(aRecord)
end;

constructor TGoogleMapsDialog.Create(AOnwer: TComponent);
begin
  inherited;
  FPins := TList<TJanuaPin>.Create;
end;

destructor TGoogleMapsDialog.Destroy;
begin
  FPins.Free;
  inherited;
end;

procedure TGoogleMapsDialog.Execute(const aLat, aLon: Double);
var
  lDlg: TdlgUniGUIGoogleMap;
begin
  AddSimplePin(aLat, aLon, True);
  lDlg := TdlgUniGUIGoogleMap.Create(UniApplication);
  lDlg.Pins := self.Pins;
  lDlg.ShowModal;
end;

procedure TGoogleMapsDialog.SetPins(const Value: TList<TJanuaPin>);
begin
  FPins := Value;
end;

procedure TGoogleMapsDialog.SetupMap;
begin

end;

{ TJanuaPin }

constructor TJanuaPin.Create(const aLat, aLon: Double; const aAnimation: Boolean);
begin
  Latitude := aLat;
  Longitude := aLon;
  Animation := aAnimation;
end;

procedure TdlgUniGUIGoogleMap.btnOKClick(Sender: TObject);
begin
  Close;
end;

procedure TdlgUniGUIGoogleMap.btnTestClick(Sender: TObject);
begin
  SetupMap;
end;

procedure TdlgUniGUIGoogleMap.SetPins(const Value: TList<TJanuaPin>);
begin
  FPins := Value;
end;

procedure TdlgUniGUIGoogleMap.SetupMap;
var
  lPin: TJanuaPin;
  lMark: TMarker;
begin
  map.InitMap;

  map.DeleteAllMarker;
  map.SetMapTypeId(TMapTypeId.ROADMAP);

  for lPin in Pins do
  begin
    lMark := TMarker.Create; // Não precisa se preocupar em liberar os objetos, o FSMap cuida disso ;)
    lMark.Lat := FloatToStrDotted(lPin.Latitude);
    lMark.Lng := FloatToStrDotted(lPin.Longitude);
    lMark.Labl := lPin.Title;
    lMark.Animation := TMarkerAnimation(0);
    lMark.Draggable := False;
    map.AddMarker(lMark);
  end;
  // Display with a new decimal point character
  var
  sLat := Format('%10.7f', [Pins[0].Latitude], TFormatSettings.Create('en-US'));
  var
  sLon := Format('%10.7f', [Pins[0].Longitude], TFormatSettings.Create('en-US'));
  map.SetCenter(sLat, sLon);
  map.InitMap;

end;

procedure TdlgUniGUIGoogleMap.UniFormShow(Sender: TObject);
begin
  SetupMap;
  UniTimer1.Enabled := True;
end;

procedure TdlgUniGUIGoogleMap.UniTimer1Timer(Sender: TObject);
begin
  SetupMap;
  // UniTimer2.Enabled := True;
end;

procedure TdlgUniGUIGoogleMap.UniTimer2Timer(Sender: TObject);
begin
  SetupMap;
end;

end.

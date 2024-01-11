unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, unipagecontrol,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame, uniMap, uniButton, uniTimer;

type
  TMainForm = class(TUniForm)
    uniMap1: TUniMap;
    procedure UniMap1VectorCreated(Sender: TObject;
      var Vector: TUniMapVector);
    procedure UniMap1MarkerCreated(Sender: TObject;
      var Marker: TUniMapMarker);
    procedure UniMap1MarkerEdited(Sender: TObject; var Marker: TUniMapMarker);
    procedure UniMap1VectorEdited(Sender: TObject; var Vector: TUniMapVector);
    procedure UniMap1VectorDeleted(Sender: TObject;
      var Vector: TUniMapVector);
    procedure UniMap1MarkerDeleted(Sender: TObject;
      var Marker: TUniMapMarker);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniMap1MarkerCreated(Sender: TObject;
  var Marker: TUniMapMarker);
begin
  with Marker do
  begin
    Popup.content:='A New Marker';
    AddToMap;
    OpenPopup;
  end;
end;

procedure TMainForm.UniMap1MarkerDeleted(Sender: TObject;
  var Marker: TUniMapMarker);
begin
  ShowToast('You Deleted a Marker. InternalID: '+IntToStr(Marker.InternalId));
end;

procedure TMainForm.UniMap1MarkerEdited(Sender: TObject;
  var Marker: TUniMapMarker);
begin
  with Marker do
  begin
    SetPopupContent('You Edited This Marker');
    OpenPopup;
  end;
end;

procedure TMainForm.UniMap1VectorCreated(Sender: TObject;
  var Vector: TUniMapVector);
begin
  with Vector do
  begin
    if VectorType = mvPolygon then
      Popup.content := 'Area: '+FloatToStr(Area)
    else
      Popup.content:='A New Vector';
    AddToMap;
    FitBounds;
    OpenPopup;
  end;
end;

procedure TMainForm.UniMap1VectorDeleted(Sender: TObject;
  var Vector: TUniMapVector);
begin
  ShowToast('You Deleted a Vector. InternalID: '+IntToStr(Vector.InternalId));
end;

procedure TMainForm.UniMap1VectorEdited(Sender: TObject;
  var Vector: TUniMapVector);
begin
  with Vector do
  begin
    if VectorType = mvPolygon then
      SetPopupContent('New Area: '+FloatToStr(Area))
    else
      SetPopupContent('You Edited This Vector');
    OpenPopup;
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.

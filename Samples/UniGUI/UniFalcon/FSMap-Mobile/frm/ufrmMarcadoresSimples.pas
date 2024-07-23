unit uFrmMarcadoresSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniPanel, uniHTMLFrame, UniFSMap, UnimFSMap,
  unimSegmentedButton, uniToolBar, unimToolbar;

type
  TfrmMarcadoresSimples = class(TUnimForm)
    sgb1: TUnimSegmentedButton;
    map: TUnimFSMap;
    procedure UnimFormCreate(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure sgb1Click(Sender: TUnimButtonItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmMarcadoresSimples: TfrmMarcadoresSimples;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmMarcadoresSimples: TfrmMarcadoresSimples;
begin
  Result := TfrmMarcadoresSimples(UniMainModule.GetFormInstance(TfrmMarcadoresSimples));
end;

procedure TfrmMarcadoresSimples.mapAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
var
  Mark: TMarker;
begin
  if EventName = 'fs_map_touchend' then
  begin
    Mark := TMarker.Create; //Não precisa se preocupar em liberar os objetos, o FSMap cuida disso ;)
    Mark.Lat := Params['lat'].Value;
    Mark.Lng := Params['lng'].Value;
    map.AddMarker(Mark);
  end;
end;

procedure TfrmMarcadoresSimples.sgb1Click(Sender: TUnimButtonItem);
begin
  map.SetMapTypeId(TMapTypeId(TUnimButtonItem(Sender).Index));
end;

procedure TfrmMarcadoresSimples.UnimFormCreate(Sender: TObject);
begin
  map.InitMap;
end;

initialization
  RegisterClass(TfrmMarcadoresSimples);

end.

unit uFrmSearchBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniEdit, unimEdit, uniGUIBaseClasses, unimPanel,
  uniPanel, uniHTMLFrame, UniFSMap, UnimFSMap;

type
  TfrmSearchBox = class(TUnimForm)
    pnl1: TUnimPanel;
    edtSearch: TUnimEdit;
    btnSearch: TUnimButton;
    map: TUnimFSMap;
    procedure btnSearchClick(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmSearchBox: TfrmSearchBox;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmSearchBox: TfrmSearchBox;
begin
  Result := TfrmSearchBox(UniMainModule.GetFormInstance(TfrmSearchBox));
end;

procedure TfrmSearchBox.btnSearchClick(Sender: TObject);
begin
  map.SearchBox(edtSearch.Text);
end;

procedure TfrmSearchBox.mapAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  if EventName = 'fs_map_geocoder' then
  begin
    if Params.Values['notfound'] <> EmptyStr then
    begin
      ShowMessage(Params.Values['notfound']);
      Exit;
    end
    else
    begin
      map.SetCenter(Params.Values['lat'], Params.Values['lng']);
      map.SetZoom(13);
    end;
  end;
end;

procedure TfrmSearchBox.UnimFormCreate(Sender: TObject);
begin
  map.InitMap;
end;

initialization
  RegisterClass(TfrmSearchBox);

end.

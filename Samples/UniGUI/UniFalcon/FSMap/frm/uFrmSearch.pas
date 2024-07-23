unit uFrmSearch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniPageControl, uniGUIBaseClasses,
  uniHTMLFrame, UniFSMap, uniEdit, uniButton, uniBitBtn, UniFSButton;

type
  TfrmSearch = class(TUniFrame)
    pnlTop: TUniPanel;
    pnlCenter: TUniPanel;
    edtSearch: TUniEdit;
    btnSearch: TUniFSButton;
    map: TUniFSMap;
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btnSearchClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure edtSearchKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}



procedure TfrmSearch.btnSearchClick(Sender: TObject);
begin
  map.SearchBox(edtSearch.Text);
end;

procedure TfrmSearch.edtSearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnSearch.OnClick(Sender);
end;

procedure TfrmSearch.mapAjaxEvent(Sender: TComponent; EventName: string;
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
      map.SetZoom(16);
    end;
  end;
end;

procedure TfrmSearch.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmSearch);

end.

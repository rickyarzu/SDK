unit uFrmSearchBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSMap;

type
  TfrmSearchBox = class(TUniFrame)
    map: TUniFSMap;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}

procedure TfrmSearchBox.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmSearchBox);

end.

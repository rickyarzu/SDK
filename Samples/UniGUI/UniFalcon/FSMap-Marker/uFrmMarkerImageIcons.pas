unit uFrmMarkerImageIcons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniHTMLFrame, UniFSMap, uniGUIBaseClasses, uniPanel,
  uniMultiItem, uniListBox, uniButton, uniBitBtn, UniFSButton;

type
  TfrmMarkerImageIcons = class(TUniForm)
    pnl1: TUniPanel;
    map: TUniFSMap;
    btn1: TUniFSButton;
    ListBox: TUniListBox;
    procedure UniFormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure ListBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmMarkerImageIcons: TfrmMarkerImageIcons;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule;

function frmMarkerImageIcons: TfrmMarkerImageIcons;
begin
  Result := TfrmMarkerImageIcons(UniMainModule.GetFormInstance(TfrmMarkerImageIcons));
end;

procedure TfrmMarkerImageIcons.btn1Click(Sender: TObject);
var
  Mark: TMarkerWithLabel;
begin
  map.DeleteMarkerWithLabel('1');
  map.SetCenter('52.315220000','104.25480000');
  Mark := TMarkerWithLabel.Create;
  Mark.Id := '1';
  Mark.Lat := '52.315220000';
  Mark.Lng := '104.25480000';
  Mark.IconColor := '#426AE1';
  Mark.Animation := TMarkerAnimation(DROP);
  Mark.InfoWindow :=
  '''' + '<div>' + '<p>InfoWindow <b>Nº1</b></p>' + '</div>'+ '''';

  map.AddMarkerWithLabel(Mark);
end;

procedure TfrmMarkerImageIcons.ListBoxChange(Sender: TObject);
var
  Mark: TMarkerWithLabel;
begin
  map.DeleteMarkerWithLabel('2');
  map.SetCenter('53.315220000','104.25480000');
  Mark := TMarkerWithLabel.Create;
  Mark.Id := '2';
  Mark.Lat := '53.315220000';
  Mark.Lng := '104.25480000';
  Mark.IconUrl := 'http://maps.google.com/mapfiles/ms/micons/'+ListBox.Items[ListBox.ItemIndex];
  Mark.Animation := TMarkerAnimation(DROP);
  Mark.InfoWindow :=
  '''' + '<div>' + '<p>InfoWindow <b>Nº1</b></p>' + '</div>'+ '''';

  map.AddMarkerWithLabel(Mark);
end;

procedure TfrmMarkerImageIcons.UniFormCreate(Sender: TObject);
begin
  map.InitMap;
end;

end.

unit uframeAnagraph;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Shader,
  AdvOfficePager, Data.DB,
  UWebGMapsCommon, UWebGMaps, MemDS, DBAccess, Uni, Vcl.StdCtrls, AdvEdit,
  DBAdvEd,
  AdvSmoothLabel, DBAdvSmoothLabel, AdvLabel, DBAdvLabel, AdvAppStyler, AdvOfficePagerStylers,
  AdvGlowButton, UWebGMapsGeocoding, AdvMemo, DBAdvMemo, Janua.Core.Classes, Janua.Vcl.Geocoding, Vcl.Mask, Vcl.DBCtrls,
  JvExControls, JvDBLookup;

type
  TframeAnagraph = class(TFrame)
    pgAnagraph: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    dsAnagraph: TDataSource;
    DBAdvEdit1: TDBAdvEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBAdvEdit2: TDBAdvEdit;
    edAddress: TDBAdvEdit;
    Label3: TLabel;
    edPostalCode: TDBAdvEdit;
    Label4: TLabel;
    DBAdvEdit5: TDBAdvEdit;
    Label5: TLabel;
    edTown: TDBAdvEdit;
    Label6: TLabel;
    DBAdvEdit7: TDBAdvEdit;
    Label7: TLabel;
    DBAdvEdit8: TDBAdvEdit;
    Label8: TLabel;
    DBAdvEdit9: TDBAdvEdit;
    Label9: TLabel;
    DBAdvEdit10: TDBAdvEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBAdvEdit11: TDBAdvEdit;
    lbLatitude: TLabel;
    lbLongitude: TLabel;
    AdvFormStyler1: TAdvFormStyler;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    WebGMapsGeocoding1: TWebGMapsGeocoding;
    AdvOfficePage1: TAdvOfficePage;
    Panel1: TPanel;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    WebGMaps1: TWebGMaps;
    DBAdvMemo1: TDBAdvMemo;
    JanuaVCLGeoMaps1: TJanuaVCLGeoMaps;
    Label12: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    dsCategories: TDataSource;
    DBAdvGlowButton5: TDBAdvGlowButton;
    DBAdvEdit3: TDBAdvEdit;
    DBAdvEdit4: TDBAdvEdit;
    DBAdvEdit6: TDBAdvEdit;
    Label13: TLabel;
    procedure dsAnagraphDataChange(Sender: TObject; Field: TField);
    procedure DBAdvGlowButton3Click(Sender: TObject);
    procedure edAddressEnter(Sender: TObject);
    procedure DBAdvGlowButton5Click(Sender: TObject);
  private
    { Private declarations }
    fLatitude: Double;
    fLongitude: Double;
    FName: string;
    FAddress: string;
    FPostalCode: string;
    FTown: String;
    procedure UpdateMap;

  public
    { Public declarations }
    procedure ResetDataset(aDataset: TDataset);
  end;

implementation

uses Janua.Core.Types, Janua.Core.Functions;

{$R *.dfm}

procedure TframeAnagraph.edAddressEnter(Sender: TObject);
begin
  if self.FAddress <> edAddress.Text then
  begin

  end;
end;

procedure TframeAnagraph.DBAdvGlowButton3Click(Sender: TObject);
begin
  self.JanuaVCLGeoMaps1.RecordGeoCoding(self.dsAnagraph.DataSet);
  UpdateMap
end;

procedure TframeAnagraph.DBAdvGlowButton5Click(Sender: TObject);
var
  aAddress: TJanuaRecordAddress;
  temp: string;
begin
  fLatitude := self.dsAnagraph.DataSet.FieldByName('latitude').AsFloat;
  fLongitude := self.dsAnagraph.DataSet.FieldByName('longitude').AsFloat;

  if (self.fLatitude <> 0) then
  begin
    temp := JanuaVCLGeoMaps1.ReverseGeoCoding(TJanuaRecordCoordinates.Create(fLatitude, fLongitude));
    if temp <> '' then
    begin
      aAddress := JanuaVCLGeoMaps1.Anagraph.Address;
      GetFieldValue(aAddress.Phone, dsAnagraph.DataSet, 'an_phone');
      GetFieldValue(aAddress.WorkPhone, dsAnagraph.DataSet, 'an_phone2');
      GetFieldValue(aAddress.FaxNumber, dsAnagraph.DataSet, 'an_fax');
      GetFieldValue(aAddress.CellularPhone, dsAnagraph.DataSet, 'an_cellular');
      aAddress.SaveToAnagraphDataset(self.dsAnagraph.DataSet);
    end;
  end;

end;

procedure TframeAnagraph.dsAnagraphDataChange(Sender: TObject; Field: TField);
begin
  if fLatitude <> self.dsAnagraph.DataSet.FieldByName('latitude').AsFloat then
  begin
    UpdateMap;
  end;
end;

procedure TframeAnagraph.ResetDataset(aDataset: TDataset);
begin
  self.dsAnagraph.DataSet := aDataset;
  self.UpdateMap;
end;

procedure TframeAnagraph.UpdateMap;
begin
  FName := dsAnagraph.DataSet.FieldByName('an_last_name').AsWideString;
  fLatitude := self.dsAnagraph.DataSet.FieldByName('latitude').AsFloat;
  fLongitude := self.dsAnagraph.DataSet.FieldByName('longitude').AsFloat;
  // self.lbLatitude.Caption := fLatitude.ToString;
  // self.lbLongitude.Caption := fLongitude.ToString;
  if self.WebGMaps1.Launch then
  begin
    WebGMaps1.Markers.Clear;
    WebGMaps1.MapOptions.DefaultLatitude := self.fLatitude;
    WebGMaps1.MapOptions.DefaultLongitude := self.fLongitude;
    WebGMaps1.Markers.Add(fLatitude, fLongitude, FName, '', false, true, false, false, true, 0);
    WebGMaps1.MapPanTo(fLatitude, fLongitude);

    WebGMaps1.Markers.Clear;
    WebGMaps1.MapOptions.DefaultLatitude := self.fLatitude;
    WebGMaps1.MapOptions.DefaultLongitude := self.fLongitude;
    WebGMaps1.Markers.Add(fLatitude, fLongitude, FName, '', false, true, false, false, true, 0);
    WebGMaps1.MapPanTo(fLatitude, fLongitude);
  end;
end;

end.

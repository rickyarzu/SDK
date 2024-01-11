unit Janua.CarService.VCL.frmCarBooking;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Janua.Core.Classes, Janua.Vcl.Geocoding,
  Vcl.ComCtrls, UWebGMapsCommon, UWebGMaps, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.DBCGrids, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, Vcl.DBCtrls, FireDAC.Stan.StorageBin,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  Janua.Anagraph.Types,
  // Interposers
  Janua.Vcl.EnhCRDBGrid, Janua.Vcl.EnhDBGrid, Janua.Vcl.Interposers, Janua.TMS.Interposers,
  Janua.Vcl.FormController, Janua.Components.Grids, Vcl.Buttons, Vcl.Menus, Janua.Core.Commons;

type
  TfrmVCLCarServiceBooking = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    pnlAddressLocation: TPanel;
    JanuaVCLGeoMapsCustomer: TJanuaVCLGeoMaps;
    lbedName: TLabeledEdit;
    lbedLastName: TLabeledEdit;
    lbedFullAddress: TLabeledEdit;
    dtpRitiro: TDateTimePicker;
    dtpConsegna: TDateTimePicker;
    lbedCar: TLabeledEdit;
    lbedCarNumberPlate: TLabeledEdit;
    lbedCarColor: TLabeledEdit;
    lblLat: TLabel;
    lblLong: TLabel;
    lblDataRitiro: TLabel;
    lblDataConsegna: TLabel;
    pnlLeft: TPanel;
    gmpGeoCoding: TWebGMaps;
    pnlCompany: TPanel;
    JanuaVCLGeoMapsCompany: TJanuaVCLGeoMaps;
    fdmRitiro: TFDMemTable;
    fdmConsegna: TFDMemTable;
    lbedTelefono: TLabeledEdit;
    fdmRitiroDate: TDateField;
    fdmRitiroSelected: TBooleanField;
    fdmRitiroTime: TStringField;
    grdRitiro: TDBCtrlGrid;
    grdConsegna: TDBCtrlGrid;
    dateRitiro: TJvDBDateEdit;
    dbtxtRitiro: TDBText;
    dbchkRitiro: TDBCheckBox;
    dsRitiro: TDataSource;
    dsConsegna: TDataSource;
    dbchkConsegna: TDBCheckBox;
    dbtxtConsegna: TDBText;
    dateConsegna: TJvDBDateEdit;
    btnPrenota: TSpeedButton;
    btnRicerca: TSpeedButton;
    fdmConsegnaDate: TDateField;
    fdmConsegnaSelected: TBooleanField;
    fdmConsegnaTime: TStringField;
    pmStyle: TPopupMenu;
    pmStyle1: TMenuItem;
    lbedEMail: TLabeledEdit;
    procedure lbedFullAddressExit(Sender: TObject);
    procedure btnRicercaClick(Sender: TObject);
    procedure pmStyle1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLCarServiceBooking: TfrmVCLCarServiceBooking;

implementation

uses Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLCarServiceBooking.btnRicercaClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 1 to 6 do
  begin
    fdmRitiro.Append;
    fdmRitiroDate.AsDateTime := dtpRitiro.Date;
    case i of
      1:
        fdmRitiroTime.AsString := '8:30';
      2:
        fdmRitiroTime.AsString := '10:00';
      3:
        fdmRitiroTime.AsString := '11:30';
      4:
        fdmRitiroTime.AsString := '14:00';
      5:
        fdmRitiroTime.AsString := '15:30';
      6:
        fdmRitiroTime.AsString := '17:00';
    end;
    fdmConsegna.Append;
    fdmConsegnaDate.AsDateTime := dtpConsegna.Date;
    case i of
      1:
        fdmConsegnaTime.AsString := '8:30';
      2:
        fdmConsegnaTime.AsString := '10:00';
      3:
        fdmConsegnaTime.AsString := '11:30';
      4:
        fdmConsegnaTime.AsString := '14:00';
      5:
        fdmConsegnaTime.AsString := '15:30';
      6:
        fdmConsegnaTime.AsString := '17:00';
    end;
  end;
end;

procedure TfrmVCLCarServiceBooking.lbedFullAddressExit(Sender: TObject);
var
  aCoordinates, cCoordinates: TJanuaRecordCoordinates;
  lName: string;
begin
  aCoordinates := JanuaVCLGeoMapsCustomer.GetGeoCoding(lbedFullAddress.Text);
  cCoordinates := JanuaVCLGeoMapsCustomer.GetGeoCoding(pnlCompany.Caption);
  lblLat.Caption := aCoordinates.Latitude.ToString;

  lName := lbedCar.Text;

  lblLong.Caption := aCoordinates.Longitude.ToString;
  if gmpGeoCoding.Launch then
  begin
    gmpGeoCoding.Markers.Clear;
    gmpGeoCoding.MapOptions.DefaultLatitude := aCoordinates.Latitude;
    gmpGeoCoding.MapOptions.DefaultLongitude := aCoordinates.Longitude;
    gmpGeoCoding.Markers.Add(aCoordinates.Latitude, aCoordinates.Longitude, lName, '', false, true, false,
      false, true, 0);
    gmpGeoCoding.MapPanTo(aCoordinates.Latitude, aCoordinates.Longitude);

    { gmpGeoCoding.Markers.Clear;
      gmpGeoCoding.MapOptions.DefaultLatitude := cCoordinates.Latitude;
      gmpGeoCoding.MapOptions.DefaultLongitude := cCoordinates.Longitude; }
    gmpGeoCoding.Markers.Add(cCoordinates.Latitude, cCoordinates.Longitude, 'BMW Milano', '', false, true,
      false, false, true, 0);
    gmpGeoCoding.MapPanTo(cCoordinates.Latitude, cCoordinates.Longitude);
  end;
end;

procedure TfrmVCLCarServiceBooking.pmStyle1Click(Sender: TObject);
begin
  TJanuaApplication.StyleManager.ShowSelectThemStyler;
end;

end.

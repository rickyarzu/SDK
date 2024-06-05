unit UNetatmodemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CloudBase, CloudNetatmo, CloudCustomNetatmo, ExtCtrls,
  Grids, CloudBaseWin, DateUtils, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    txtUsername: TEdit;
    txtPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    AdvNetatmo1: TAdvNetatmo;
    Panel1: TPanel;
    btnConnect: TButton;
    Panel3: TPanel;
    Label3: TLabel;
    lstDevices: TListBox;
    lstModules: TListBox;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    btDisconnect: TButton;
    Memo1: TMemo;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    dpStart: TDateTimePicker;
    Label7: TLabel;
    dpEnd: TDateTimePicker;
    Label8: TLabel;
    cbScale: TComboBox;
    Memo2: TMemo;
    Label5: TLabel;
    btnGetDeviceMeasurments: TButton;
    btnGetModuleMeasurments: TButton;
    procedure AdvNetatmo1ReceivedAccessToken(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure lstDevicesClick(Sender: TObject);
    procedure btnGetDeviceMeasurmentsClick(Sender: TObject);
    procedure btnGetModuleMeasurmentsClick(Sender: TObject);
    procedure btDisconnectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstModulesClick(Sender: TObject);
  private
    procedure ShowData;
    procedure ShowMeasurements;
    { Private declarations }
  public
    { Public declarations }
    Connected: boolean;
    procedure ToggleControls;
  end;

var
  Form1: TForm1;

implementation

uses
  Generics.Collections;

{$R *.dfm}


// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//const
//  NetatmoClientKey = '';
//  NetatmoClientSecret = '';

{$I APPIDS.INC}


procedure TForm1.AdvNetatmo1ReceivedAccessToken(Sender: TObject);
begin
  AdvNetatmo1.SaveTokens;
  Connected := true;
  ToggleControls;
  ShowData;
end;

procedure TForm1.ShowData;
var
  I: Integer;
  Device: TNetatmoDeviceItem;
begin
  AdvNetatmo1.GetDevices;

  lstDevices.Clear;
  for I := 0 to AdvNetatmo1.Devices.Count - 1 do
  begin
    Device := AdvNetatmo1.Devices.Items[I];
    lstDevices.AddItem(Device.StationName + ': ' + Device.ModuleName, Device);
  end;
end;

procedure TForm1.btDisconnectClick(Sender: TObject);
var
  I: integer;
begin
  AdvNetatmo1.ClearTokens;
  Connected := false;
  ToggleControls;

  lstDevices.Clear;
  lstModules.Clear;
  Memo1.Clear;
  Memo2.Clear;
  for I := 0 to StringGrid1.ColCount - 1 do
    StringGrid1.Cols[I].Clear;
end;

procedure TForm1.btnConnectClick(Sender: TObject);
var
  Acc: Boolean;
begin
  AdvNetatmo1.App.UserName := txtUsername.Text;
  AdvNetatmo1.App.Password := txtPassword.Text;

  if AdvNetatmo1.App.Secret <> '' then
  begin
    AdvNetatmo1.PersistTokens.Location := plIniFile;
    AdvNetatmo1.PersistTokens.Key := '.\netatmo.ini';
    AdvNetatmo1.PersistTokens.Section := 'tokens';
    AdvNetatmo1.LoadTokens;

    Acc := AdvNetatmo1.TestTokens;

    if not Acc then
    begin
      AdvNetatmo1.DoAuth;
    end
    else
    begin
      Connected := true;
      ToggleControls;
      ShowData;
    end;
  end
  else
    ShowMessage('Please provide a valid application ID for the client component');
end;

procedure TForm1.btnGetDeviceMeasurmentsClick(Sender: TObject);
var
  DevID: string;
  Scale: TNetAtmoScale;
begin
  if lstDevices.ItemIndex >= 0 then
  begin
    Scale := nsAll;
    case cbScale.ItemIndex of
      1: Scale := nsHour;
      2: Scale := nsDay;
      3: Scale := nsWeek;
      4: Scale := nsMonth;
    end;

    DevID := AdvNetatmo1.Devices.Items[lstDevices.ItemIndex].ID;

    if dpEnd.Date < dpStart.Date then
      dpEnd.Date := dpStart.Date;

    AdvNetatmo1.GetMeasureData(DevID, dpStart.Date, dpEnd.Date, Scale);

    ShowMeasurements;
  end;
end;

procedure TForm1.btnGetModuleMeasurmentsClick(Sender: TObject);
var
  DevID, ModID: string;
  Scale: TNetAtmoScale;
begin
  if (lstModules.ItemIndex >= 0) and (lstDevices.ItemIndex >= 0) then
  begin
    Scale := nsAll;
    case cbScale.ItemIndex of
      1: Scale := nsHour;
      2: Scale := nsDay;
      3: Scale := nsWeek;
      4: Scale := nsMonth;
    end;

    if dpEnd.Date < dpStart.Date then
      dpEnd.Date := dpStart.Date;

    DevID := AdvNetatmo1.Devices.Items[lstDevices.ItemIndex].ID;
    ModID := AdvNetatmo1.Devices.Items[lstDevices.ItemIndex].Modules.Items[lstModules.ItemIndex].ID;

    AdvNetatmo1.GetMeasureData(DevID, ModID, dpStart.Date, dpEnd.Date, Scale);

    ShowMeasurements;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Connected := false;
  ToggleControls;

  dpStart.Date := Today;
  dpEnd.Date := Now;
  dpEnd.MaxDate := Now;

  AdvNetatmo1.App.Key := NetatmoClientKey;
  AdvNetatmo1.App.Secret := NetatmoClientSecret;
end;

procedure TForm1.ShowMeasurements;
var
  I: Integer;
begin
  for I := 0 to StringGrid1.ColCount - 1 do
    StringGrid1.Cols[I].Clear;

  StringGrid1.ColCount := 11;
  StringGrid1.RowCount := AdvNetatmo1.MeasureData.Count + 1;
  StringGrid1.ColWidths[1] := 160;
  StringGrid1.ColWidths[2] := 90;
  StringGrid1.ColWidths[8] := 90;
  StringGrid1.ColWidths[9] := 90;
  StringGrid1.ColWidths[10] := 90;

  StringGrid1.Cells[1,0] := 'Timestamp';
  StringGrid1.Cells[2,0] := 'Temperature';
  StringGrid1.Cells[3,0] := 'CO2';
  StringGrid1.Cells[4,0] := 'Humidity';
  StringGrid1.Cells[5,0] := 'Pressure';
  StringGrid1.Cells[6,0] := 'Noise';
  StringGrid1.Cells[7,0] := 'Rain';
  StringGrid1.Cells[8,0] := 'Wind Strength';
  StringGrid1.Cells[9,0] := 'Wind Angle';

  for I := 0 to AdvNetatmo1.MeasureData.Count - 1 do
  begin
    StringGrid1.Cells[0, I + 1] := IntToStr(I + 1);
    StringGrid1.Cells[1, I + 1] := DateTimeToStr(AdvNetatmo1.MeasureData.Items[I].MeasureDate);
    StringGrid1.Cells[2, I + 1] := FloatToStr(AdvNetatmo1.MeasureData.Items[I].Temperature);
    StringGrid1.Cells[3, I + 1] := IntToStr(AdvNetatmo1.MeasureData.Items[I].CO2);
    StringGrid1.Cells[4, I + 1] := IntToStr(AdvNetatmo1.MeasureData.Items[I].Humidity);
    StringGrid1.Cells[5, I + 1] := FloatToStr(AdvNetatmo1.MeasureData.Items[I].Pressure);
    StringGrid1.Cells[6, I + 1] := IntToStr(AdvNetatmo1.MeasureData.Items[I].Noise);
    StringGrid1.Cells[7, I + 1] := FloatToStr(AdvNetatmo1.MeasureData.Items[I].Rain);
    StringGrid1.Cells[8, I + 1] := FloatToStr(AdvNetatmo1.MeasureData.Items[I].WindStrength);
    StringGrid1.Cells[9, I + 1] := FloatToStr(AdvNetatmo1.MeasureData.Items[I].WindAngle);
  end;
end;

procedure TForm1.ToggleControls;
begin
  lstDevices.Enabled := Connected;
  lstModules.Enabled := Connected;
  btnGetDeviceMeasurments.Enabled := Connected;
  btnGetModuleMeasurments.Enabled := Connected;
  dpStart.Enabled := Connected;
  dpEnd.Enabled := Connected;
  cbScale.Enabled := Connected;
  Memo1.Enabled := Connected;
  Memo2.Enabled := Connected;
  StringGrid1.Enabled := Connected;
  btnConnect.Enabled := not Connected;
  btDisconnect.Enabled := Connected;
  txtUsername.Enabled := not Connected;
  txtPassword.Enabled := not Connected;
end;

procedure TForm1.lstDevicesClick(Sender: TObject);
var
  Device: TNetatmoDeviceItem;
  Module: TNetatmoModuleItem;
  I: Integer;
begin
  if lstDevices.ItemIndex >= 0 then
  begin
    lstModules.Clear;
    Device := AdvNetatmo1.Devices.Items[lstDevices.ItemIndex];
    Memo1.Clear;
    Memo1.Lines.Add('Location: ' + Device.Place.City + ', ' + Device.Place.Country);
    Memo1.Lines.Add('Last Status: ' + DateTimeToStr(Device.LastStatusStore));
    Memo1.Lines.Add('Temperature: ' + FloatToStr(Device.DashBoardData.Temperature));
    Memo1.Lines.Add('CO2: ' + FloatToStr(Device.DashBoardData.CO2));
    for I := 0 to AdvNetatmo1.Devices.Items[lstDevices.ItemIndex].Modules.Count - 1 do
    begin
      Module := AdvNetatmo1.Devices.Items[lstDevices.ItemIndex].Modules.Items[I];
      lstModules.AddItem(Module.ModuleName, Module);
    end;
  end;
end;

procedure TForm1.lstModulesClick(Sender: TObject);
var
  Module: TNetatmoModuleItem;
begin
    Module := AdvNetatmo1.Devices.Items[lstDevices.ItemIndex].Modules.Items[lstModules.ItemIndex];

    Memo2.Clear;
    Memo2.Lines.Add('Last Status: ' + DateTimeToStr(Module.LastMessage));
    Memo2.Lines.Add('Temperature: ' + FloatToStr(Module.DashBoardData.Temperature));
    Memo2.Lines.Add('Humidity: ' + FloatToStr(Module.DashBoardData.Humidity));
end;

end.

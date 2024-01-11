unit uframeFMXMobileChoice;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects,
  FMX.Controls.Presentation, Janua.Core.RESTClient.Health;

type
  TframeFMXMobileChoice = class(TFrame)
    Text1: TText;
    pnl1: TPanel;
    lbInstitute1: TLabel;
    lbAddress1: TLabel;
    lbDateTime1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Switch1: TSwitch;
    pnl3: TPanel;
    lbInstitute3: TLabel;
    lbAddress3: TLabel;
    lbDateTime3: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    Switch2: TSwitch;
    pnl2: TPanel;
    lbInstitute2: TLabel;
    lbAddress2: TLabel;
    lbDateTime2: TLabel;
    Panel6: TPanel;
    Label9: TLabel;
    Switch3: TSwitch;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    procedure Switch1Switch(Sender: TObject);
    procedure Switch3Switch(Sender: TObject);
    procedure Switch2Switch(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    ischanging: boolean;
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    procedure SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);

  public
    { Public declarations }
    procedure Prepare;
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read FJanuaRESTHealthClient
      write SetJanuaRESTHealthClient;
  end;

implementation

{$R *.fmx}

procedure TframeFMXMobileChoice.Button1Click(Sender: TObject);
begin
  if self.Switch1.IsChecked then
  begin
    self.FJanuaRESTHealthClient.BookingChoice(FJanuaRESTHealthClient.Booking.id, self.pnl1.Tag);
    ShowMessage('Confermata prenotazione Istituto: ' + FJanuaRESTHealthClient.Booking.Rows.Items[0]
      .Institute.LastName);
  end
  else if self.Switch2.IsChecked then
  begin
    self.FJanuaRESTHealthClient.BookingChoice(FJanuaRESTHealthClient.Booking.id, self.pnl2.Tag);
    ShowMessage('Confermata prenotazione Istituto: ' + FJanuaRESTHealthClient.Booking.Rows.Items[1]
      .Institute.LastName);
  end
  else if self.Switch3.IsChecked then
  begin
    self.FJanuaRESTHealthClient.BookingChoice(FJanuaRESTHealthClient.Booking.id, self.pnl3.Tag);
    ShowMessage('Confermata prenotazione Istituto: ' + FJanuaRESTHealthClient.Booking.Rows.Items[2]
      .Institute.LastName);
  end;

end;

procedure TframeFMXMobileChoice.Prepare;
begin
  if not Assigned(FJanuaRESTHealthClient) then
    raise Exception.Create('frameFMXMobileChoice JanuaRESTHealthClient not set');

  if self.FJanuaRESTHealthClient.Booking.Rows.Count > 2 then
  begin
    self.pnl3.Visible := True;
    self.pnl3.Tag := FJanuaRESTHealthClient.Booking.Rows.Items[2].Institute.anagraph_id;
    self.lbInstitute3.Text := FJanuaRESTHealthClient.Booking.Rows.Items[2].Institute.LastName;
    self.lbAddress3.Text := FJanuaRESTHealthClient.Booking.Rows.Items[2].Institute.Address.AddressFull;
    self.lbDateTime3.Text := DateTimeToStr(FJanuaRESTHealthClient.Booking.Rows.Items[2].booking_date) +
      ', ore: ' + FJanuaRESTHealthClient.Booking.Rows.Items[2].booking_hour.ToString + ':' +
      FJanuaRESTHealthClient.Booking.Rows.Items[2].booking_mins.ToString;
  end
  else
  begin
    self.pnl3.Visible := False;
  end;

  if self.FJanuaRESTHealthClient.Booking.Rows.Count > 1 then
  begin
    self.pnl2.Visible := True;
    self.pnl2.Tag := FJanuaRESTHealthClient.Booking.Rows.Items[1].Institute.anagraph_id;
    self.lbInstitute2.Text := FJanuaRESTHealthClient.Booking.Rows.Items[1].Institute.LastName;
    self.lbAddress2.Text := FJanuaRESTHealthClient.Booking.Rows.Items[1].Institute.Address.AddressFull;
    self.lbDateTime2.Text := DateTimeToStr(FJanuaRESTHealthClient.Booking.Rows.Items[1].booking_date) +
      ', ore: ' + FJanuaRESTHealthClient.Booking.Rows.Items[1].booking_hour.ToString + ':' +
      FJanuaRESTHealthClient.Booking.Rows.Items[1].booking_mins.ToString;
  end
  else
  begin
    self.pnl2.Visible := False;
  end;

  if self.FJanuaRESTHealthClient.Booking.Rows.Count > 0 then
  begin
    self.pnl1.Visible := True;
    self.pnl1.Tag := FJanuaRESTHealthClient.Booking.Rows.Items[0].Institute.anagraph_id;
    self.lbInstitute1.Text := FJanuaRESTHealthClient.Booking.Rows.Items[0].Institute.LastName;
    self.lbAddress1.Text := FJanuaRESTHealthClient.Booking.Rows.Items[0].Institute.Address.AddressFull;
    self.lbDateTime1.Text := DateTimeToStr(FJanuaRESTHealthClient.Booking.Rows.Items[0].booking_date) +
      ', ore: ' + FJanuaRESTHealthClient.Booking.Rows.Items[0].booking_hour.ToString + ':' +
      FJanuaRESTHealthClient.Booking.Rows.Items[0].booking_mins.ToString;
  end
  else
  begin
    self.pnl1.Visible := False;
  end;

  // if self. then

end;

procedure TframeFMXMobileChoice.SetJanuaRESTHealthClient(const Value: TJanuaRESTHealthClient);
begin
  FJanuaRESTHealthClient := Value;
end;

procedure TframeFMXMobileChoice.Switch1Switch(Sender: TObject);
begin
  if not self.ischanging then
  begin
    self.ischanging := True;
    if self.Switch1.IsChecked then
    begin
      self.Switch2.IsChecked := False;
      self.Switch3.IsChecked := False;
    end;
    self.ischanging := False;
  end;
end;

procedure TframeFMXMobileChoice.Switch2Switch(Sender: TObject);
begin
  if not self.ischanging then
  begin
    self.ischanging := True;
    if self.Switch2.IsChecked then
    begin
      self.Switch1.IsChecked := False;
      self.Switch3.IsChecked := False;
    end;
    self.ischanging := False;
  end;
end;

procedure TframeFMXMobileChoice.Switch3Switch(Sender: TObject);
begin
  if not self.ischanging then
  begin
    self.ischanging := True;
    if self.Switch3.IsChecked then
    begin
      self.Switch2.IsChecked := False;
      self.Switch1.IsChecked := False;
    end;
    self.ischanging := False;
  end;
end;

end.

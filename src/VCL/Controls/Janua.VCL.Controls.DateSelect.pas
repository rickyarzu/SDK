unit Janua.VCL.Controls.DateSelect;

interface

uses
  /// RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Janua
  Janua.Controls.Select.Intf, Janua.Bindings.Intf, Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf,
  Janua.VCL.Controls.FrameSelectModel,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.WinXCtrls, VCL.WinXPickers, VCL.StdCtrls,
  VCL.ComCtrls,
  VCL.ExtCtrls,
  // Janua.VCL.Interposers
  Janua.VCL.Interposers, Janua.TMS.Interposers;

type
  TJanuaVCLFrameDateSelect = class(TframSelectModel, IJanuaContainer, IJanuaBindable, IDateSelect)
    edDate: TDateTimePicker;
    pnlCheck: TPanel;
    tsDate: TToggleSwitch;
    procedure edDateChange(Sender: TObject);
    procedure edDateCloseUp(Sender: TObject);
    procedure tsDateClick(Sender: TObject);
  private
    FDate: TDate;
    FChecked: Boolean;
    FUpdatingCheck: Boolean;
    function GetDate: TDate;
    function GetChecked: Boolean;
    procedure SetChecked(const Value: Boolean);
    procedure SetDate(const Value: TDate);
    { Private declarations }
  strict private
    procedure GetActivate; override;
    procedure InternalSetField; override;
  public
    constructor Create(AOwner: TComponent); override;
  public
    { Public declarations }
    property Checked: Boolean read GetChecked write SetChecked;
    property Date: TDate read GetDate write SetDate;
  end;

implementation

{$R *.dfm}

constructor TJanuaVCLFrameDateSelect.Create(AOwner: TComponent);
begin
  inherited;
  FUpdatingCheck := False;
  FActivate := procedure
    begin
      edDate.Date := Date;
    end;
end;

procedure TJanuaVCLFrameDateSelect.edDateChange(Sender: TObject);
begin
  if FDate <> edDate.Date then
    SetDate(edDate.Date);
end;

procedure TJanuaVCLFrameDateSelect.edDateCloseUp(Sender: TObject);
begin
  if FDate <> edDate.Date then
    SetDate(edDate.Date);
end;

procedure TJanuaVCLFrameDateSelect.GetActivate;
begin
  inherited;
  FActivate := procedure
    begin
      edDate.Date := System.SysUtils.Date;
    end;
end;

function TJanuaVCLFrameDateSelect.GetChecked: Boolean;
begin
  Result := FChecked;
end;

function TJanuaVCLFrameDateSelect.GetDate: TDate;
begin
  Result := FDate
end;

procedure TJanuaVCLFrameDateSelect.InternalSetField;
begin
  inherited;
  if Assigned(FJanuaField) then
  begin
    if FJanuaField.AsDateTime > 0.0 then
      SetDate(FJanuaField.AsDateTime);
    FJanuaField.Bind('AsDateTime', Self, 'Date', False);

    SetChecked(FJanuaField.Active);
    FJanuaField.Bind('Active', Self, 'Checked', False);
  end;
end;

{ TuJanuaVCLFrameDateSelect }

procedure TJanuaVCLFrameDateSelect.SetChecked(const Value: Boolean);
begin
  if FChecked <> Value then
  begin
    FUpdatingCheck := True;
    try
      FChecked := Value;
      if FChecked then
      begin
        tsDate.State := TToggleSwitchState.tssOn;
        FJanuaField.Activate;
      end
      else
      begin
        tsDate.State := TToggleSwitchState.tssOff;
        FJanuaField.Active := False;
      end;
      Notify('Checked');
    finally
      FUpdatingCheck := False;
    end;
  end;
end;

procedure TJanuaVCLFrameDateSelect.SetDate(const Value: TDate);
begin
  if FDate <> Value then
  begin
    FDate := Value;
    if edDate.Date <> FDate then
      edDate.Date := FDate;
    if FJanuaField.AsDateTime <> FDate then
      FJanuaField.AsDateTime := FDate;
    Notify('Date');
  end;
end;

procedure TJanuaVCLFrameDateSelect.tsDateClick(Sender: TObject);
begin
  if not FUpdatingCheck then
    SetChecked(tsDate.State = TToggleSwitchState.tssOn)
end;

end.

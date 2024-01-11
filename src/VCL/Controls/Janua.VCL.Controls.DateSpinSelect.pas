unit Janua.VCL.Controls.DateSpinSelect;

interface

uses
  /// RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Janua
  Janua.Controls.Select.Intf, Janua.Bindings.Intf, Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf,
  Janua.VCL.Controls.FrameSelectModel,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.WinXCtrls, VCL.WinXPickers, VCL.StdCtrls;

type
  TJanuaVCLFrameDateSpinSelect = class(TframSelectModel, IJanuaContainer, IJanuaBindable, IDateSelect, IDateSpinSelect)
    edDate: TDatePicker;
    tsDate: TToggleSwitch;
    procedure edDateChange(Sender: TObject);
    procedure edDateCloseUp(Sender: TObject);
    procedure tsDateClick(Sender: TObject);
  private
    FDate: TDate;
    FChecked: Boolean;
    function GetDate: TDate;
    function GetChecked: Boolean;
    procedure SetChecked(const Value: Boolean);
    procedure SetDate(const Value: TDate);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  public
    { Public declarations }
    property Checked: Boolean read GetChecked write SetChecked;
    property Date: TDate read GetDate write SetDate;
  end;

implementation

{$R *.dfm}

constructor TJanuaVCLFrameDateSpinSelect.Create(AOwner: TComponent);
begin
  inherited;
  FActivate := procedure
    begin
       edDate.Date := Date;
    end;
end;

procedure TJanuaVCLFrameDateSpinSelect.edDateChange(Sender: TObject);
begin
  SetDate(edDate.Date);
end;

procedure TJanuaVCLFrameDateSpinSelect.edDateCloseUp(Sender: TObject);
begin
  SetDate(edDate.Date);
end;

function TJanuaVCLFrameDateSpinSelect.GetChecked: Boolean;
begin
  Result := FChecked;
end;

function TJanuaVCLFrameDateSpinSelect.GetDate: TDate;
begin
  Result := FDate
end;

{ TuJanuaVCLFrameDateSelect }

procedure TJanuaVCLFrameDateSpinSelect.SetChecked(const Value: Boolean);
begin
  if Value <> Value then
  begin
    FChecked := Value;
    if FChecked then
      tsDate.State := TToggleSwitchState.tssOff
    else
      tsDate.State := TToggleSwitchState.tssOn;
    Notify('Checked');
  end;
end;

procedure TJanuaVCLFrameDateSpinSelect.SetDate(const Value: TDate);
begin
  if FDate <> Value then
  begin
    FDate := Value;
    if edDate.Date <> Value then
      edDate.Date := Value;
    Notify('Date');
  end;
end;

procedure TJanuaVCLFrameDateSpinSelect.tsDateClick(Sender: TObject);
begin
  SetChecked(tsDate.State = TToggleSwitchState.tssOn)
end;

end.

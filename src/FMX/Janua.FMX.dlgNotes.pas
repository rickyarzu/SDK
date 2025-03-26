unit Janua.FMX.dlgNotes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects;

type
  TdlgFMXNotes = class(TForm)
    Layout1: TLayout;
    btnOK: TSpeedButton;
    btnCancel: TSpeedButton;
    Memo1: TMemo;
    toolBarDriverTask: TToolBar;
    Image6: TImage;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    procedure btnOKClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FOkEvent: TNotifyEvent;
    FCancelEvent: TNotifyEvent;
    procedure SetOkEvent(const Value: TNotifyEvent);
    procedure SetCancelEvent(const Value: TNotifyEvent);
    { Private declarations }
  public
    { Public declarations }
    property OkEvent: TNotifyEvent read FOkEvent write SetOkEvent;
    property CancelEvent: TNotifyEvent read FCancelEvent write SetCancelEvent;
  end;

var
  dlgFMXNotes: TdlgFMXNotes;

implementation

{$R *.fmx}
{ TdlgFMXNotes }

procedure TdlgFMXNotes.btnOKClick(Sender: TObject);
begin
  Close;
  if Assigned(FOkEvent) then
    FOkEvent(self);
end;

procedure TdlgFMXNotes.Button1Click(Sender: TObject);
begin
  Close;
  if Assigned(FCancelEvent) then
    FCancelEvent(self);
end;

procedure TdlgFMXNotes.SetCancelEvent(const Value: TNotifyEvent);
begin
  FCancelEvent := Value;
end;

procedure TdlgFMXNotes.SetOkEvent(const Value: TNotifyEvent);
begin
  FOkEvent := Value;
end;

procedure TdlgFMXNotes.SpeedButton1Click(Sender: TObject);
begin
  Close;
  if Assigned(FOkEvent) then
    FOkEvent(self);
end;

end.

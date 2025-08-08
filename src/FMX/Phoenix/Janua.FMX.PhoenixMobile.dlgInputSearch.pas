unit Janua.FMX.PhoenixMobile.dlgInputSearch;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit, FMX.EditBox, FMX.SpinBox;

type
  TdlgPhoenixInputSearch = class(TForm)
    SpinBox1: TSpinBox;
    lbInputNumber: TLabel;
    lbMatricol: TLabel;
    edMatricola: TEdit;
    btnCancel: TButton;
    btnOK: TButton;
    procedure btnOKClick(Sender: TObject);
  private
    FOnExecute: TNotifyEvent;
    procedure SetOnExecute(const Value: TNotifyEvent);
    { Private declarations }
  public
    { Public declarations }
    property OnExecute: TNotifyEvent read FOnExecute write SetOnExecute;
  end;

var
  dlgPhoenixInputSearch: TdlgPhoenixInputSearch;

implementation

{$R *.fmx}
{ TdlgPhoenixInputSearch }

procedure TdlgPhoenixInputSearch.btnOKClick(Sender: TObject);
begin
  Close;
  if Assigned(FOnExecute) then
    FOnExecute(Self);
end;

procedure TdlgPhoenixInputSearch.SetOnExecute(const Value: TNotifyEvent);
begin
  FOnExecute := Value;
end;

end.

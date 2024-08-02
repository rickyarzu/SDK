unit Janua.Phoenix.VCL.dlgEditReportTimetable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Vcl.WinXPickers, gtClasses;

type
  TdlgPhoenixVCLEditReportTimetable = class(TForm)
    edDate: TDateTimePicker;
    edNote: TMemo;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    edTime: TTimePicker;
    edRagioneSociale: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgPhoenixVCLEditReportTimetable: TdlgPhoenixVCLEditReportTimetable;

implementation

{$R *.dfm}

end.

unit Janua.Phoenix.VCL.dlgCalendarEvent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXPickers, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    edDate: TDateTimePicker;
    edNote: TMemo;
    btnCancel: TBitBtn;
    btnOK: TBitBtn;
    edTime: TTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.

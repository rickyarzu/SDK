unit ufrmSampleVCLPlanner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CloudBase, CloudBaseWin, CloudCustomGoogle, CloudGoogleWin,
  CloudCustomGCalendar, CloudGCalendar;

type
  TfrmSamplePlanner = class(TForm)
    AdvGCalendar1: TAdvGCalendar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSamplePlanner: TfrmSamplePlanner;

implementation

{$R *.dfm}

end.

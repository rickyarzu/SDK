program TTMSFNCCloudSendGridVCLDemo;

uses
  Vcl.Forms,
  frmMainSendGridDemo in 'frmMainSendGridDemo.pas' {Form1},
  udmSendgridDemo in 'udmSendgridDemo.pas' {dmSendGridDemo: TDataModule},
  uSendgridDemo in 'uSendgridDemo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdmSendGridDemo, dmSendGridDemo);
  Application.Run;
end.

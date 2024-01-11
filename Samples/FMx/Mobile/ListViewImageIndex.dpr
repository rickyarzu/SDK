program ListViewImageIndex;

uses
  System.StartUpCopy,
  FMX.Forms,
  uListViewImageIndex in 'uListViewImageIndex.pas' {frmListViewImageIndex};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmListViewImageIndex, frmListViewImageIndex);
  Application.Run;
end.

unit Janua.VCL.Cloud.frmLandingMessageConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs,
  // JDB
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLForm, Janua.Core.Types, Janua.Core.Classes.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  Janua.Anagraph.Types,
  // Impl
  Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.CarService.PgSettings, Janua.CarService.Intf,
  Janua.VCL.Cloud.FrameLandingMessageConfig, Vcl.ComCtrls;

type
  TfrmVCLLandingMessageConfig = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer, IJanuaBindable)
    frameVCLLandingMessageConfig: TFrameVCLLandingMessageConfig;
  private
    FMasterDataset: TDataset;
    procedure SetMasterDataset(const Value: TDataset);
    { Private declarations }
  protected

  public
    { Public declarations }
    property MasterDataset: TDataset read FMasterDataset write SetMasterDataset;
  end;

var
  frmVCLLandingMessageConfig: TfrmVCLLandingMessageConfig;

implementation

{$R *.dfm}
{ TfrmVCLLandingMessageConfig }

procedure TfrmVCLLandingMessageConfig.SetMasterDataset(const Value: TDataset);
begin
  frameVCLLandingMessageConfig.MasterDataset := Value;
  frameVCLLandingMessageConfig.btnGenerateMessageClick(Self);
end;

end.

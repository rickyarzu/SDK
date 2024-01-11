unit Janua.Documents.frameVCLAttachments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, Janua.VCL.MVVM.frameNavigator,
  System.ImageList, SVGIconImageListBase, SVGIconImageList, VCL.StdCtrls, VCL.ToolWin,
  VCL.ComCtrls, VCL.ExtCtrls,
  // TMS
  Lucombo, AdvSplitter,
  // DB Controls
  Data.DB, VCL.Grids, VCL.DBGrids, CRGrid,
  // VCL
  VCL.wwbutton, VCL.wwdbigrd, VCL.wwdbgrid, VCL.WinXPickers, VCL.WinXCtrls,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLFrame, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf,
  // Interposers
  Janua.VCL.EnhCRDBGrid, Janua.VCL.EnhDBGrid, Janua.VCL.Interposers, Janua.TMS.Interposers, Janua.VCL.FormController,
  Janua.Components.Grids, Janua.VCL.ViewModel, Janua.Core.Classes, Janua.VCL.Actions, Janua.VCL.frameAttachments,
  // Inherites from Documents View Model ................................................................
  Janua.Documents.ViewModel.Intf, Janua.Documents.ViewModel.impl, Janua.Reporting.impl,
  Janua.Documents.WarehouseReceipts.ViewModel.Intf, VCL.Buttons;

type
  TframeVCLDocAttachments = class(TframeVCLAttachments, IJanuaContainer, IJanuaBindable)
    procedure lvAttachmentsDblClick(Sender: TObject);
  private
    FAttachmentsViewModel: IJanuaDocAttachmentsViewModel;
    procedure SetAttachmentsViewModel(const Value: IJanuaDocAttachmentsViewModel);
    { Private declarations }
  public
    { Public declarations }
    procedure AfterConstruction; override;
  public
    property AttachmentsViewModel: IJanuaDocAttachmentsViewModel read FAttachmentsViewModel
      write SetAttachmentsViewModel;
  end;

implementation

uses Janua.VCL.Framework, Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}
{ TframeVCLDocAttachments }

procedure TframeVCLDocAttachments.AfterConstruction;
begin
  inherited;

end;

procedure TframeVCLDocAttachments.lvAttachmentsDblClick(Sender: TObject);
begin
  inherited;
  FAttachmentsViewModel.ActionEdit.Execute;
end;

procedure TframeVCLDocAttachments.SetAttachmentsViewModel(const Value: IJanuaDocAttachmentsViewModel);
begin
  FAttachmentsViewModel := Value;
  ViewModel := FAttachmentsViewModel;
  RecordSet := FAttachmentsViewModel.RecordSet;
  {
    if Assigned(FAttachmentsViewModel) then
    FAttachmentsViewModel.OnNewRecord := self.OnNewRecord;
  }
end;

end.

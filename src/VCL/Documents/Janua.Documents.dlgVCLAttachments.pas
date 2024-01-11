unit Janua.Documents.dlgVCLAttachments;

interface

uses
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Spring.Collections, System.Json, System.Types, System.UITypes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ComCtrls, VCL.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, VCL.ToolWin,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types,
  Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Core.Classes, Janua.VCL.Actions,
  uJanuaVCLForm,
  // Documents View Model
  Janua.ViewModels.Intf, Janua.Documents.ViewModel.Intf, Jorm.Documents.Intf,
  // Janua.Interposers & VCL Frames
  Janua.VCL.Interposers, Janua.TMS.Interposers, uJanuaVCLFrame;

type
  TdlgVCLDocAttachments = class(TJanuaVCLFormModel, IJanuaDocAttachmentsDialog, IJanuaRecordEditDialog, IJanuaBindable)
    FileOpenDialog1: TFileOpenDialog;
    lbGUID: TLabel;
    edFileName: TEdit;
    memDescription: TMemo;
    edDirectoryPath: TEdit;
    btnSaveAttachment: TButton;
    btnUndoAttachment: TButton;
    btnPreview: TButton;
    btnReplaceFile: TButton;
    procedure btnPreviewClick(Sender: TObject);
    procedure edFileNameChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FDocAttachmentsViewModel: IJanuaDocAttachmentsViewModel;
    FAttachment: IDocAttachmentView;
    FExtension: string;
    procedure UploadFile;
    procedure SetExtension(const Value: string);
  protected
    function GetViewModel: IJanuaViewModel;
    procedure SetViewModel(const Value: IJanuaViewModel);
    function GetDocAttachmentsViewModel: IJanuaDocAttachmentsViewModel;
    procedure SetDocAttachmentsViewModel(const Value: IJanuaDocAttachmentsViewModel);
  public
    property Extension: string read FExtension write SetExtension;
    property ViewModel: IJanuaViewModel read GetViewModel write SetViewModel;
    property AttachmentsViewModel: IJanuaDocAttachmentsViewModel read GetDocAttachmentsViewModel
      write SetDocAttachmentsViewModel;
  end;

var
  dlgVCLDocAttachments: TdlgVCLDocAttachments;

implementation

uses System.Math, Janua.vcl.Framework, Janua.Cloud.Types, Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}

procedure TdlgVCLDocAttachments.btnPreviewClick(Sender: TObject);
begin
  FDocAttachmentsViewModel.OpenRecordFile
end;

procedure TdlgVCLDocAttachments.edFileNameChange(Sender: TObject);
begin

end;

{ TdlgVCLDocAttachments }

procedure TdlgVCLDocAttachments.FormShow(Sender: TObject);
begin
  inherited;
  if Assigned(FAttachment) and FAttachment.Filename.IsNull then
  begin
    UploadFile;
    //SetExtension(FAttachment.Extension.AsString);
  end;
end;

function TdlgVCLDocAttachments.GetDocAttachmentsViewModel: IJanuaDocAttachmentsViewModel;
begin
  Result := FDocAttachmentsViewModel
end;

function TdlgVCLDocAttachments.GetViewModel: IJanuaViewModel;
begin
  Result := FDocAttachmentsViewModel as IJanuaViewModel
end;

procedure TdlgVCLDocAttachments.SetDocAttachmentsViewModel(const Value: IJanuaDocAttachmentsViewModel);
begin
  FDocAttachmentsViewModel := Value;
  if Assigned(Value) then
    FAttachment := Value.DocAttachment;
  if Assigned(FAttachment) then
  begin
    // GUID
    lbGUID.Caption := FAttachment.GUIDString;
    FAttachment.Bind('GUIDString', lbGUID, 'Caption', True);

    // FileName
    edFileName.Text := FAttachment.Filename.AsString;
    FAttachment.Filename.Bind('AsString', edFileName, 'Text');

    // Extension

      Extension := FAttachment.Extension.AsString;
      FAttachment.Extension.Bind('AsString', Self, 'Extension', True);


    memDescription.Text := FAttachment.Description.AsString;
    FAttachment.Description.Bind('AsString', memDescription, 'Text');

    edDirectoryPath.Text := FAttachment.DirectoryPath.AsString;
    FAttachment.DirectoryPath.Bind('AsString', edDirectoryPath, 'Text');

  end;
end;

procedure TdlgVCLDocAttachments.SetExtension(const Value: string);
begin
  FExtension := Value;
  btnPreview.Images := TJanuaVCLApplication.ImgListVCLIcons48;
  btnPreview.Enabled := FAttachment.Filename.AsString <> '';
  btnPreview.ImageIndex := IfThen(Value = '', -1, TJanuaCloud.IconFromExtension(Value));
end;

procedure TdlgVCLDocAttachments.SetViewModel(const Value: IJanuaViewModel);
var
  lTemp: IJanuaDocAttachmentsViewModel;
begin
  try
    if Assigned(Value) then
    begin
      if not Supports(Value, IJanuaDocAttachmentsViewModel, lTemp) then
        raise Exception.Create('IJanuaWHReceiptsViewModel interface not supported')
      else
        SetDocAttachmentsViewModel(lTemp);
    end
    else
      SetDocAttachmentsViewModel(nil);
  except
    on e: Exception do
      RaiseException('SetViewModel', e, Self);
  end;
end;

procedure TdlgVCLDocAttachments.UploadFile;
begin
  if FileOpenDialog1.Execute then
  begin
    FDocAttachmentsViewModel.CopyFile(FileOpenDialog1.Filename);
  end;
end;

end.

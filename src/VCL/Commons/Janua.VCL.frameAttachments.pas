unit Janua.VCL.frameAttachments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Spring.Collections,
  System.ImageList, SVGIconImageListBase, SVGIconImageList, VCL.StdCtrls, VCL.ToolWin,
  VCL.ComCtrls, VCL.ExtCtrls,
  // TMS
  Lucombo, AdvSplitter,
  // DB Controls
  Data.DB, VCL.Grids, VCL.DBGrids, CRGrid,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, Janua.VCL.MVVM.frameNavigator,
  VCL.wwbutton, VCL.wwdbigrd, VCL.wwdbgrid, VCL.WinXPickers, VCL.WinXCtrls, VCL.Buttons,
  // Januaproject
  Janua.ViewModels.Intf, uJanuaVCLFrame, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  Janua.Forms.Types, Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Bindings.Intf, Janua.Core.Classes,
  // Interposers VCL
  Janua.VCL.EnhCRDBGrid, Janua.VCL.EnhDBGrid, Janua.VCL.Interposers, Janua.TMS.Interposers,
  Janua.Components.Grids, Janua.VCL.ViewModel, Janua.VCL.Actions,
  // Inherites from Documents View Model ................................................................
  Janua.Documents.ViewModel.Intf, Janua.Documents.ViewModel.impl, Janua.Reporting.impl,
  Janua.Documents.WarehouseReceipts.ViewModel.Intf, Janua.VCL.FormController;

type
  TframeVCLAttachments = class(TframeVCLMVVMNavigator, IJanuaContainer, IJanuaBindable)
    lvAttachments: TListView;
    pnlAttachments: TPanel;
    lbGUID: TLabel;
    edFileName: TEdit;
    memDescription: TMemo;
    btnPreview: TSpeedButton;
    procedure btnPreviewClick(Sender: TObject);
    procedure lvAttachmentsClick(Sender: TObject);
    procedure lvAttachmentsDblClick(Sender: TObject);
  private
    FRecordSet: IJanuaRecordSet;
    FGUIDList: IList<TGUID>;
    FExtensionFieldName: string;
    FExtensionField: IJanuaField;
    { FjguidFieldName: string;
      FJGuidField: IJanuaField; }
    FFileNameFieldName: string;
    FFileNameField: IJanuaField;
    FDescriptionFieldName: string;
    FDescriptionField: IJanuaField;
    FExtension: string;
    procedure SetRecordSet(const Value: IJanuaRecordSet);
    procedure SetExtensionField(const Value: string);
    procedure SetFileNameField(const Value: string);
    { procedure SetjguidField(const Value: string); }
    procedure RefreshListView;
    procedure SetDescriptionFieldName(const Value: string);
    procedure SetExtension(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    procedure SetONewRecord;
    procedure OnNewRecord(Sender: TObject);
    procedure AfterConstruction; override;
    constructor Create(AOwner: TComponent); override;
    procedure RecordSetAfterInsert(const aRecordSet: IJanuaRecordSet);
    procedure RecordSetAfterPost(const aRecordSet: IJanuaRecordSet);
    procedure RecordSetAfterDelete(const aRecordSet: IJanuaRecordSet);
  public
    property RecordSet: IJanuaRecordSet read FRecordSet write SetRecordSet;
    property ExtensionFieldName: string read FExtensionFieldName write SetExtensionField;
    property FileNameFieldName: string read FFileNameFieldName write SetFileNameField;
    property DescriptionFieldName: string read FDescriptionFieldName write SetDescriptionFieldName;
    property Extension: string read FExtension write SetExtension;
  end;

implementation

uses Janua.Cloud.Types, Janua.VCL.Framework, Janua.Core.Functions, Janua.Application.Framework, System.Math;

{$R *.dfm}
{ TframeVCLDocAttachments }

{ TframeVCLAttachments }

procedure TframeVCLAttachments.AfterConstruction;
begin
  inherited;
  lvAttachments.LargeImages := TJanuaVCLApplication.ImgListVCLIcons48;
  lvAttachments.SmallImages := TJanuaVCLApplication.ImgListVCLIcons16;
  btnPreview.Images := TJanuaVCLApplication.ImgListVCLIcons48;
end;

constructor TframeVCLAttachments.Create(AOwner: TComponent);
begin
  inherited;
  FGUIDList := TCollections.CreateList<TGUID>;

  (* ICONS
    ".PDF" - 139
    ".JPG" - 136
    ".MSG" - 115
    ".TIF" - 113
    ".XLS" - 140
    ".DOC" - 147
    ".JPG" - 136
  *)
  FExtensionFieldName := 'extension';
  FDescriptionFieldName := 'description';
  FFileNameFieldName := 'filename';

end;

procedure TframeVCLAttachments.btnPreviewClick(Sender: TObject);
begin
  inherited;
  ViewModel.ActionPreview.ExecuteAction(Self);
end;

procedure TframeVCLAttachments.lvAttachmentsClick(Sender: TObject);
begin
  inherited;
  FRecordSet.SearchByGUID(FGUIDList[lvAttachments.ItemIndex]);
end;

procedure TframeVCLAttachments.lvAttachmentsDblClick(Sender: TObject);
begin
  inherited;
  FRecordSet.SearchByGUID(FGUIDList[lvAttachments.ItemIndex]);
  ViewModel.ActionPreview.ExecuteAction(Self);
end;

procedure TframeVCLAttachments.OnNewRecord(Sender: TObject);
begin
  RefreshListView;
end;

procedure TframeVCLAttachments.RecordSetAfterDelete(const aRecordSet: IJanuaRecordSet);
begin
  RefreshListView;
end;

procedure TframeVCLAttachments.RefreshListView;
var
  lRecord: IJanuaRecord;
  lItem: TListItem;
begin
  lvAttachments.Items.Clear;
  FGUIDList.Clear;
  if Assigned(FRecordSet) and (FRecordSet.RecordCount > 0) then
  begin
    FRecordSet.First;
    While not FRecordSet.EOF do
    begin
      FGUIDList.Add(FRecordSet.CurrentRecord.GUID);
      lItem := lvAttachments.Items.Add;
      lItem.Caption := FFileNameField.AsString;
      lItem.ImageIndex := TJanuaCloud.IconFromExtension(FExtensionField.AsString);
      FRecordSet.Next;
    end;
  end;
end;

procedure TframeVCLAttachments.RecordSetAfterInsert(const aRecordSet: IJanuaRecordSet);
begin

end;

procedure TframeVCLAttachments.RecordSetAfterPost(const aRecordSet: IJanuaRecordSet);
begin

end;

procedure TframeVCLAttachments.SetDescriptionFieldName(const Value: string);
begin
  FDescriptionFieldName := Value;
end;

procedure TframeVCLAttachments.SetExtension(const Value: string);
begin
  FExtension := Value;
  btnPreview.Enabled := FRecordSet.RecordCount > 0;
  btnPreview.ImageIndex := IfThen(Value = '', -1, TJanuaCloud.IconFromExtension(FExtensionField.AsString));
end;

procedure TframeVCLAttachments.SetExtensionField(const Value: string);
begin
  FExtensionFieldName := Value;
end;

procedure TframeVCLAttachments.SetFileNameField(const Value: string);
begin
  FFileNameFieldName := Value;
end;

procedure TframeVCLAttachments.SetONewRecord;
begin
  if Assigned(FViewModel) then
    ViewModel.OnNewRecord := OnNewRecord
end;

{ procedure TframeVCLAttachments.SetjguidField(const Value: string);
  begin
  FjguidFieldName := Value;
  end;
}
procedure TframeVCLAttachments.SetRecordSet(const Value: IJanuaRecordSet);
begin
  if FRecordSet <> Value then
  begin
    FRecordSet := Value;
    { FJGuidField := FRecordSet.CurrentRecord.FieldByName(FjguidFieldName); }

    // GUID
    lbGUID.Caption := FRecordSet.CurrentRecord.GUIDString;
    FRecordSet.CurrentRecord.Bind('GUIDString', lbGUID, 'Caption', True);

    // FileName
    FFileNameField := FRecordSet.CurrentRecord.FieldByName(FFileNameFieldName);
    edFileName.Text := FFileNameField.AsString;
    FFileNameField.Bind('AsString', edFileName, 'Text');

    // Extension
    FExtensionField := FRecordSet.CurrentRecord.FieldByName(FExtensionFieldName);
    Extension := FExtensionField.AsString;
    FExtensionField.Bind('AsString', Self, 'Extension', True);

    FDescriptionField := FRecordSet.CurrentRecord.FieldByName(FDescriptionFieldName);
    memDescription.Text := FDescriptionField.AsString;
    FDescriptionField.Bind('AsString', memDescription, 'Text');

    RefreshListView;
  end;
end;

end.

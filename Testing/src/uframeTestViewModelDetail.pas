unit uframeTestViewModelDetail;

interface

uses
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Spring.Collections, System.Json, System.Types, System.UITypes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ComCtrls, VCL.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, VCL.ToolWin, VCL.Samples.Spin,
  // Janua
  Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, Janua.Core.Classes, Janua.VCL.Actions, uJanuaVCLFrame,
  // Janua.Interposers
  Janua.VCL.Interposers, Janua.TMS.Interposers,
  // Test Model
  Janua.Bindings.Intf, Janua.Test.ViewModel.Intf;

type
  TframeTestViewModelDetail = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    grpDetail: TGroupBox;
    lbDetailGUID: TLabel;
    edDetailInt: TSpinEdit;
    edDetailString: TEdit;
  private
    FViewModel: IJanuaTestDetailViewModel;
    { Private declarations }
  protected
    function GetViewModel: IJanuaTestDetailViewModel;
    procedure SetViewModel(const Value: IJanuaTestDetailViewModel);
  public
    property ViewModel: IJanuaTestDetailViewModel read GetViewModel write SetViewModel;
  end;

implementation

uses Spring, Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}
{ TFrame1 }

function TframeTestViewModelDetail.GetViewModel: IJanuaTestDetailViewModel;
begin
  Result := FViewModel;
end;

procedure TframeTestViewModelDetail.SetViewModel(const Value: IJanuaTestDetailViewModel);
begin
  try
    if FViewModel <> Value then
    begin
      if (FViewModel = nil) then
      begin
        FViewModel := Value;
        Guard.CheckNotNull(FViewModel.TestSubRecord, 'FViewModel.RecordSet' );
        // Self.edDetailInt
        FViewModel.TestSubRecord.TestInteger.Bind('AsInteger', Self.edDetailInt, 'Value');
        // edMemo.Text
        FViewModel.TestSubRecord.TestString.Bind('AsString', edDetailString, 'Text');
        FViewModel.TestSubRecord.Bind('GUIDString', lbDetailGUID, 'Caption', True);
      end
      else
      begin
        FViewModel := Value;
        { JanuaActionViewController1.JanuaActionList := nil; }
      end;
    end;
  except
    on e: exception do
      RaiseException('SetViewModle', e, self);
  end;
end;

end.

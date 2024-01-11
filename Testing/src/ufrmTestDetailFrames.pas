unit ufrmTestDetailFrames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, uframeJanuaVCLViewModelDetail, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits,
  // Jnaua
  Janua.ViewModels.Intf, Janua.ViewModels.Templates, Janua.Test.ViewModel.Intf, Janua.Orm.Intf,
  Janua.Orm.Test.Intf, Janua.Core.Classes,
  Janua.Orm.Dataset.Intf, Janua.Vcl.EnhCRDBGrid,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, Vcl.ToolWin, Janua.Vcl.Actions;

type
  TfrmTestDetailFrames = class(TForm)
    pgDetails: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    frameJanuaVCLViewModelDetail1: TframeJanuaVCLViewModelDetail;
    frameJanuaVCLViewModelDetail2: TframeJanuaVCLViewModelDetail;
    grpMaster: TGroupBox;
    lbJguid: TLabel;
    edStringField: TEdit;
    edExtended: TJvCalcEdit;
    edBoolean: TCheckBox;
    edDateTime: TDateTimePicker;
    edMemo: TMemo;
    Button1: TButton;
    btnUndo: TButton;
    edIntFiled: TJvCalcEdit;
    ToolBar1: TToolBar;
    JanuaActionViewController1: TJanuaActionViewController;
  private
  public
    { Public declarations }
  end;

var
  frmTestDetailFrames: TfrmTestDetailFrames;

implementation

{$R *.dfm}

end.

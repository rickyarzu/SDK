unit uframeVCLDBReceiptRows;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Janua.Core.Classes,
  Janua.VCL.Actions, Vcl.DBCGrids, Vcl.ToolWin, Vcl.ComCtrls;

type
  TframeVCLDBReceiptRows = class(TFrame)
    DBCtrlGrid1: TDBCtrlGrid;
    pnlCommands: TPanel;
    navMaster: TDBNavigator;
    ToolBar1: TToolBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.

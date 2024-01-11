unit uJanuaVCLframeMainToobar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uJanuaVCLFrame, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls;

type
  TFrameVCLMainToolBar = class(TJanuaVCLFrameModel)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    ActionToolBar1: TActionToolBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameVCLMainToolBar: TFrameVCLMainToolBar;

implementation

{$R *.dfm}

end.

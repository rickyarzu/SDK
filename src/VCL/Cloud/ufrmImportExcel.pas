unit ufrmImportExcel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.ToolWin, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Grids;

type
  TForm6 = class(TForm)
    Actions: TActionList;
    ActionOpen: TAction;
    ActionValueInCurrentCell: TAction;
    ActionInfo: TAction;
    ActionImportWizard: TAction;
    ActionClose: TAction;
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    StatusBar: TStatusBar;
    Panel2: TPanel;
    ToolbarImages: TImageList;
    ToolbarImages_100Scale: TImageList;
    ToolbarImages_300Scale: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton7: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    Panel3: TPanel;
    Label1: TLabel;
    FmtBox: TEdit;
    SheetData: TStringGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

end.

unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, UniDBImage, StdCtrls, Mask,
  UniDBEdit, ExtCtrls, UniDBNavigator, Menus,
  UniMainMenu, ComCtrls, UniStatusBar, ImgList, UniDBMemo, UniLabel,
  UniButton, ToolWin, UniToolBar, UniMemo, uniGUIRegClasses,  uniguiclasses, UniPanel, UniEdit,
  Controls, Forms, Dialogs, uniGUIForm, Grids, DBGrids, uniDBGrid, DB, DBCtrls,
  UniImage, UniBasicGrid, uniGUIBaseClasses, uniImageList, uniGUIAbstractClasses;

type
  TMainForm = class(TUniForm)
    UniDBGrid1: TUniDBGrid;
    DataSource1: TDataSource;
    UniDBImage1: TUniDBImage;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBNavigator1: TUniDBNavigator;
    UniMainMenu1: TUniMainMenu;
    File1: TUniMenuItem;
    Exit1: TUniMenuItem;
    UniStatusBar1: TUniStatusBar;
    ImageList1: TUniImageList;
    UniDBMemo1: TUniDBMemo;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    heme1: TUniMenuItem;
    Blue1: TUniMenuItem;
    Classic1: TUniMenuItem;
    Gray1: TUniMenuItem;
    UniToolBar1: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton3: TUniToolButton;
    UniToolButton4: TUniToolButton;
    UniToolButton6: TUniToolButton;
    UniToolButton8: TUniToolButton;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniFormShow(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure ThemeClick(Sender: TObject);
    procedure UniToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


function MainForm: TMainForm;

implementation


{$R *.dfm}


uses
  UniGUIVars, MainModule, UniGUIApplication, ServerModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;


procedure TMainForm.ThemeClick(Sender: TObject);
begin
  if UniApplication <> nil then
  begin
    UniServerModule.Lock;
    try
      case TComponent(Sender).Tag of
        1 : UniServerModule.CurrentTheme:='classic';
        2 : UniServerModule.CurrentTheme:='neptune';
        3 : UniServerModule.CurrentTheme:='gray';
      end;
    finally
      UniServerModule.UnLock;
    end;
    TUniGUIApplication(UniApplication).Restart;
  end;
end;

procedure TMainForm.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  UniStatusBar1.Panels[0].Text:=DataSource1.DataSet.FieldByName('species no').AsString;
  UniStatusBar1.Panels[1].Text:=DataSource1.DataSet.FieldByName('common_name').AsString;
end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  DataSource1.DataSet.Open;
end;

procedure TMainForm.UniToolButton1Click(Sender: TObject);
begin
  Close;
end;

initialization
  RegisterMainFormClass(TMainForm);
end.



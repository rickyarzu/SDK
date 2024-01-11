{***********************************************************************}
{ TToolPanels component                                                 }
{ for Delphi & C++Builder                                               }
{ version 1.3                                                           }
{                                                                       }
{ written by TMS Software                                               }
{            copyright © 2003 - 2004                                    }
{            Email: info@tmssoftware.com                                }
{            Web: http://www.tmssoftware.com                            }
{***********************************************************************}

unit uToolPanelModel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolPanels, StdCtrls, ImgList, ComCtrls, Menus, Buttons, System.ImageList, AdvAppStyler
  {$IFDEF VER150}
  , XPMan, Buttons, Menus
  {$ENDIF}
  ;

type
  TForm1 = class(TForm)
    ImageListToolPanel1: TImageList;
    Panel1: TPanel;
    Button1: TButton;
    AdvToolPanelTab2: TAdvToolPanelTab;
    AdvToolPanel5: TAdvToolPanel;
    AdvToolPanel6: TAdvToolPanel;
    Button2: TButton;
    MonthCalendar1: TMonthCalendar;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Memo2: TMemo;
    CheckBox1: TCheckBox;
    ImageListTPanel: TImageList;
    PopupMenu1: TPopupMenu;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    Paste1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



end.

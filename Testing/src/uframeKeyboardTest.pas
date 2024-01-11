unit uframeKeyboardTest;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.ScrollBox, FMX.Memo, FMX.Edit,
  FMX.Controls.Presentation, FMX.Layouts;

type
  TFrame2 = class(TFrame)
    VertScrollBox1: TVertScrollBox;
    MainLayout1: TLayout;
    Edit1: TEdit;
    ClearEditButton1: TClearEditButton;
    Button2: TButton;
    Memo1: TMemo;
    LabelTitle: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.

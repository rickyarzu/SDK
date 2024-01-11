unit udmVCLMainApplication;

interface

uses
  System.SysUtils, System.Classes, udmWinMainApplication, Data.DB, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, SVGIconImageList, Vcl.Dialogs, Janua.VCL.Interposers;

type
  TdmVCLMainApplication = class(TdmWinMainApplication)
    ActionListStandard: TActionList;
    RecordNew: TAction;
    RecordDelete: TAction;
    RecordEdit: TAction;
    AdvancedSearch: TAction;
    Print: TAction;
    Export: TAction;
    ActionList: TActionList;
    actHome: TAction;
    actChangeTheme: TAction;
    actShowChildForm: TAction;
    actMenu: TAction;
    actSettings: TAction;
    actViewOptions: TAction;
    actBack: TAction;
    actAnimate: TAction;
    actLog: TAction;
    acFont: TAction;
    acApplyFont: TAction;
    acIconFonts: TAction;
    acErrorMessage: TAction;
    acWarningMessage: TAction;
    acInfoMessage: TAction;
    acConfirmMessage: TAction;
    acAbout: TAction;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmVCLMainApplication: TdmVCLMainApplication;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.



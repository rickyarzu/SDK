unit udmVCLMainApplication;

interface

uses
  System.SysUtils, System.Classes, udmWinMainApplication, Data.DB, System.Actions, Vcl.ActnList ;

type
  TdmVCLMainApplication = class(TdmWinMainApplication)
    ActionListStandard: TActionList;
    ActionNew: TAction;
    ActionDelete: TAction;
    ActionEdit: TAction;
    AdvancedSearch: TAction;
    Print: TAction;
    ActionExport: TAction;
    ActionListExtended: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
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

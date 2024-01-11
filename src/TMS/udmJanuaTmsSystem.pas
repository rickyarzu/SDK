unit udmJanuaTmsSystem;

interface

uses
  System.SysUtils, System.Classes, udmJanuaVCLSystem, AdvStyleIF, AdvPanel, AdvMenus, AdvMenuStylers,
  AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvAppStyler, AdvOfficePager, AdvOfficePagerStylers,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, Data.DB, Datasnap.DBClient;

type
  TdmJanuaTmsSystem = class(TdmJanuaSystem)
    OfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    PagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvAppStyler1: TAdvAppStyler;
    TabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler;
    MenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvPanelStyler1: TAdvPanelStyler;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmJanuaTmsSystem: TdmJanuaTmsSystem;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

unit Janua.Phoenix.VCL.dmPlannerController;

interface

uses
  System.SysUtils, System.Classes, Janua.VCL.Planner.dmCustomController, DBPlanner, PlanExLiveCalendar,
  Planner, PlanExGCalendar, CloudvCal, CloudWebDav, CloudCustomLive, CloudLiveWin, CloudCustomLiveCalendar,
  CloudLiveCalendar, Janua.Core.Commons, Janua.Core.Classes, CloudBase, CloudBaseWin, CloudCustomGoogle,
  CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar, VCL.Dialogs, System.Actions, VCL.ActnList,
  System.ImageList, VCL.ImgList, VCL.Controls, SVGIconImageListBase, SVGIconImageList;

type
  TdmVCLPhoenixPlannerController = class(TdmVCLPlannerCustomController)
  private
    FTechID: Int64;
    FTechFilter: Boolean;
    FReportDateFilter: Boolean;
    FReportDate: TDateTime;
    FCustomerID: Int64;
    FCustomerFilter: Boolean;
    FCAP: String;
    FStateFilter: Integer;
    FCAPFilter: Boolean;
    procedure SetCustomerFilter(const Value: Boolean);
    procedure SetCustomerID(const Value: Int64);
    procedure SetReportDate(const Value: TDateTime);
    procedure SetReportDateFilter(const Value: Boolean);
    procedure SetTechFilter(const Value: Boolean);
    procedure SetTechID(const Value: Int64);
    procedure SetCAP(const Value: String);
    procedure SetCAPFilter(const Value: Boolean);
    procedure SetStateFilter(const Value: Integer);
  public
    procedure AddEvent; override;
    procedure Setup; override;
    procedure Filter; override;
    procedure UndoMeeting; override;
    function OpenCalendar(const aDateFrom, aDateTo: TDateTime): Integer; override;
    property CustomerID: Int64 read FCustomerID write SetCustomerID;
    property TechID: Int64 read FTechID write SetTechID;
    property CustomerFilter: Boolean read FCustomerFilter write SetCustomerFilter;
    property TechFilter: Boolean read FTechFilter write SetTechFilter;
    property ReportDate: TDateTime read FReportDate write SetReportDate;
    property ReportDateFilter: Boolean read FReportDateFilter write SetReportDateFilter;
    property CAPFilter: Boolean read FCAPFilter write SetCAPFilter;
    property CAP: String read FCAP write SetCAP;
    property StateFilter: Integer read FStateFilter write SetStateFilter;
  end;

var
  dmVCLPhoenixPlannerController: TdmVCLPhoenixPlannerController;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.

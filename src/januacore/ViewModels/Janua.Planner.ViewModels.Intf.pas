unit Janua.Planner.ViewModels.Intf;

interface

uses Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf,
  // Orm
  Janua.Orm.Intf, Data.DB, JOrm.Planner.Timetable.Intf,
  JOrm.System.Session.Intf,
  // ViewModel
  Janua.ViewModels.Intf;

type
  IJanuaPlannerDataModule = interface(IJanuaDataModuleContainer) // set of IJanuaDBDataset and IJanuaDBStoredProcedure
    ['{ED595FE0-6A26-471C-9C13-E05B95154186}']
    function GetjdsUsers: IJanuaDBDataset;
    property jdsUsers: IJanuaDBDataset read GetjdsUsers;
    // qryUserSession
    function GetjdsUserTimeTable: IJanuaDBDataset;
    property jdsUserTimeTable: IJanuaDBDataset read GetjdsUserTimeTable;
    // qryUserProfile
    function GetjdsActivities: IJanuaDBDataset;
    property jdsActivities: IJanuaDBDataset read GetjdsActivities;
    // spLogin IJanuaDBStoredProcedure
    function ActivitiesGroups: IJanuaDBStoredProcedure;
    property jspActivitiesGroups: IJanuaDBStoredProcedure read ActivitiesGroups;
  end;


implementation

end.

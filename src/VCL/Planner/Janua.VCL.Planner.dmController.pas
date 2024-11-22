unit Janua.VCL.Planner.dmController;

interface

uses
  // RTL
  System.SysUtils, System.Classes, System.Actions, System.Bindings.Helper, System.ImageList, System.UITypes,
  System.DateUtils, System.TypInfo, System.StrUtils, Windows, Winapi.ShellAPI, Spring, System.Math,
  System.Json,
  // DB
  Data.DB, PostgreSQLUniProvider, UniProvider, InterBaseUniProvider, DBAccess, Uni, MemDS, VirtualTable,
  // VCL
  VCL.ActnList, VCL.ImgList, VCL.Controls, SVGIconImageListBase, SVGIconImageList, VCL.Dialogs,
  PictureContainer, VCL.Graphics, VCL.Forms,
  // Planner
  AdvPDFIO, AdvPlannerPDFIO, Planner, DBPlanner,
  // Cloud
  CloudCustomGoogle, CloudGoogleWin, CloudCustomGCalendar, CloudGCalendar, CloudBase, CloudBaseWin,
  CloudCustomLive, CloudLiveWin, CloudCustomLiveCalendar, CloudLiveCalendar, CloudCustomOutlook,
  CloudOutlookWin, CloudCustomOutlookCalendar, CloudOutlookCalendar, CloudWebDav, CloudvCal,
  // Januaproject
  Janua.Core.DataModule,
  Janua.Bindings.Intf, Janua.Core.Types, JOrm.Planner.Timetable.Intf, Janua.Controls.Forms.Intf,
  Janua.VCL.Interposers, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Controls.Intf, Janua.Core.Classes,
  Janua.Components.Planner, Janua.Core.Commons, Janua.Cloud.Conf, Janua.Unidac.Connection, Janua.Cloud.Types,
  CloudSMS, Janua.TMS.SMS, Janua.VCL.Planner.dmCustomController;


type
  TdmVCLPlannerController = class(TdmVCLPlannerCustomController, IJanuaDataModule, IJanuaBindable)
  end; 

var
  dmVCLPlannerController: TdmVCLPlannerController;

implementation

uses Janua.Application.Framework, Janua.ViewModels.Application, udmSVGImageList, Janua.Cloud.TwilioClient,
  Janua.VCL.Functions, Janua.Core.AsyncTask, Janua.Orm.Impl, Janua.Cloud.VCL.dlgWhatsAppTestSetting,
  // Orm to Manage Google Calendars (not Internal Planner so).
  JOrm.Cloud.GoogleCalendars.Impl, JOrm.Cloud.GoogleCalendarEvents.Impl, Janua.Core.Json,
  udlgVCLPlannerEvent, Janua.Orm.Types, Janua.Core.Functions;

{ udmPgPlannerStorage, udlgVCLPlannerAnagraph, udlgVCLPlannerActivities, }


{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.

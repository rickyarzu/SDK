unit Janua.Orm.Register;

interface

uses
  JOrm.Anagraph.Intf, JOrm.Anagraph.Group.Intf, Janua.Orm.Test.Intf, JOrm.Logistic.Shipments.Intf,
  JOrm.Logistic.Locations.Intf;

type
  TJanuaOrmFramework = class
    class procedure Initialize;
  end;

implementation

uses
  System.SysUtils,
  Janua.Application.FrameWork, Janua.Orm.Intf,
  // Test Framework
  Janua.Orm.Test.Impl, Janua.Orm.Impl,
  // System
  JORM.System.Impl, JORM.System.Intf,
  // Cms
  JOrm.Cms.MainArguments.Intf, JOrm.Cms.MainArguments.Impl,
  JOrm.Cms.Articles.Intf, JOrm.Cms.Articles.Impl,
  JOrm.Cms.Arguments.Intf, JOrm.Cms.Arguments.Impl,
  JOrm.Cms.SubArguments.Intf, JOrm.Cms.SubArguments.Impl,
  // Planner
  JOrm.Planner.Timetable.Impl, JOrm.Planner.Timetable.Intf,
  // Anagraph
  JOrm.Anagraph.Impl, JOrm.Anagraph.Group.Impl,
  // Documents
  JOrm.Documents.Types.Impl, JOrm.Documents.Types.Intf,
  // Shipping
  JOrm.Shipping.Impl, JOrm.Shipping.Intf,
  // Logistic
  JOrm.Logistic.AWBRows.Intf, JOrm.Logistic.AWBs.Impl, JOrm.Logistic.AWBs.Intf,
  JOrm.Logistic.Locations.Impl, JOrm.Logistic.Shipments.Impl;

{ TJanuaOrmFramework }

class procedure TJanuaOrmFramework.Initialize;
begin
  // Basic Orm Interfaces and Classes
  TJanuaApplicationFactory.RegisterClass(IJanuaParams, TJanuaParams);
  TJanuaOrmFactory.RegisterContainer(IJanuaSearchListContainer, TJanuaSearchListContainer);
  // -------------- Anagraph  Schema --------------------------------------------------------------
  // TAnagraph = class( IAnagraph)
  TJanuaOrmFactory.RegisterRecord(IAnagraph, TAnagraph);
  // TAnagraphView = IAnagraphView
  TJanuaOrmFactory.RegisterRecord(IAnagraphView, TAnagraphView);
  // TAnagraphs = class( IAnagraphs)
  TJanuaOrmFactory.RegisterRecordSet(IAnagraphs, TAnagraphs);
  TJanuaOrmFactory.RegisterRecordSet(IAnagraphViews, TAnagraphViews);
  // TGroup = class(IGroup)
  TJanuaOrmFactory.RegisterRecord(IAnagGroup, TAnagGroup);
  // TGroups = class(IGroups)
  TJanuaOrmFactory.RegisterRecordSet(IAnagGroups, TAnagGroups);

  // -------------- Cms  Schema -----------------------------------------------------------------
  // TMainArgument = class( IMainArgument)
  TJanuaOrmFactory.RegisterRecord(IMainArgument, TMainArgument);
  // TMainArguments = class( IMainArgumentss)
  TJanuaOrmFactory.RegisterRecordSet(IMainArguments, TMainArguments);
  // IArticle IArticles
  TJanuaOrmFactory.RegisterRecord(IArticle, TArticle);
  TJanuaOrmFactory.RegisterRecordSet(IArticles, TArticles);
  // IArgument, TArgument
  TJanuaOrmFactory.RegisterRecord(IArgument, TArgument);
  TJanuaOrmFactory.RegisterRecordSet(IArguments, TArguments);
  // ISubArgument, ISubArgument
  TJanuaOrmFactory.RegisterRecord(ISubArgument, TSubArgument);
  TJanuaOrmFactory.RegisterRecordSet(ISubArguments, TSubArguments);

  // -------------- Test Schema -----------------------------------------------------------------
  // TJanuaTestSubRecord = class(IJanuaTestSubRecord)
  TJanuaOrmFactory.RegisterRecord(IJanuaTestSubRecord, TJanuaTestSubRecord);
  // TJanuaTestSubRecordSet = class(IJanuaTestSubRecordSet)
  TJanuaOrmFactory.RegisterRecordSet(IJanuaTestSubRecordSet, TJanuaTestSubRecordSet);
  // TJanuaTestNestedRecord = class(IJanuaTestNestedRecord)
  TJanuaOrmFactory.RegisterRecord(IJanuaTestNestedRecord, TJanuaTestNestedRecord);
  // TJanuaTestRecordSet = class( IJanuaTestRecordSet)
  TJanuaOrmFactory.RegisterRecordSet(IJanuaTestRecordSet, TJanuaTestRecordSet);

  // -------------- Documents  Schema --------------------------------------------------------------
  // TDocType = class(TCustomDocType, IDocType)
  TJanuaOrmFactory.RegisterRecord(IDocType, TDocType);
  // TDocTypes = class(TCustomDocTypes, IJanuaRecordSet, IDocTypes)
  TJanuaOrmFactory.RegisterRecordSet(IDocTypes, TDocTypes);

  // -------------- Logistics  Schema --------------------------------------------------------------
  // TPickupOrders = class(TCustomPickuOrders, IJanuaRecordSet, IPickuOrders)
  TJanuaOrmFactory.RegisterRecord(IShipment, TShipment);
  // TLogisticLocation = class(TCustomLogisticLocation, ILogisticLocation)
  TJanuaOrmFactory.RegisterRecord(ILogisticLocation, TLogisticLocation);
  // TLogisticLocations = class(TCustomLogisticLocations, IJanuaRecordSet, ILogisticLocations)
  TJanuaOrmFactory.RegisterRecordSet(ILogisticLocations, TLogisticLocations);
  // TLogisticLocation = class(TCustomLogisticLocation, ILogisticLocation)
  TJanuaOrmFactory.RegisterRecord(ITimeTable, TTimeTable);
  // TLogisticLocations = class(TCustomLogisticLocations, IJanuaRecordSet, ILogisticLocations)
  TJanuaOrmFactory.RegisterRecordSet(ITimeTables, TTimeTables);
  // TLogisticLocations = class(TCustomLogisticLocations, IJanuaRecordSet, ILogisticLocations)
  TJanuaOrmFactory.RegisterRecordSet(IUserProfiles, TUserProfiles);
  // TLogisticAWBRow = class( ILogisticAWBRow)
  TJanuaOrmFactory.RegisterRecord(ILogisticAWBRow, TLogisticAWBRow);
  TJanuaOrmFactory.RegisterRecordSet(ILogisticAWBRows, TLogisticAWBRows);
  // TLogisticAWB = class(TCustomLogisticAWB, IJanuaRecord, ILogisticAWB)
  TJanuaOrmFactory.RegisterRecord(ILogisticAWB, TLogisticAWB);
  TJanuaOrmFactory.RegisterRecordSet(ILogisticAWBs, TLogisticAWBs);
  // TShipmentsView = class(TCustomShipmentsView,  IShipmentsView)
  TJanuaOrmFactory.RegisterRecord(IShipmentView, TShipmentView);
  TJanuaOrmFactory.RegisterRecordSet(IShipmentsView, TShipmentsView);

  // ------------- Shipping Schema --------------------------------------------------------------
  // TVessels = class( IVessels)
  TJanuaOrmFactory.RegisterRecord(IVessel, TVessel);
  TJanuaOrmFactory.RegisterRecordSet(IVessels, TVessels);

  // -------------- System  Schema --------------------------------------------------------------
  // TUserSession = class(TSession, IUserSession)
  TJanuaOrmFactory.RegisterRecord(IUserSession, TUserSession);
  // TLogisticLocations = class(TCustomLogisticLocations, IJanuaRecordSet, ILogisticLocations)
  TJanuaOrmFactory.RegisterRecordSet(IUserSessions, TUserSessions);
  // TUserSession = class(TUser, IUser)
  TJanuaOrmFactory.RegisterRecord(IUser, TUser);
  // TUsers = class(TJanuaRecordSet, IJanuaRecordSet, IUsers)
  TJanuaOrmFactory.RegisterRecordSet(IUsers, TUsers);
  // TUserSession = class(TUserProfile, IUserProfile)
  TJanuaOrmFactory.RegisterRecord(IUserProfile, TUserProfile);

end;

initialization

try
  TJanuaOrmFramework.Initialize;
except
  on e: exception do
    LogException('TJanuaOrmFramework.Initialize', e, nil);
end;

end.

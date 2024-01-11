program JanuaCoreUnitTesting;

{$I januacore.inc}
{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}

uses
  System.SysUtils,
  System.Classes,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ENDIF }
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  DUnitX.TestFramework,
  {$IFDEF WEBBROKER}
  Web.WebReq,
  {$ENDIF }
  unitTestCoreTypes in '..\..\src\unitTestCoreTypes.pas',
  udmTestFunctionsDataset in '..\..\src\udmTestFunctionsDataset.pas' {dmTestFunctionsDataset: TDataModule},
  unitTestMapsTypes in '..\..\src\unitTestMapsTypes.pas',
  unitTestCoreClasses in '..\..\src\unitTestCoreClasses.pas',
  unitTestOrm in '..\..\src\unitTestOrm.pas',
  Janua.Orm.Test.Intf in '..\..\src\Janua.Orm.Test.Intf.pas',
  Janua.Orm.Test.Impl in '..\..\src\Janua.Orm.Test.Impl.pas',
  unitTestConf in '..\..\src\unitTestConf.pas',
  unitTestHtmlMetro5 in '..\..\src\unitTestHtmlMetro5.pas',
  unitTestMetro5 in '..\..\src\unitTestMetro5.pas',
  unitTestCoreHtml in '..\..\src\unitTestCoreHtml.pas',
  uWebBrokerTest in '..\..\src\uWebBrokerTest.pas' {Critico},
  Janua.Test.Football in '..\..\..\src\januacore\Test\Janua.Test.Football.pas',
  unitTestFootball in '..\..\src\unitTestFootball.pas',
  unitTestDilettantissimo in '..\..\src\unitTestDilettantissimo.pas',
  unitTestCms in '..\..\src\unitTestCms.pas',
  ServerMethodsCoreTest in '..\..\src\ServerMethodsCoreTest.pas',
  unitTestLND in '..\..\src\unitTestLND.pas',
  unitTestLNDFactory in '..\..\src\unitTestLNDFactory.pas',
  unitTestCoreFunctions in '..\..\src\unitTestCoreFunctions.pas',
  uWebModuleCoreTest in '..\..\src\uWebModuleCoreTest.pas' {WebModuleCoreTest: TWebModule},
  unitTestCloud in '..\..\src\unitTestCloud.pas',
  unitTestCoreSystem in '..\..\src\unitTestCoreSystem.pas',
  Spring.DesignPatterns in '..\..\..\..\lib\spring4d\Source\Base\Spring.DesignPatterns.pas',
  Spring.Events.Base in '..\..\..\..\lib\spring4d\Source\Base\Spring.Events.Base.pas',
  Spring.Events in '..\..\..\..\lib\spring4d\Source\Base\Spring.Events.pas',
  Spring.Helpers in '..\..\..\..\lib\spring4d\Source\Base\Spring.Helpers.pas',
  Spring.MethodIntercept in '..\..\..\..\lib\spring4d\Source\Base\Spring.MethodIntercept.pas',
  Spring in '..\..\..\..\lib\spring4d\Source\Base\Spring.pas',
  Spring.Reflection in '..\..\..\..\lib\spring4d\Source\Base\Spring.Reflection.pas',
  Spring.ResourceStrings in '..\..\..\..\lib\spring4d\Source\Base\Spring.ResourceStrings.pas',
  Spring.SystemUtils in '..\..\..\..\lib\spring4d\Source\Base\Spring.SystemUtils.pas',
  Spring.Times in '..\..\..\..\lib\spring4d\Source\Base\Spring.Times.pas',
  Spring.ValueConverters in '..\..\..\..\lib\spring4d\Source\Base\Spring.ValueConverters.pas',
  Spring.VirtualClass in '..\..\..\..\lib\spring4d\Source\Base\Spring.VirtualClass.pas',
  Spring.VirtualInterface in '..\..\..\..\lib\spring4d\Source\Base\Spring.VirtualInterface.pas',
  Spring.Collections.Adapters in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.Adapters.pas',
  Spring.Collections.Base in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.Base.pas',
  Spring.Collections.Dictionaries in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.Dictionaries.pas',
  Spring.Collections.Enumerable in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.Enumerable.pas',
  Spring.Collections.Events in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.Events.pas',
  Spring.Collections.Extensions in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.Extensions.pas',
  Spring.Collections.LinkedLists in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.LinkedLists.pas',
  Spring.Collections.Lists in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.Lists.pas',
  Spring.Collections.MultiMaps in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.MultiMaps.pas',
  Spring.Collections in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.pas',
  Spring.Collections.Queues in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.Queues.pas',
  Spring.Collections.Sets in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.Sets.pas',
  Spring.Collections.Stacks in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.Stacks.pas',
  Spring.Collections.Trees in '..\..\..\..\lib\spring4d\Source\Base\Collections\Spring.Collections.Trees.pas',
  Janua.Core.System in '..\..\..\src\januacore\Janua.Core.System.pas',
  Janua.Core.University in '..\..\..\src\januacore\Janua.Core.University.pas',
  Janua.Core.Users in '..\..\..\src\januacore\Janua.Core.Users.pas',
  Janua.Core.WebServices in '..\..\..\src\januacore\Janua.Core.WebServices.pas',
  Janua.Core.Ads in '..\..\..\src\januacore\Janua.Core.Ads.pas',
  Janua.Core.Backup in '..\..\..\src\januacore\Janua.Core.Backup.pas',
  Janua.Core.Books in '..\..\..\src\januacore\Janua.Core.Books.pas',
  Janua.Core.BooksForms in '..\..\..\src\januacore\Janua.Core.BooksForms.pas',
  Janua.Core.Cloud in '..\..\..\src\januacore\Janua.Core.Cloud.pas',
  Janua.Core.Cms in '..\..\..\src\januacore\Janua.Core.Cms.pas',
  Janua.Core.Collections in '..\..\..\src\januacore\Janua.Core.Collections.pas',
  Janua.Core.CRM in '..\..\..\src\januacore\Janua.Core.CRM.pas',
  Janua.Core.Crypt in '..\..\..\src\januacore\Janua.Core.Crypt.pas',
  Janua.Core.Customcontrols in '..\..\..\src\januacore\Janua.Core.Customcontrols.pas',
  Janua.Core.Customsession in '..\..\..\src\januacore\Janua.Core.Customsession.pas',
  Janua.Core.Customsystem in '..\..\..\src\januacore\Janua.Core.Customsystem.pas',
  Janua.Core.Docs in '..\..\..\src\januacore\Janua.Core.Docs.pas',
  Janua.Core.Exceptions in '..\..\..\src\januacore\Janua.Core.Exceptions.pas',
  Janua.Core.Feeds in '..\..\..\src\januacore\Janua.Core.Feeds.pas',
  Janua.Core.Football in '..\..\..\src\januacore\Janua.Core.Football.pas',
  Janua.Core.Forms in '..\..\..\src\januacore\Janua.Core.Forms.pas',
  Janua.Core.Functions in '..\..\..\src\januacore\Janua.Core.Functions.pas',
  Janua.Core.Http in '..\..\..\src\januacore\Janua.Core.Http.pas',
  Janua.Core.Items in '..\..\..\src\januacore\Janua.Core.Items.pas',
  Janua.Core.JPublic in '..\..\..\src\januacore\Janua.Core.JPublic.pas',
  Janua.Core.Mail in '..\..\..\src\januacore\Janua.Core.Mail.pas',
  Janua.Core.Ords in '..\..\..\src\januacore\Janua.Core.Ords.pas',
  Janua.Core.Params in '..\..\..\src\januacore\Janua.Core.Params.pas',
  Janua.Core.Pharmacies in '..\..\..\src\januacore\Janua.Core.Pharmacies.pas',
  Janua.Core.Pos in '..\..\..\src\januacore\Janua.Core.Pos.pas',
  Janua.Core.RealEstate in '..\..\..\src\januacore\Janua.Core.RealEstate.pas',
  Janua.Core.Social in '..\..\..\src\januacore\Janua.Core.Social.pas',
  Janua.Core.Sockets in '..\..\..\src\januacore\Janua.Core.Sockets.pas',
  Janua.Core.Hash in '..\..\..\src\januacore\Janua.Core.Hash.pas',
  Janua.Core.Swap in '..\..\..\src\januacore\Janua.Core.Swap.pas',
  Janua.Core.Roundings in '..\..\..\src\januacore\Janua.Core.Roundings.pas',
  Janua.Core.Printers in '..\..\..\src\januacore\Janua.Core.Printers.pas',
  Janua.Core.FTP in '..\..\..\src\januacore\Janua.Core.FTP.pas',
  Janua.Core.Mobyt in '..\..\..\src\januacore\Janua.Core.Mobyt.pas',
  Janua.Core.Excel in '..\..\..\src\januacore\Janua.Core.Excel.pas',
  Janua.Core.Servers in '..\..\..\src\januacore\Janua.Core.Servers.pas',
  Janua.Core.Health in '..\..\..\src\januacore\Janua.Core.Health.pas',
  Janua.Core.Cms.GraphicMenu in '..\..\..\src\januacore\Janua.Core.Cms.GraphicMenu.pas',
  Janua.Core.Cloud.Server in '..\..\..\src\januacore\Janua.Core.Cloud.Server.pas',
  Janua.Core.Locale in '..\..\..\src\januacore\Janua.Core.Locale.pas',
  Janua.Core.Metronics in '..\..\..\src\januacore\Janua.Core.Metronics.pas',
  Writers in '..\..\..\src\januacore\Writers.pas',
  Janua.Core.DB in '..\..\..\src\januacore\Janua.Core.DB.pas',
  udmJanuaCoreServer in '..\..\..\src\januacore\Deprecated\udmJanuaCoreServer.pas' {dmJanuaCoreServer: TDataModule},
  Janua.Core.Json in '..\..\..\src\januacore\Janua.Core.Json.pas',
  Janua.Core.Statistics in '..\..\..\src\januacore\Janua.Core.Statistics.pas',
  Janua.Core.Types in '..\..\..\src\januacore\Janua.Core.Types.pas',
  Janua.Core.Conf in '..\..\..\src\januacore\Janua.Core.Conf.pas',
  Janua.Core.Math in '..\..\..\src\januacore\Janua.Core.Math.pas',
  Janua.Core.Classes.Social in '..\..\..\src\januacore\Janua.Core.Classes.Social.pas',
  Janua.Html.Types in '..\..\..\src\januacore\Janua.Html.Types.pas',
  Janua.Football.Intf in '..\..\..\src\januacore\Janua.Football.Intf.pas',
  Janua.Football.Types in '..\..\..\src\januacore\Janua.Football.Types.pas',
  Janua.Maps.Intf in '..\..\..\src\januacore\Janua.Maps.Intf.pas',
  Janua.Maps.Types in '..\..\..\src\januacore\Janua.Maps.Types.pas',
  Janua.Core.Maps in '..\..\..\src\januacore\Janua.Core.Maps.pas',
  Janua.Cms.Types in '..\..\..\src\januacore\Janua.Cms.Types.pas',
  Janua.Cms.Server.Intf in '..\..\..\src\januacore\Janua.Cms.Server.Intf.pas',
  Janua.Cms.Core in '..\..\..\src\januacore\Janua.Cms.Core.pas',
  Janua.Anagraph.Types in '..\..\..\src\januacore\Janua.Anagraph.Types.pas',
  Janua.Html.Metro5.Types in '..\..\..\src\januacore\Janua.Html.Metro5.Types.pas',
  Janua.Html.Metro5.Impl in '..\..\..\src\januacore\Janua.Html.Metro5.Impl.pas',
  Janua.Orm.Impl in '..\..\..\src\januacore\Janua.Orm.Impl.pas',
  Janua.Orm.Intf in '..\..\..\src\januacore\Janua.Orm.Intf.pas',
  Janua.Orm.Types in '..\..\..\src\januacore\Janua.Orm.Types.pas',
  Janua.Orm.Generator in '..\..\..\src\januacore\Janua.Orm.Generator.pas',
  Janua.Html.Bootstrap4 in '..\..\..\src\januacore\Janua.Html.Bootstrap4.pas',
  Janua.Html.Bootstrap4.Types in '..\..\..\src\januacore\Janua.Html.Bootstrap4.Types.pas',
  JOrm.System.UserProfile.Custom.Intf in '..\..\..\src\januacore\orm\JOrm.System.UserProfile.Custom.Intf.pas',
  JOrm.System.UserProfile.Custom.Impl in '..\..\..\src\januacore\orm\JOrm.System.UserProfile.Custom.Impl.pas',
  JOrm.Cms.MainArguments.Impl in '..\..\..\src\januacore\orm\JOrm.Cms.MainArguments.Impl.pas',
  JOrm.Cms.Arguments.Intf in '..\..\..\src\januacore\orm\JOrm.Cms.Arguments.Intf.pas',
  JOrm.Cms.Arguments.Impl in '..\..\..\src\januacore\orm\JOrm.Cms.Arguments.Impl.pas',
  JOrm.Cms.SubArguments.Intf in '..\..\..\src\januacore\orm\JOrm.Cms.SubArguments.Intf.pas',
  JOrm.Cms.SubArguments.Impl in '..\..\..\src\januacore\orm\JOrm.Cms.SubArguments.Impl.pas',
  Janua.Html.Builder.Intf in '..\..\..\src\januacore\Janua.Html.Builder.Intf.pas',
  Janua.Metro5.Builder in '..\..\..\src\januacore\Janua.Metro5.Builder.pas',
  Janua.Metro5.Builder.Intf in '..\..\..\src\januacore\Janua.Metro5.Builder.Intf.pas',
  Janua.Html.Metro5.Pages in '..\..\..\src\januacore\Janua.Html.Metro5.Pages.pas',
  Janua.Html.Bootstrap4.Builder in '..\..\..\src\januacore\Janua.Html.Bootstrap4.Builder.pas',
  Janua.lnd.impl in '..\..\..\src\januacore\custom\Janua.lnd.impl.pas',
  Janua.lnd.Intf in '..\..\..\src\januacore\custom\Janua.lnd.Intf.pas',
  JOrm.Cms.Articles.Intf in '..\..\..\src\januacore\orm\JOrm.Cms.Articles.Intf.pas',
  JOrm.Cms.Articles.Impl in '..\..\..\src\januacore\orm\JOrm.Cms.Articles.Impl.pas',
  Janua.Html.Metro5.Intf in '..\..\..\src\januacore\Janua.Html.Metro5.Intf.pas',
  Janua.Html.Bootstrap4.Intf in '..\..\..\src\januacore\Janua.Html.Bootstrap4.Intf.pas',
  Janua.Cloud.Images.Intf in '..\..\..\src\januacore\Janua.Cloud.Images.Intf.pas',
  Janua.Cloud.Images.Impl in '..\..\..\src\januacore\Janua.Cloud.Images.Impl.pas',
  Janua.Server.Impl in '..\..\..\src\januacore\Janua.Server.Impl.pas',
  Janua.Server.Intf in '..\..\..\src\januacore\Janua.Server.Intf.pas',
  Janua.Cloud.Files.Impl in '..\..\..\src\januacore\Janua.Cloud.Files.Impl.pas',
  Janua.Cloud.Files.Intf in '..\..\..\src\januacore\Janua.Cloud.Files.Intf.pas',
  Janua.Orm.Dataset.Impl in '..\..\..\src\januacore\Janua.Orm.Dataset.Impl.pas',
  Janua.Orm.Dataset.Intf in '..\..\..\src\januacore\Janua.Orm.Dataset.Intf.pas',
  Janua.Orm.Functions in '..\..\..\src\januacore\Janua.Orm.Functions.pas',
  Janua.Core.ServerClasses in '..\..\..\src\januacore\Janua.Core.ServerClasses.pas',
  JOrm.System.Session.Intf in '..\..\..\src\januacore\orm\JOrm.System.Session.Intf.pas',
  JOrm.System.Session.Impl in '..\..\..\src\januacore\orm\JOrm.System.Session.Impl.pas',
  JORM.System.Intf in '..\..\..\src\januacore\orm\JORM.System.Intf.pas',
  JORM.System.Impl in '..\..\..\src\januacore\orm\JORM.System.Impl.pas',
  Janua.Cloud.Server.Intf in '..\..\..\src\januacore\Janua.Cloud.Server.Intf.pas',
  Janua.System.Server.Intf in '..\..\..\src\januacore\Janua.System.Server.Intf.pas',
  Janua.System.Server.Impl in '..\..\..\src\januacore\Janua.System.Server.Impl.pas',
  Janua.Cloud.Server.Impl in '..\..\..\src\januacore\Janua.Cloud.Server.Impl.pas',
  Janua.Cms.Server.Impl in '..\..\..\src\januacore\Janua.Cms.Server.Impl.pas',
  JOrm.Anagraph.Branches.Impl in '..\..\..\src\januacore\orm\JOrm.Anagraph.Branches.Impl.pas',
  JOrm.Anagraph.Branches.Intf in '..\..\..\src\januacore\orm\JOrm.Anagraph.Branches.Intf.pas',
  JOrm.System.Users.Impl in '..\..\..\src\januacore\orm\JOrm.System.Users.Impl.pas',
  JOrm.System.Users.Intf in '..\..\..\src\januacore\orm\JOrm.System.Users.Intf.pas',
  Janua.Orm.Virtual in '..\..\..\src\januacore\Janua.Orm.Virtual.pas',
  JOrm.Anagraph.anagraph.Impl in '..\..\..\src\januacore\orm\JOrm.Anagraph.anagraph.Impl.pas',
  JOrm.Anagraph.anagraph.Intf in '..\..\..\src\januacore\orm\JOrm.Anagraph.anagraph.Intf.pas',
  Janua.Html.Builder.Impl in '..\..\..\src\januacore\Janua.Html.Builder.Impl.pas',
  Janua.Football.Server.Intf in '..\..\..\src\januacore\Janua.Football.Server.Intf.pas',
  Janua.Football.Server.Impl in '..\..\..\src\januacore\Janua.Football.Server.Impl.pas',
  JOrm.Football.Matches.Impl in '..\..\..\src\januacore\orm\JOrm.Football.Matches.Impl.pas',
  JOrm.Football.Matches.Intf in '..\..\..\src\januacore\orm\JOrm.Football.Matches.Intf.pas',
  Janua.Dilettantissimo.Intf in '..\..\..\src\januacore\custom\Janua.Dilettantissimo.Intf.pas',
  Janua.Dilettantissimo.Impl in '..\..\..\src\januacore\custom\Janua.Dilettantissimo.Impl.pas',
  Janua.Football.Impl in '..\..\..\src\januacore\Janua.Football.Impl.pas',
  Janua.Http.Types in '..\..\..\src\januacore\Janua.Http.Types.pas',
  JOrm.Football.RankingTable.Impl in '..\..\..\src\januacore\orm\JOrm.Football.RankingTable.Impl.pas',
  JOrm.Football.RankingTable.Intf in '..\..\..\src\januacore\orm\JOrm.Football.RankingTable.Intf.pas',
  JOrm.Football.GoalRanking.Impl in '..\..\..\src\januacore\orm\JOrm.Football.GoalRanking.Impl.pas',
  JOrm.Football.GoalRanking.Intf in '..\..\..\src\januacore\orm\JOrm.Football.GoalRanking.Intf.pas',
  JOrm.Football.Championship.Impl in '..\..\..\src\januacore\orm\JOrm.Football.Championship.Impl.pas',
  JOrm.Football.Championship.Intf in '..\..\..\src\januacore\orm\JOrm.Football.Championship.Intf.pas',
  JOrm.Football.MatchDay.Impl in '..\..\..\src\januacore\orm\JOrm.Football.MatchDay.Impl.pas',
  JOrm.Football.MatchDay.Intf in '..\..\..\src\januacore\orm\JOrm.Football.MatchDay.Intf.pas',
  JOrm.Football.MatchPlayer.Impl in '..\..\..\src\januacore\orm\JOrm.Football.MatchPlayer.Impl.pas',
  JOrm.Football.MatchPlayer.Intf in '..\..\..\src\januacore\orm\JOrm.Football.MatchPlayer.Intf.pas',
  JOrm.Football.MatchEvent.Impl in '..\..\..\src\januacore\orm\JOrm.Football.MatchEvent.Impl.pas',
  JOrm.Football.MatchEvent.Intf in '..\..\..\src\januacore\orm\JOrm.Football.MatchEvent.Intf.pas',
  JOrm.Football.MatchEventDetail.Impl in '..\..\..\src\januacore\orm\JOrm.Football.MatchEventDetail.Impl.pas',
  JOrm.Football.MatchEventDetail.Intf in '..\..\..\src\januacore\orm\JOrm.Football.MatchEventDetail.Intf.pas',
  JOrm.Football.MatchDetails.Intf in '..\..\..\src\januacore\orm\JOrm.Football.MatchDetails.Intf.pas',
  JOrm.Football.MatchDetails.Impl in '..\..\..\src\januacore\orm\JOrm.Football.MatchDetails.Impl.pas',
  JOrm.Football.Season.Impl in '..\..\..\src\januacore\orm\JOrm.Football.Season.Impl.pas',
  JOrm.Football.Season.Intf in '..\..\..\src\januacore\orm\JOrm.Football.Season.Intf.pas',
  Janua.Cloud.Http.Impl in '..\..\..\src\januacore\Janua.Cloud.Http.Impl.pas',
  Janua.Cloud.Http.Intf in '..\..\..\src\januacore\Janua.Cloud.Http.Intf.pas',
  Janua.Football.Web.Intf in '..\..\..\src\januacore\Janua.Football.Web.Intf.pas',
  Janua.Football.Web.Impl in '..\..\..\src\januacore\Janua.Football.Web.Impl.pas',
  Janua.Cloud.Images.Cache in '..\..\..\src\januacore\Janua.Cloud.Images.Cache.pas',
  Janua.Cloud.Files.Cache in '..\..\..\src\januacore\Janua.Cloud.Files.Cache.pas',
  Janua.Cloud.Images.WebBroker in '..\..\..\src\januacore\Janua.Cloud.Images.WebBroker.pas',
  Janua.Cloud.Files.WebBroker in '..\..\..\src\januacore\Janua.Cloud.Files.WebBroker.pas',
  JOrm.Football.LeagueGroups.Impl in '..\..\..\src\januacore\orm\JOrm.Football.LeagueGroups.Impl.pas',
  JOrm.Football.LeagueGroups.Intf in '..\..\..\src\januacore\orm\JOrm.Football.LeagueGroups.Intf.pas',
  JOrm.Football.Leagues.Impl in '..\..\..\src\januacore\orm\JOrm.Football.Leagues.Impl.pas',
  JOrm.Football.Leagues.Intf in '..\..\..\src\januacore\orm\JOrm.Football.Leagues.Intf.pas',
  JOrm.Cms.ArticlesAttachment.Impl in '..\..\..\src\januacore\orm\JOrm.Cms.ArticlesAttachment.Impl.pas',
  JOrm.Cms.ArticlesAttachment.Intf in '..\..\..\src\januacore\orm\JOrm.Cms.ArticlesAttachment.Intf.pas',
  Janua.Html.Impl in '..\..\..\src\januacore\Janua.Html.Impl.pas',
  Janua.Html.Intf in '..\..\..\src\januacore\Janua.Html.Intf.pas',
  Janua.Http.Impl in '..\..\..\src\januacore\Janua.Http.Impl.pas',
  Janua.Http.Intf in '..\..\..\src\januacore\Janua.Http.Intf.pas',
  JOrm.Football.PlayerCareer.Impl in '..\..\..\src\januacore\orm\JOrm.Football.PlayerCareer.Impl.pas',
  JOrm.Football.PlayerCareer.Intf in '..\..\..\src\januacore\orm\JOrm.Football.PlayerCareer.Intf.pas',
  Janua.Cloud.Impl in '..\..\..\src\januacore\Janua.Cloud.Impl.pas',
  Janua.Cloud.Intf in '..\..\..\src\januacore\Janua.Cloud.Intf.pas',
  Janua.Cms.Impl in '..\..\..\src\januacore\Janua.Cms.Impl.pas',
  Janua.Cms.INtf in '..\..\..\src\januacore\Janua.Cms.INtf.pas',
  Janua.Wordpress.Types in '..\..\..\src\januacore\Janua.Wordpress.Types.pas',
  Janua.Wordpress.Intf in '..\..\..\src\januacore\Janua.Wordpress.Intf.pas',
  Janua.Wordpress.Impl in '..\..\..\src\januacore\Janua.Wordpress.Impl.pas',
  Janua.Core.Register in '..\..\..\src\januacore\Janua.Core.Register.pas',
  Janua.Server.Components in '..\..\..\src\januacore\Janua.Server.Components.pas',
  Janua.Controls.Impl in '..\..\..\src\januacore\Janua.Controls.Impl.pas',
  Janua.Controls.Intf in '..\..\..\src\januacore\Janua.Controls.Intf.pas',
  Janua.Core.Export.Intf in '..\..\..\src\januacore\Janua.Core.Export.Intf.pas',
  Janua.Core.Export.Text in '..\..\..\src\januacore\Janua.Core.Export.Text.pas',
  Janua.Core.Classes.Intf in '..\..\..\src\januacore\Janua.Core.Classes.Intf.pas',
  Janua.Legacy.Classes in '..\..\..\src\januacore\Janua.Legacy.Classes.pas',
  Janua.Anagraph.Server.Impl in '..\..\..\src\januacore\Janua.Anagraph.Server.Impl.pas',
  Janua.Anagraph.Server.Intf in '..\..\..\src\januacore\Janua.Anagraph.Server.Intf.pas',
  JOrm.Anagraph.Group.Intf in '..\..\..\src\januacore\orm\JOrm.Anagraph.Group.Intf.pas',
  JOrm.Anagraph.Group.Impl in '..\..\..\src\januacore\orm\JOrm.Anagraph.Group.Impl.pas',
  Janua.System.ViewModel in '..\..\..\src\januacore\ViewModels\Janua.System.ViewModel.pas',
  Janua.ViewModels.Register in '..\..\..\src\januacore\ViewModels\Janua.ViewModels.Register.pas',
  Janua.Core.AppController in '..\..\..\src\januacore\Janua.Core.AppController.pas',
  Janua.Core.html in '..\..\..\src\januacore\Janua.Core.html.pas',
  ConstantsU in '..\..\..\src\thirdparty\ConstantsU.pas',
  UIDeviceSDK in '..\..\..\src\thirdparty\UIDeviceSDK.pas',
  xPlat.OpenPDF in '..\..\..\src\thirdparty\xPlat.OpenPDF.pas',
  LoggerPro in '..\..\..\..\lib\delphimvcframework\lib\loggerpro\LoggerPro.pas',
  LoggerPro.FileAppender in '..\..\..\..\lib\delphimvcframework\lib\loggerpro\LoggerPro.FileAppender.pas',
  ThreadSafeQueueU in '..\..\..\..\lib\delphimvcframework\lib\loggerpro\ThreadSafeQueueU.pas',
  JOrm.Cms.MainArguments.Intf in '..\..\..\src\januacore\orm\JOrm.Cms.MainArguments.Intf.pas',
  Janua.Virtual.Anagraph in '..\..\..\src\januacore\datamodule\Janua.Virtual.Anagraph.pas',
  Janua.Virtual.Cloud in '..\..\..\src\januacore\datamodule\Janua.Virtual.Cloud.pas',
  Janua.Virtual.Cms in '..\..\..\src\januacore\datamodule\Janua.Virtual.Cms.pas',
  Janua.Virtual.Football in '..\..\..\src\januacore\datamodule\Janua.Virtual.Football.pas',
  udmFootballStorage in '..\..\..\src\januacore\datamodule\udmFootballStorage.pas' {dmFootballStorage: TDataModule},
  udmJanuaCoreStorage in '..\..\..\src\januacore\datamodule\udmJanuaCoreStorage.pas' {dmJanuaCoreStorage: TDataModule},
  udmVirtualAnagraph in '..\..\..\src\januacore\datamodule\udmVirtualAnagraph.pas' {dmVirtualAnagraph: TDataModule},
  udmVirtualCloudServer in '..\..\..\src\januacore\datamodule\udmVirtualCloudServer.pas' {dmVirtualCloudServer: TDataModule},
  udmVirtualCmsServer in '..\..\..\src\januacore\datamodule\udmVirtualCmsServer.pas' {dmVirtualCmsServer: TDataModule},
  udmVirtualFootballServer in '..\..\..\src\januacore\datamodule\udmVirtualFootballServer.pas' {dmVirtualFootballServer: TDataModule},
  udmVirtualFootballStorage in '..\..\..\src\januacore\datamodule\udmVirtualFootballStorage.pas' {dmVirtualFootballStorage: TDataModule},
  udmVirtualServerModel in '..\..\..\src\januacore\datamodule\udmVirtualServerModel.pas' {dmVirtualServerModel: TDataModule},
  udmVirtualSystemServer in '..\..\..\src\januacore\datamodule\udmVirtualSystemServer.pas' {dmVirtualSystemServer: TDataModule},
  udmWpJson in '..\..\..\src\januacore\datamodule\udmWpJson.pas' {dmWpJson: TDataModule},
  udmCmsStorage in '..\..\..\src\januacore\datamodule\udmCmsStorage.pas' {dmCmsStorage: TDataModule},
  Janua.Virtual.Functions in '..\..\..\src\januacore\datamodule\Janua.Virtual.Functions.pas',
  Janua.Virtual.System in '..\..\..\src\januacore\datamodule\Janua.Virtual.System.pas',
  uTestSystem in '..\..\src\Common\uTestSystem.pas',
  Janua.Test.Server.Intf in '..\..\src\Janua.Test.Server.Intf.pas',
  Janua.Test.Server.Impl in '..\..\src\Janua.Test.Server.Impl.pas',
  Janua.Test.ServerVirtual.Impl in '..\..\src\Janua.Test.ServerVirtual.Impl.pas';

var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger: ITestLogger;

begin

{$IFDEF webbroker}
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleCoreClass;
{$ENDIF webbroker}


{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
  exit;
{$ENDIF}
  try
    // Check command line options, will exit if invalid
    TDUnitX.CheckCommandLine;
    // Create the test runner
    runner := TDUnitX.CreateRunner;
    // Tell the runner to use RTTI to find Fixtures
    runner.UseRTTI := True;
    // tell the runner how we will log things
    // Log to the console window
    logger := TDUnitXConsoleLogger.Create(True);
    runner.AddLogger(logger);
    // Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);
    runner.FailsOnNoAsserts := False; // When true, Assertions must be made during tests;

    // Run tests
    results := runner.Execute;
    if not results.AllPassed then
      System.ExitCode := EXIT_ERRORS;

{$IFNDEF CI}
    // We don't want this happening when running under CI.
    if TDUnitX.Options.ExitBehavior = TDUnitXExitBehavior.Pause then
    begin
      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;
    end;
{$ENDIF}
  except
    on E: Exception do
      System.Writeln(E.ClassName, ': ', E.Message);
  end;

end.

// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudGoogleAnalytics.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudgoogleanalyticsHPP
#define Fmx_TmsfnccloudgoogleanalyticsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCCloudOAuth.hpp>
#include <FMX.TMSFNCCloudGoogle.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.JSON.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudgoogleanalytics
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCloudGoogleAnalyticsStringArrayList;
class DELPHICLASS TTMSFNCCloudGoogleAnalyticsData;
class DELPHICLASS TTMSFNCCloudGoogleAnalyticsRequestData;
class DELPHICLASS TTMSFNCCloudGoogleAnalyticsErrorMessages;
class DELPHICLASS TTMSFNCCustomCloudGoogleAnalytics;
class DELPHICLASS TTMSFNCCloudGoogleAnalytics;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsUserMetrics : unsigned char { umUsers, umNewUsers, umPercentNewSessions, umSessionsPerUser };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsSessionMetrics : unsigned char { smSessions, smBounces, smBounceRate, smSessionDuration, smAvgSessionDuration, smHits };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsTrafficMetrics : unsigned char { tmOrganicSearches };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsAdwordsMetrics : unsigned char { amImpressions, amAdClicks, amAdCost, amCPM, amCPC, amCTR, amCostPerTransaction, amCostPerGoalConversion, amCostPerConversion, amRPC, amROAS };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsSocialMetrics : unsigned char { somSocialActivities };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsPageMetrics : unsigned char { pmPageValue, pmEntrances, pmEntranceRate, pmPageviewsPerSession, pmUniquePageviews, pmTimeOnPage, pmAvgTimeOnPage, pmExits, pmExitRate };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsInternalSearchMetrics : unsigned char { ismSearchResultViews, ismSearchUniques, ismAvgSearchResultViews, ismSearchSessions, ismPercentSessionsWithSearch, ismSearchDepth, ismAvgSearchDepth, ismSearchRefinements, ismPercentSearchRefinements, ismSearchDuration, ismAvgSearchDuration, ismSearchExits, ismSearchExitRate, ismSearchGoalConversionRateAll, ismGoalValueAllPerSearch };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsSiteSpeedMetrics : unsigned char { ssmPageLoadTime, ssmPageLoadSample, ssmAvgPageLoadTime, ssmDomainLookupTime, ssmAvgDomainLookupTime, ssmPageDownloadTime, ssmAvgPageDownloadTime, ssmRedirectionTime, ssmAvgRedirectionTime, ssmServerConnectionTime, ssmAvgServerConnectionTime, ssmServerResponseTime, ssmAvgServerResponseTime, ssmSpeedMetricsSample, ssmDomInteractiveTime, ssmAvgDomInteractiveTime, ssmDomContentLoadedTime, ssmAvgDomContentLoadedTime, ssmDomLatencyMetricsSample };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsAppTrackingMetrics : unsigned char { atmScreenviews, atmUniqueScreenviews, atmScreenviewsPerSession, atmTimeOnScreen, atmAvgScreenviewDuration };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsEventTrackingMetrics : unsigned char { etmTotalEvents, etmUniqueEvents, etmEventValue, etmAvgEventValue, etmSessionsWithEvent, etmEventsPerSessionWithEvent };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsECommerceMetrics : unsigned char { cmTransactions, cmTransactionsPerSession, cmTransactionRevenue, cmRevenuePerTransaction, cmTransactionRevenuePerSession, cmTransactionShipping, cmTransactionTax, cmTotalValue, cmItemQuantity, cmUniquePurchases, cmRevenuePerItem, cmItemRevenue, cmItemsPerPurchase, cmLocalTransactionRevenue, cmLocalTransactionShipping, cmLocalTransactionTax, cmLocalItemRevenue, cmBuyToDetailRate, cmCartToDetailRate, cmInternalPromotionCTR, cmInternalPromotionClicks, cmInternalPromotionViews, cmLocalProductRefundAmount, cmLocalRefundAmount, cmProductAddsToCart, cmProductCheckouts, cmProductDetailViews, cmProductListCTR, cmProductListClicks, cmProductListViews, cmProductRefundAmount, 
	cmProductRefunds, cmProductRemovesFromCart, cmProductRevenuePerPurchase, cmQuantityAddedToCart, cmQuantityCheckedOut, cmQuantityRefunded, cmQuantityRemovedFromCart, cmRefundAmount, cmRevenuePerUser, cmTotalRefunds, cmTransactionsPerUser };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsSocialInteractionsMetrics : unsigned char { cimSocialInteractions, cimUniqueSocialInteractions, cimSocialInteractionsPerSession };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsUserTimingsMetrics : unsigned char { utmUserTimingValue, utmUserTimingSample, utmAvgUserTimingValue };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsExceptionsMetrics : unsigned char { emExceptions, emExceptionsPerScreenview, emFatalExceptions, emFatalExceptionsPerScreenview };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsDoubleClickCampaignManagerMetrics : unsigned char { dcmFloodlightQuantity, dcmFloodlightRevenue, dcmCPC, dcmCTR, dcmClicks, dcmCost, dcmImpressions, dcmROAS, dcmRPC };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsAdExchangeMetrics : unsigned char { adxmmImpressions, adxmmCoverage, adxmmMonetizedPageviews, adxmmImpressionsPerSession, adxmViewableImpressionsPercent, adxmClicks, adxmCTR, adxmRevenue, adxmRevenuePer1000Sessions, adxmECPM };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRelatedProductsMetrics : unsigned char { rpmcorrelationScore, rpmqueryProductQuantity, rpmrelatedProductQuantity };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRealtimeMetrics : unsigned char { rtActiveUsers };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsUserDimension : unsigned char { udUserType, udSessionCount, udDaysSinceLastSession, udUserDefinedValue };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsSessionDimension : unsigned char { sdSessionDurationBucket };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsTrafficDimension : unsigned char { tdReferralPath, tdFullReferrer, tdCampaign, tdSource, tdMedium, tdSourceMedium, tdKeyword, tdAdContent, tdSocialNetwork, tdHasSocialSourceReferral, tdCampaignCode };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsAdwordsDimension : unsigned char { awdAdGroup, awdAdSlot, awdAdDistributionNetwork, awdAdMatchType, awdAdKeywordMatchType, awdAdMatchedQuery, awdAdPlacementDomain, awdAdPlacementUrl, awdAdFormat, awdAdTargetingType, awdAdTargetingOption, awdAdDisplayUrl, awdAdDestinationUrl, awdAdwordsCustomerID, awdAdwordsCampaignID, awdAdwordsAdGroupID, awdAdwordsCreativeID, awdAdwordsCriteriaID, awdAdQueryWordCount, awdIsTrueViewVideoAd };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsGoalConversionsDimension : unsigned char { gcdGoalCompletionLocation, gcdGoalPreviousStep1, gcdGoalPreviousStep2, gcdGoalPreviousStep3 };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsPlatformOrDeviceDimension : unsigned char { pdBrowser, pdBrowserVersion, pdOperatingSystem, pdOperatingSystemVersion, pdMobileDeviceBranding, pdMobileDeviceModel, pdMobileInputSelector, pdMobileDeviceInfo, pdMobileDeviceMarketingName, pdDeviceCategory, pdDataSource };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsGeoNetworkDimension : unsigned char { gndContinent, gndSubContinent, gndCountry, gndRegion, gndMetro, gndCity, gndLatitude, gndLongitude, gndNetworkDomain, gndNetworkLocation, gndCityId, gndCountryIsoCode, gndRegionId, gndRegionIsoCode, gndSubContinentCode };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsSystemDimension : unsigned char { sdFlashVersion, sdJavaEnabled, sdLanguage, sdScreenColors, sdSourcePropertyDisplayName, sdSourcePropertyTrackingId, sdScreenResolution };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsSocialActivitiesDimension : unsigned char { sadSocialActivityEndorsingUrl, sadSocialActivityDisplayName, sadSocialActivityPost, sadSocialActivityTimestamp, sadSocialActivityUserHandle, sadSocialActivityUserPhotoUrl, sadSocialActivityUserProfileUrl, sadSocialActivityContentUrl, sadSocialActivityTagsSummary, sadSocialActivityAction, sadSocialActivityNetworkAction };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsPageTrackingDimension : unsigned char { ptdHostname, ptdPagePath, ptdPagePathLevel1, ptdPagePathLevel2, ptdPagePathLevel3, ptdPagePathLevel4, ptdPageTitle, ptdLandingPagePath, ptdSecondPagePath, ptdExitPagePath, ptdPreviousPagePath, ptdPageDepth };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsInternalSearchDimension : unsigned char { isdSearchUsed, isdSearchKeyword, isdSearchKeywordRefinement, isdSearchCategory, isdSearchStartPage, isdSearchDestinationPage, isdSearchAfterDestinationPage };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsAppTrackingDimension : unsigned char { atdAppInstallerId, atdAppVersion, atdAppName, atdAppId, atdScreenName, atdSscreenDepth, atLlandingScreenName, atdExitScreenName };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsEventTrackingDimension : unsigned char { etdEventCategory, etdEventAction, etdEventLabel };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsEcommerceDimension : unsigned char { edTransactionId, edAffiliation, edSessionsToTransaction, edDaysToTransaction, edProductSku, edProductName, edProductCategory, edCurrencyCode, edCheckoutOptions, edInternalPromotionCreative, edInternalPromotionId, edInternalPromotionName, edInternalPromotionPosition, edOrderCouponCode, edProductBrand, edProductCategoryHierarchy, edProductCouponCode, edProductListName, edProductListPosition, edProductVariant, edShoppingStage };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsSocialInteractionDimension : unsigned char { siSocialInteractionNetwork, siSocialInteractionAction, siSocialInteractionNetworkAction, siSocialInteractionTarget, siSocialEngagementType };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsUserTimingsDimension : unsigned char { utdUserTimingCategory, utdUserTimingLabel, utdUserTimingVariable };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsExeptionDimension : unsigned char { xdExceptionDescription };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsContentExperimentsDimension : unsigned char { cedExperimentId, cedExperimentVariant };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsTimeDimension : unsigned char { tdDate, tdYear, tdMonth, tdWeek, tdDay, tdHour, tdMinute, tdNthMonth, tdNthWeek, tdNthDay, tdNthMinute, tdDayOfWeek, tdDayOfWeekName, tdDateHour, tdYearMonth, tdYearWeek, tdIsoWeek, tdIsoYear, tdIsoYearIsoWeek, tdNthHour };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsDoubleClickCampaignManagerDimension : unsigned char { tddcmClickAd, tddcmClickAdId, tddcmClickAdType, tddcmClickAdTypeId, tddcmClickAdvertiser, tddcmClickAdvertiserId, tddcmClickCampaign, tddcmClickCampaignId, tddcmClickCreativeId, tddcmClickCreative, tddcmClickRenderingId, tddcmClickCreativeType, tddcmClickCreativeTypeId, tddcmClickCreativeVersion, tddcmClickSite, tddcmClickSiteId, tddcmClickSitePlacement, tddcmClickSitePlacementId, tddcmClickSpotId, tddcmFloodlightActivity, tddcmFloodlightActivityAndGroup, tddcmFloodlightActivityGroup, tddcmFloodlightActivityGroupId, tddcmFloodlightActivityId, tddcmFloodlightAdvertiserId, tddcmFloodlightSpotId, tddcmLastEventAd, tddcmLastEventAdId, tddcmLastEventAdType, 
	tddcmLastEventAdTypeId, tddcmLastEventAdvertiser, tddcmLastEventAdvertiserId, tddcmLastEventAttributionType, tddcmLastEventCampaign, tddcmLastEventCampaignId, tddcmLastEventCreativeId, tddcmLastEventCreative, tddcmLastEventRenderingId, tddcmLastEventCreativeType, tddcmLastEventCreativeTypeId, tddcmLastEventCreativeVersion, tddcmLastEventSite, tddcmLastEventSiteId, tddcmLastEventSitePlacement, tddcmLastEventSitePlacementId, tddcmLastEventSpotId };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsAudienceDimension : unsigned char { adUserAgeBracket, adUserGender, adInterestOtherCategory, adInterestAffinityCategory, adInterestInMarketCategory };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsChannelGroupingDimension : unsigned char { cgdChannelGrouping };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRelatedProductsDimension : unsigned char { rpdCorrelationModelId, rpdQueryProductId, rpdQueryProductName, rpdQueryProductVariation, rpdRelatedProductId, rpdRelatedProductName, rpdRelatedProductVariation };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRealtimeUserDimension : unsigned char { rudUserType, rudActiveUsers };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRealtimeTimeDimension : unsigned char { rttdMinutesAgo };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRealtimeTrafficSourcesDimension : unsigned char { rttsdReferralPath, rttsdCampain, rttsdSource, rttsdMedium, rttsdTrafficType, rttsdKeyword };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRealtimeGoalConversionsDimension : unsigned char { rtgcdGoalId, rtgcdGoalValueAll, rtgcdGoalCompletionsAll };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRealtimePlatformDeviceDimension : unsigned char { rtpddBrowser, rtpddBrowserVersion, rtpddOperatingSystem, rtpddOperatingSystemVersion, rtpddDeviceCategory, rtpddMobileDeviceBranding, rtpddMobileDeviceModel };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRealtimeGeoDimension : unsigned char { rtgdCountry, rtgdRegion, rtgdCity, rtgdLatitude, rtgdLongitude };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRealtimePageTrackingDimension : unsigned char { rtptdPagePath, rtptdPageTitle, rtptdPageviews };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRealtimeAppTrackingDimension : unsigned char { rteatdAppName, rteatdAppVersion, rteatdScreenName, rteatdScreenViews };

enum DECLSPEC_DENUM TTMSFNCCloudGoogleAnalyticsRealtimeEventTrackingDimension : unsigned char { rtetdEventAction, rtetdEventCategory, rtetdEventLabel, rtetdTotalEvents };

typedef System::DynamicArray<System::UnicodeString> TTMSFNCCloudGoogleAnalyticsStringArray;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleAnalyticsStringArrayList : public System::Generics::Collections::TList__1<TTMSFNCCloudGoogleAnalyticsStringArray>
{
	typedef System::Generics::Collections::TList__1<TTMSFNCCloudGoogleAnalyticsStringArray> inherited;
	
public:
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudGoogleAnalytics_TTMSFNCCloudGoogleAnalyticsStringArray>.Create */ inline __fastcall TTMSFNCCloudGoogleAnalyticsStringArrayList()/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudGoogleAnalyticsStringArray>() { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudGoogleAnalytics_TTMSFNCCloudGoogleAnalyticsStringArray>.Create */ inline __fastcall TTMSFNCCloudGoogleAnalyticsStringArrayList(const System::DelphiInterface<System::Generics::Defaults::IComparer__1<TTMSFNCCloudGoogleAnalyticsStringArray> > AComparer)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudGoogleAnalyticsStringArray>(AComparer) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudGoogleAnalytics_TTMSFNCCloudGoogleAnalyticsStringArray>.Create */ inline __fastcall TTMSFNCCloudGoogleAnalyticsStringArrayList(System::Generics::Collections::TEnumerable__1<TTMSFNCCloudGoogleAnalyticsStringArray>* const Collection)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudGoogleAnalyticsStringArray>(Collection) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudGoogleAnalytics_TTMSFNCCloudGoogleAnalyticsStringArray>.Create */ inline __fastcall TTMSFNCCloudGoogleAnalyticsStringArrayList(const TTMSFNCCloudGoogleAnalyticsStringArray *Values, const int Values_High)/* overload */ : System::Generics::Collections::TList__1<TTMSFNCCloudGoogleAnalyticsStringArray>(Values, Values_High) { }
	/* {System_Generics_Collections}TList<FMX_TMSFNCCloudGoogleAnalytics_TTMSFNCCloudGoogleAnalyticsStringArray>.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleAnalyticsStringArrayList() { }
	
};

#pragma pack(pop)

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsUserMetrics> TTMSFNCCloudGoogleAnalyticsUserMetricArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsSessionMetrics> TTMSFNCCloudGoogleAnalyticsSessionMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsTrafficMetrics> TTMSFNCCloudGoogleAnalyticsTrafficMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsAdwordsMetrics> TTMSFNCCloudGoogleAnalyticsAdwordsMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsSocialMetrics> TTMSFNCCloudGoogleAnalyticsSocialMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsPageMetrics> TTMSFNCCloudGoogleAnalyticsPageMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsInternalSearchMetrics> TTMSFNCCloudGoogleAnalyticsInternalSearchMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsSiteSpeedMetrics> TTMSFNCCloudGoogleAnalyticsSiteSpeedMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsAppTrackingMetrics> TTMSFNCCloudGoogleAnalyticsAppTrackingMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsEventTrackingMetrics> TTMSFNCCloudGoogleAnalyticsEventTrackingMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsECommerceMetrics> TTMSFNCCloudGoogleAnalyticsECommerceMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsSocialInteractionsMetrics> TTMSFNCCloudGoogleAnalyticsSocialInteractionsMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsUserTimingsMetrics> TTMSFNCCloudGoogleAnalyticsUserTimingsMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsExceptionsMetrics> TTMSFNCCloudGoogleAnalyticsExceptionsMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsDoubleClickCampaignManagerMetrics> TTMSFNCCloudGoogleAnalyticsDoubleClickCampaignManagerMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsAdExchangeMetrics> TTMSFNCCloudGoogleAnalyticsAdExchangeMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRelatedProductsMetrics> TTMSFNCCloudGoogleAnalyticsRelatedProductsMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRealtimeMetrics> TTMSFNCCloudGoogleAnalyticsRealtimeMetricsArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsUserDimension> TTMSFNCCloudGoogleAnalyticsUserDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsSessionDimension> TTMSFNCCloudGoogleAnalyticsSessionDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsTrafficDimension> TTMSFNCCloudGoogleAnalyticsTrafficDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsAdwordsDimension> TTMSFNCCloudGoogleAnalyticsAdwordsDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsSocialActivitiesDimension> TTMSFNCCloudGoogleAnalyticsSocialActivitiesDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsPlatformOrDeviceDimension> TTMSFNCCloudGoogleAnalyticsPlatformOrDeviceDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsSystemDimension> TTMSFNCCloudGoogleAnalyticsSystemDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsChannelGroupingDimension> TTMSFNCCloudGoogleAnalyticsChannelGroupingDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsContentExperimentsDimension> TTMSFNCCloudGoogleAnalyticsContentExperimentationDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsAudienceDimension> TTMSFNCCloudGoogleAnalyticsAudienceDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsGeoNetworkDimension> TTMSFNCCloudGoogleAnalyticsGeoDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsTimeDimension> TTMSFNCCloudGoogleAnalyticsTimeDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsPageTrackingDimension> TTMSFNCCloudGoogleAnalyticsPageDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsInternalSearchDimension> TTMSFNCCloudGoogleAnalyticsInternalSearchDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsAppTrackingDimension> TTMSFNCCloudGoogleAnalyticsAppTrackingDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsEventTrackingDimension> TTMSFNCCloudGoogleAnalyticsEventTrackingDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsEcommerceDimension> TTMSFNCCloudGoogleAnalyticsECommerceDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsSocialInteractionDimension> TTMSFNCCloudGoogleAnalyticsSocialInteractionsDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsUserTimingsDimension> TTMSFNCCloudGoogleAnalyticsUserTimingsDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsDoubleClickCampaignManagerDimension> TTMSFNCCloudGoogleAnalyticsDoubleClickCampaignManagerDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRelatedProductsDimension> TTMSFNCCloudGoogleAnalyticsRelatedProductsDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRealtimeUserDimension> TTMSFNCCloudGoogleAnalyticsRealtimeUserDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRealtimeTimeDimension> TTMSFNCCloudGoogleAnalyticsRealtimeTimeDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRealtimeTrafficSourcesDimension> TTMSFNCCloudGoogleAnalyticsRealtimeTrafficSourcesDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRealtimeAppTrackingDimension> TTMSFNCCloudGoogleAnalyticsRealtimeAppTrackingDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRealtimePageTrackingDimension> TTMSFNCCloudGoogleAnalyticsRealtimePageTrackingDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRealtimeGeoDimension> TTMSFNCCloudGoogleAnalyticsRealtimeGeoDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRealtimePlatformDeviceDimension> TTMSFNCCloudGoogleAnalyticsRealtimePlatformDeviceDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRealtimeGoalConversionsDimension> TTMSFNCCloudGoogleAnalyticsRealtimeGoalConversionsDimensionArray;

typedef System::DynamicArray<TTMSFNCCloudGoogleAnalyticsRealtimeEventTrackingDimension> TTMSFNCCloudGoogleAnalyticsRealtimeEventTrackingDimensionArray;

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleAnalyticsData : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FSessions;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FTraffic;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FUser;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FAdwords;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FGoalConversions;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FPlatformOrDevice;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FGeoLocation;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FSystem;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FSocialActivities;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FPageTracking;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FContentGrouping;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FInternalSearch;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FSiteSpeed;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FAppTracking;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FEventTracking;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FECommerce;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FSocialInteractions;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FUserTimings;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FExceptions;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FContentExperiments;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FTime;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FDoubleClickCampaignManager;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FAudience;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FAdExchange;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FChannelGrouping;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FRelatedProducts;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FRealtimeUser;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FRealtimeTrafficSources;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FRealtimeGeo;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FRealtimeGoalConversions;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FRealtimeEventTracking;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FRealtimePlatform;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FRealtimeAppTracking;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FRealtimeTime;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FRealtimePageTracking;
	TTMSFNCCloudGoogleAnalyticsStringArrayList* FData;
	
public:
	__fastcall TTMSFNCCloudGoogleAnalyticsData();
	__fastcall virtual ~TTMSFNCCloudGoogleAnalyticsData();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	void __fastcall ClearData();
	
__published:
	__property TTMSFNCCloudGoogleAnalyticsStringArrayList* Data = {read=FData, write=FData};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleAnalyticsRequestData : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCCloudGoogleAnalyticsDoubleClickCampaignManagerDimensionArray FDoubleClickCampaignManagerDimension;
	TTMSFNCCloudGoogleAnalyticsUserDimensionArray FUserDimension;
	TTMSFNCCloudGoogleAnalyticsPageDimensionArray FPageDimension;
	TTMSFNCCloudGoogleAnalyticsDoubleClickCampaignManagerMetricsArray FDoubleClickCampaignManagerMetrics;
	TTMSFNCCloudGoogleAnalyticsTrafficDimensionArray FTrafficDimension;
	TTMSFNCCloudGoogleAnalyticsUserMetricArray FUserMetrics;
	TTMSFNCCloudGoogleAnalyticsSessionDimensionArray FSessionDimension;
	TTMSFNCCloudGoogleAnalyticsPageMetricsArray FPageMetrics;
	TTMSFNCCloudGoogleAnalyticsECommerceDimensionArray FECommerceDimension;
	TTMSFNCCloudGoogleAnalyticsTrafficMetricsArray FTrafficMetrics;
	TTMSFNCCloudGoogleAnalyticsSiteSpeedMetricsArray FSiteSpeedMetrics;
	TTMSFNCCloudGoogleAnalyticsSessionMetricsArray FSessionMetrics;
	TTMSFNCCloudGoogleAnalyticsECommerceMetricsArray FECommerceMetrics;
	TTMSFNCCloudGoogleAnalyticsRelatedProductsDimensionArray FRelatedProductsDimension;
	TTMSFNCCloudGoogleAnalyticsUserTimingsDimensionArray FUserTimingsDimension;
	TTMSFNCCloudGoogleAnalyticsInternalSearchDimensionArray FInternalSearchDimension;
	TTMSFNCCloudGoogleAnalyticsAdExchangeMetricsArray FAdExchangeMetrics;
	TTMSFNCCloudGoogleAnalyticsRelatedProductsMetricsArray FRelatedProductsMetrics;
	TTMSFNCCloudGoogleAnalyticsSocialInteractionsDimensionArray FSocialInteractionsDimension;
	TTMSFNCCloudGoogleAnalyticsUserTimingsMetricsArray FUserTimingsMetrics;
	TTMSFNCCloudGoogleAnalyticsInternalSearchMetricsArray FInternalSearchMetrics;
	TTMSFNCCloudGoogleAnalyticsEventTrackingDimensionArray FEventTrackingDimension;
	TTMSFNCCloudGoogleAnalyticsAppTrackingDimensionArray FAppTrackingDimension;
	TTMSFNCCloudGoogleAnalyticsExceptionsMetricsArray FExceptionsMetrics;
	TTMSFNCCloudGoogleAnalyticsSocialInteractionsMetricsArray FSocialInteractionsMetrics;
	TTMSFNCCloudGoogleAnalyticsEventTrackingMetricsArray FEventTrackingMetrics;
	TTMSFNCCloudGoogleAnalyticsAppTrackingMetricsArray FAppTrackingMetrics;
	TTMSFNCCloudGoogleAnalyticsAdwordsDimensionArray FAdwordsDimension;
	TTMSFNCCloudGoogleAnalyticsSocialActivitiesDimensionArray FSocialDimension;
	TTMSFNCCloudGoogleAnalyticsAdwordsMetricsArray FAdwordsMetrics;
	TTMSFNCCloudGoogleAnalyticsSocialMetricsArray FSocialMetrics;
	TTMSFNCCloudGoogleAnalyticsRealtimeMetricsArray FRealtimeMetrics;
	TTMSFNCCloudGoogleAnalyticsRealtimeUserDimensionArray FRealtimeUserDimension;
	TTMSFNCCloudGoogleAnalyticsRealtimeTimeDimensionArray FRealtimeTimeDimension;
	TTMSFNCCloudGoogleAnalyticsRealtimeTrafficSourcesDimensionArray FRealtimeTrafficSourcesDimension;
	TTMSFNCCloudGoogleAnalyticsRealtimeAppTrackingDimensionArray FRealtimeAppTrackingDimension;
	TTMSFNCCloudGoogleAnalyticsRealtimePageTrackingDimensionArray FRealtimePageTrackingDimension;
	TTMSFNCCloudGoogleAnalyticsRealtimeGeoDimensionArray FRealtimeGeoDimension;
	TTMSFNCCloudGoogleAnalyticsRealtimePlatformDeviceDimensionArray FRealtimePlatformDeviceDimension;
	TTMSFNCCloudGoogleAnalyticsRealtimeGoalConversionsDimensionArray FRealtimeGoalConversionsDimension;
	TTMSFNCCloudGoogleAnalyticsRealtimeEventTrackingDimensionArray FRealtimeEventTrackingDimension;
	TTMSFNCCloudGoogleAnalyticsPlatformOrDeviceDimensionArray FPlatformOrDeviceDimension;
	TTMSFNCCloudGoogleAnalyticsSystemDimensionArray FSystemDimension;
	TTMSFNCCloudGoogleAnalyticsChannelGroupingDimensionArray FChannelGroupingDimension;
	TTMSFNCCloudGoogleAnalyticsContentExperimentationDimensionArray FContentExperimentationDimension;
	TTMSFNCCloudGoogleAnalyticsAudienceDimensionArray FAudienceDimension;
	TTMSFNCCloudGoogleAnalyticsGeoDimensionArray FGeoDimension;
	TTMSFNCCloudGoogleAnalyticsTimeDimensionArray FTimeDimension;
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property TTMSFNCCloudGoogleAnalyticsUserMetricArray UserMetrics = {read=FUserMetrics, write=FUserMetrics};
	__property TTMSFNCCloudGoogleAnalyticsSessionMetricsArray SessionMetrics = {read=FSessionMetrics, write=FSessionMetrics};
	__property TTMSFNCCloudGoogleAnalyticsTrafficMetricsArray TrafficMetrics = {read=FTrafficMetrics, write=FTrafficMetrics};
	__property TTMSFNCCloudGoogleAnalyticsAdwordsMetricsArray AdwordsMetrics = {read=FAdwordsMetrics, write=FAdwordsMetrics};
	__property TTMSFNCCloudGoogleAnalyticsSocialMetricsArray SocialMetrics = {read=FSocialMetrics, write=FSocialMetrics};
	__property TTMSFNCCloudGoogleAnalyticsPageMetricsArray PageMetrics = {read=FPageMetrics, write=FPageMetrics};
	__property TTMSFNCCloudGoogleAnalyticsInternalSearchMetricsArray InternalSearchMetrics = {read=FInternalSearchMetrics, write=FInternalSearchMetrics};
	__property TTMSFNCCloudGoogleAnalyticsSiteSpeedMetricsArray SiteSpeedMetrics = {read=FSiteSpeedMetrics, write=FSiteSpeedMetrics};
	__property TTMSFNCCloudGoogleAnalyticsAppTrackingMetricsArray AppTrackingMetrics = {read=FAppTrackingMetrics, write=FAppTrackingMetrics};
	__property TTMSFNCCloudGoogleAnalyticsEventTrackingMetricsArray EventTrackingMetrics = {read=FEventTrackingMetrics, write=FEventTrackingMetrics};
	__property TTMSFNCCloudGoogleAnalyticsECommerceMetricsArray ECommerceMetrics = {read=FECommerceMetrics, write=FECommerceMetrics};
	__property TTMSFNCCloudGoogleAnalyticsSocialInteractionsMetricsArray SocialInteractionsMetrics = {read=FSocialInteractionsMetrics, write=FSocialInteractionsMetrics};
	__property TTMSFNCCloudGoogleAnalyticsUserTimingsMetricsArray UserTimingsMetrics = {read=FUserTimingsMetrics, write=FUserTimingsMetrics};
	__property TTMSFNCCloudGoogleAnalyticsExceptionsMetricsArray ExceptionsMetrics = {read=FExceptionsMetrics, write=FExceptionsMetrics};
	__property TTMSFNCCloudGoogleAnalyticsDoubleClickCampaignManagerMetricsArray DoubleClickCampaignManagerMetrics = {read=FDoubleClickCampaignManagerMetrics, write=FDoubleClickCampaignManagerMetrics};
	__property TTMSFNCCloudGoogleAnalyticsAdExchangeMetricsArray AdExchangeMetrics = {read=FAdExchangeMetrics, write=FAdExchangeMetrics};
	__property TTMSFNCCloudGoogleAnalyticsRelatedProductsMetricsArray RelatedProductsMetrics = {read=FRelatedProductsMetrics, write=FRelatedProductsMetrics};
	__property TTMSFNCCloudGoogleAnalyticsRealtimeMetricsArray RealtimeMetrics = {read=FRealtimeMetrics, write=FRealtimeMetrics};
	__property TTMSFNCCloudGoogleAnalyticsUserDimensionArray UserDimension = {read=FUserDimension, write=FUserDimension};
	__property TTMSFNCCloudGoogleAnalyticsSessionDimensionArray SessionDimension = {read=FSessionDimension, write=FSessionDimension};
	__property TTMSFNCCloudGoogleAnalyticsTrafficDimensionArray TrafficDimension = {read=FTrafficDimension, write=FTrafficDimension};
	__property TTMSFNCCloudGoogleAnalyticsAdwordsDimensionArray AdwordsDimension = {read=FAdwordsDimension, write=FAdwordsDimension};
	__property TTMSFNCCloudGoogleAnalyticsSystemDimensionArray SystemDimension = {read=FSystemDimension, write=FSystemDimension};
	__property TTMSFNCCloudGoogleAnalyticsPlatformOrDeviceDimensionArray PlatformOrDeviceDimension = {read=FPlatformOrDeviceDimension, write=FPlatformOrDeviceDimension};
	__property TTMSFNCCloudGoogleAnalyticsGeoDimensionArray GeoDimension = {read=FGeoDimension, write=FGeoDimension};
	__property TTMSFNCCloudGoogleAnalyticsContentExperimentationDimensionArray ContentExperimentationDimension = {read=FContentExperimentationDimension, write=FContentExperimentationDimension};
	__property TTMSFNCCloudGoogleAnalyticsTimeDimensionArray TimeDimension = {read=FTimeDimension, write=FTimeDimension};
	__property TTMSFNCCloudGoogleAnalyticsAudienceDimensionArray AudienceDimension = {read=FAudienceDimension, write=FAudienceDimension};
	__property TTMSFNCCloudGoogleAnalyticsChannelGroupingDimensionArray ChannelGroupingDimension = {read=FChannelGroupingDimension, write=FChannelGroupingDimension};
	__property TTMSFNCCloudGoogleAnalyticsSocialActivitiesDimensionArray SocialDimension = {read=FSocialDimension, write=FSocialDimension};
	__property TTMSFNCCloudGoogleAnalyticsPageDimensionArray PageDimension = {read=FPageDimension, write=FPageDimension};
	__property TTMSFNCCloudGoogleAnalyticsInternalSearchDimensionArray InternalSearchDimension = {read=FInternalSearchDimension, write=FInternalSearchDimension};
	__property TTMSFNCCloudGoogleAnalyticsAppTrackingDimensionArray AppTrackingDimension = {read=FAppTrackingDimension, write=FAppTrackingDimension};
	__property TTMSFNCCloudGoogleAnalyticsEventTrackingDimensionArray EventTrackingDimension = {read=FEventTrackingDimension, write=FEventTrackingDimension};
	__property TTMSFNCCloudGoogleAnalyticsECommerceDimensionArray ECommerceDimension = {read=FECommerceDimension, write=FECommerceDimension};
	__property TTMSFNCCloudGoogleAnalyticsSocialInteractionsDimensionArray SocialInteractionsDimension = {read=FSocialInteractionsDimension, write=FSocialInteractionsDimension};
	__property TTMSFNCCloudGoogleAnalyticsUserTimingsDimensionArray UserTimingsDimension = {read=FUserTimingsDimension, write=FUserTimingsDimension};
	__property TTMSFNCCloudGoogleAnalyticsDoubleClickCampaignManagerDimensionArray DoubleClickCampaignManagerDimension = {read=FDoubleClickCampaignManagerDimension, write=FDoubleClickCampaignManagerDimension};
	__property TTMSFNCCloudGoogleAnalyticsRelatedProductsDimensionArray RelatedProductsDimension = {read=FRelatedProductsDimension, write=FRelatedProductsDimension};
	__property TTMSFNCCloudGoogleAnalyticsRealtimeUserDimensionArray RealtimeUserDimension = {read=FRealtimeUserDimension, write=FRealtimeUserDimension};
	__property TTMSFNCCloudGoogleAnalyticsRealtimeTimeDimensionArray RealtimeTimeDimension = {read=FRealtimeTimeDimension, write=FRealtimeTimeDimension};
	__property TTMSFNCCloudGoogleAnalyticsRealtimeTrafficSourcesDimensionArray RealtimeTrafficSourcesDimension = {read=FRealtimeTrafficSourcesDimension, write=FRealtimeTrafficSourcesDimension};
	__property TTMSFNCCloudGoogleAnalyticsRealtimeGoalConversionsDimensionArray RealtimeGoalConversionsDimension = {read=FRealtimeGoalConversionsDimension, write=FRealtimeGoalConversionsDimension};
	__property TTMSFNCCloudGoogleAnalyticsRealtimePlatformDeviceDimensionArray RealtimePlatformDeviceDimension = {read=FRealtimePlatformDeviceDimension, write=FRealtimePlatformDeviceDimension};
	__property TTMSFNCCloudGoogleAnalyticsRealtimeGeoDimensionArray RealtimeGeoDimension = {read=FRealtimeGeoDimension, write=FRealtimeGeoDimension};
	__property TTMSFNCCloudGoogleAnalyticsRealtimePageTrackingDimensionArray RealtimePageTrackingDimension = {read=FRealtimePageTrackingDimension, write=FRealtimePageTrackingDimension};
	__property TTMSFNCCloudGoogleAnalyticsRealtimeAppTrackingDimensionArray RealtimeAppTrackingDimension = {read=FRealtimeAppTrackingDimension, write=FRealtimeAppTrackingDimension};
	__property TTMSFNCCloudGoogleAnalyticsRealtimeEventTrackingDimensionArray RealtimeEventTrackingDimension = {read=FRealtimeEventTrackingDimension, write=FRealtimeEventTrackingDimension};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleAnalyticsRequestData() { }
	
public:
	/* TObject.Create */ inline __fastcall TTMSFNCCloudGoogleAnalyticsRequestData() : System::Classes::TPersistent() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleAnalyticsErrorMessages : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	System::UnicodeString FMetricCountMessage;
	System::UnicodeString FDimensionCountMessage;
	
public:
	__fastcall TTMSFNCCloudGoogleAnalyticsErrorMessages();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	
__published:
	__property System::UnicodeString MetricCountMessage = {read=FMetricCountMessage, write=FMetricCountMessage};
	__property System::UnicodeString DimensionCountMessage = {read=FDimensionCountMessage, write=FDimensionCountMessage};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleAnalyticsErrorMessages() { }
	
};

#pragma pack(pop)

typedef void __fastcall (__closure *TTMSFNCCloudGoogleAnalyticsRetrieveDataEvent)(System::TObject* Sender, Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);

typedef void __fastcall (__closure *TTMSFNCCloudGoogleAnalyticsRetrieveDataErrorEvent)(System::TObject* Sender, const System::UnicodeString AError);

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudGoogleAnalytics : public Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle
{
	typedef Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle inherited;
	
private:
	System::UnicodeString FMetrics;
	int FMetricCount;
	System::UnicodeString FDimensions;
	int FDimensionCount;
	System::UnicodeString FError;
	TTMSFNCCloudGoogleAnalyticsData* FData;
	System::Classes::TStringList* FDoubleClickCampaignManagerMetrics;
	System::Classes::TStringList* FUserMetrics;
	System::Classes::TStringList* FPageMetrics;
	System::Classes::TStringList* FTrafficMetrics;
	System::Classes::TStringList* FSiteSpeedMetrics;
	System::Classes::TStringList* FSessionMetrics;
	System::Classes::TStringList* FECommerceMetrics;
	System::Classes::TStringList* FAdExchangeMetrics;
	System::Classes::TStringList* FRelatedProductsMetrics;
	System::Classes::TStringList* FUserTimingsMetrics;
	System::Classes::TStringList* FInternalSearchMetrics;
	System::Classes::TStringList* FExceptionsMetrics;
	System::Classes::TStringList* FSocialInteractionsMetrics;
	System::Classes::TStringList* FEventTrackingMetrics;
	System::Classes::TStringList* FAppTrackingMetrics;
	System::Classes::TStringList* FAdwordsMetrics;
	System::Classes::TStringList* FSocialMetrics;
	System::Classes::TStringList* FDoubleClickCampaignManagerDimension;
	System::Classes::TStringList* FPlatformOrDeviceDimension;
	System::Classes::TStringList* FChannelGroupingDimension;
	System::Classes::TStringList* FUserDimension;
	System::Classes::TStringList* FAudienceDimension;
	System::Classes::TStringList* FTrafficDimension;
	System::Classes::TStringList* FSessionDimension;
	System::Classes::TStringList* FEcommerceDimension;
	System::Classes::TStringList* FGeoNetworkDimension;
	System::Classes::TStringList* FContentExperimentsDimension;
	System::Classes::TStringList* FGoalConversionsDimension;
	System::Classes::TStringList* FRelatedProductsDimension;
	System::Classes::TStringList* FSocialActivitiesDimension;
	System::Classes::TStringList* FUserTimingsDimension;
	System::Classes::TStringList* FInternalSearchDimension;
	System::Classes::TStringList* FExeptionDimension;
	System::Classes::TStringList* FEventTrackingDimension;
	System::Classes::TStringList* FTimeDimension;
	System::Classes::TStringList* FAppTrackingDimension;
	System::Classes::TStringList* FSystemDimension;
	System::Classes::TStringList* FAdwordsDimension;
	System::Classes::TStringList* FSocialInteractionDimension;
	System::Classes::TStringList* FPageTrackingDimension;
	TTMSFNCCloudGoogleAnalyticsRequestData* FRequestData;
	TTMSFNCCloudGoogleAnalyticsErrorMessages* FErrorMessages;
	System::Classes::TStringList* FRealtimeUserDimension;
	System::Classes::TStringList* FRealtimeAppTrackingDimension;
	System::Classes::TStringList* FRealtimeTimeDimension;
	System::Classes::TStringList* FRealtimePageTrackingDimension;
	System::Classes::TStringList* FRealtimeTrafficSourcesDimension;
	System::Classes::TStringList* FRealtimeGeoDimension;
	System::Classes::TStringList* FRealtimePlatformDeviceDimension;
	System::Classes::TStringList* FRealtimeGoalConversionsDimension;
	System::Classes::TStringList* FRealtimeEventTrackingDimension;
	System::Classes::TStringList* FRealtimeMetrics;
	System::Classes::TStringList* FGeoDimension;
	System::Classes::TStringList* FContentExperimentationDimension;
	System::Classes::TStringList* FSocialDimension;
	System::Classes::TStringList* FPageDimension;
	System::UnicodeString FViewID;
	TTMSFNCCloudGoogleAnalyticsRetrieveDataEvent FOnRetrieveData;
	TTMSFNCCloudGoogleAnalyticsRetrieveDataErrorEvent FOnRetrieveDataError;
	void __fastcall GetDimensions();
	void __fastcall GetMetrics();
	
protected:
	void __fastcall FillMetrics();
	void __fastcall FillDimensions();
	void __fastcall DoRetrieveData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	void __fastcall DoRetrieveDataError(const System::UnicodeString AError);
	void __fastcall ParseJSONResult(System::UnicodeString AJSONStr, int ADimLength, int AMetrLength, TTMSFNCCloudGoogleAnalyticsStringArrayList* AList);
	void __fastcall DoRequestRetrieveData(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	System::UnicodeString __fastcall GetJSONError(System::UnicodeString AResStr);
	virtual System::UnicodeString __fastcall GetVersion();
	__property TTMSFNCCloudGoogleAnalyticsRetrieveDataEvent OnRetrieveData = {read=FOnRetrieveData, write=FOnRetrieveData};
	__property TTMSFNCCloudGoogleAnalyticsRetrieveDataErrorEvent OnRetrieveDataError = {read=FOnRetrieveDataError, write=FOnRetrieveDataError};
	__property TTMSFNCCloudGoogleAnalyticsData* Data = {read=FData, write=FData};
	__property TTMSFNCCloudGoogleAnalyticsRequestData* RequestData = {read=FRequestData, write=FRequestData};
	__property TTMSFNCCloudGoogleAnalyticsErrorMessages* ErrorMessages = {read=FErrorMessages, write=FErrorMessages};
	__property System::UnicodeString ViewID = {read=FViewID, write=FViewID};
	
public:
	__fastcall virtual TTMSFNCCustomCloudGoogleAnalytics(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomCloudGoogleAnalytics();
	void __fastcall RetrieveData(System::UnicodeString AStartDate = u"today", System::UnicodeString AEndDate = u"today", int AMaxResults = 0x3e8);
	__property System::Classes::TStringList* UserMetrics = {read=FUserMetrics};
	__property System::Classes::TStringList* SessionMetrics = {read=FSessionMetrics};
	__property System::Classes::TStringList* TrafficMetrics = {read=FTrafficMetrics};
	__property System::Classes::TStringList* AdwordsMetrics = {read=FAdwordsMetrics};
	__property System::Classes::TStringList* SocialMetrics = {read=FSocialMetrics};
	__property System::Classes::TStringList* PageMetrics = {read=FPageMetrics};
	__property System::Classes::TStringList* InternalSearchMetrics = {read=FInternalSearchMetrics};
	__property System::Classes::TStringList* SiteSpeedMetrics = {read=FSiteSpeedMetrics};
	__property System::Classes::TStringList* AppTrackingMetrics = {read=FAppTrackingMetrics};
	__property System::Classes::TStringList* EventTrackingMetrics = {read=FEventTrackingMetrics};
	__property System::Classes::TStringList* ECommerceMetrics = {read=FECommerceMetrics};
	__property System::Classes::TStringList* SocialInteractionsMetrics = {read=FSocialInteractionsMetrics};
	__property System::Classes::TStringList* UserTimingsMetrics = {read=FUserTimingsMetrics};
	__property System::Classes::TStringList* ExceptionsMetrics = {read=FExceptionsMetrics};
	__property System::Classes::TStringList* DoubleClickCampaignManagerMetrics = {read=FDoubleClickCampaignManagerMetrics};
	__property System::Classes::TStringList* AdExchangeMetrics = {read=FAdExchangeMetrics};
	__property System::Classes::TStringList* RelatedProductsMetrics = {read=FRelatedProductsMetrics};
	__property System::Classes::TStringList* UserDimension = {read=FUserDimension};
	__property System::Classes::TStringList* SessionDimension = {read=FSessionDimension};
	__property System::Classes::TStringList* TrafficDimension = {read=FTrafficDimension};
	__property System::Classes::TStringList* AdwordsDimension = {read=FAdwordsDimension};
	__property System::Classes::TStringList* GoalConversionsDimension = {read=FGoalConversionsDimension};
	__property System::Classes::TStringList* PlatformOrDeviceDimension = {read=FPlatformOrDeviceDimension};
	__property System::Classes::TStringList* GeoNetworkDimension = {read=FGeoNetworkDimension};
	__property System::Classes::TStringList* SystemDimension = {read=FSystemDimension};
	__property System::Classes::TStringList* SocialActivitiesDimension = {read=FSocialActivitiesDimension};
	__property System::Classes::TStringList* PageTrackingDimension = {read=FPageTrackingDimension};
	__property System::Classes::TStringList* InternalSearchDimension = {read=FInternalSearchDimension};
	__property System::Classes::TStringList* AppTrackingDimension = {read=FAppTrackingDimension};
	__property System::Classes::TStringList* EventTrackingDimension = {read=FEventTrackingDimension};
	__property System::Classes::TStringList* EcommerceDimension = {read=FEcommerceDimension};
	__property System::Classes::TStringList* SocialInteractionDimension = {read=FSocialInteractionDimension};
	__property System::Classes::TStringList* UserTimingsDimension = {read=FUserTimingsDimension};
	__property System::Classes::TStringList* ExeptionDimension = {read=FExeptionDimension};
	__property System::Classes::TStringList* ContentExperimentsDimension = {read=FContentExperimentsDimension};
	__property System::Classes::TStringList* TimeDimension = {read=FTimeDimension};
	__property System::Classes::TStringList* DoubleClickCampaignManagerDimension = {read=FDoubleClickCampaignManagerDimension};
	__property System::Classes::TStringList* AudienceDimension = {read=FAudienceDimension};
	__property System::Classes::TStringList* ChannelGroupingDimension = {read=FChannelGroupingDimension};
	__property System::Classes::TStringList* RelatedProductsDimension = {read=FRelatedProductsDimension};
	__property System::Classes::TStringList* GeoDimension = {read=FGeoDimension, write=FGeoDimension};
	__property System::Classes::TStringList* ContentExperimentationDimension = {read=FContentExperimentationDimension, write=FContentExperimentationDimension};
	__property System::Classes::TStringList* SocialDimension = {read=FSocialDimension, write=FSocialDimension};
	__property System::Classes::TStringList* PageDimension = {read=FPageDimension, write=FPageDimension};
	__property System::Classes::TStringList* RealtimeMetrics = {read=FRealtimeMetrics, write=FRealtimeMetrics};
	__property System::Classes::TStringList* RealtimeUserDimension = {read=FRealtimeUserDimension, write=FRealtimeUserDimension};
	__property System::Classes::TStringList* RealtimeTimeDimension = {read=FRealtimeTimeDimension, write=FRealtimeTimeDimension};
	__property System::Classes::TStringList* RealtimeTrafficSourcesDimension = {read=FRealtimeTrafficSourcesDimension, write=FRealtimeTrafficSourcesDimension};
	__property System::Classes::TStringList* RealtimeGoalConversionsDimension = {read=FRealtimeGoalConversionsDimension, write=FRealtimeGoalConversionsDimension};
	__property System::Classes::TStringList* RealtimePlatformDeviceDimension = {read=FRealtimePlatformDeviceDimension, write=FRealtimePlatformDeviceDimension};
	__property System::Classes::TStringList* RealtimeGeoDimension = {read=FRealtimeGeoDimension, write=FRealtimeGeoDimension};
	__property System::Classes::TStringList* RealtimePageTrackingDimension = {read=FRealtimePageTrackingDimension, write=FRealtimePageTrackingDimension};
	__property System::Classes::TStringList* RealtimeAppTrackingDimension = {read=FRealtimeAppTrackingDimension, write=FRealtimeAppTrackingDimension};
	__property System::Classes::TStringList* RealtimeEventTrackingDimension = {read=FRealtimeEventTrackingDimension, write=FRealtimeEventTrackingDimension};
	__property int DimensionCount = {read=FDimensionCount, write=FDimensionCount, nodefault};
	__property int MetricCount = {read=FMetricCount, write=FMetricCount, nodefault};
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCustomCloudGoogleAnalytics()/* overload */ : Fmx::Tmsfnccloudgoogle::TTMSFNCCustomCloudGoogle() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudGoogleAnalytics : public TTMSFNCCustomCloudGoogleAnalytics
{
	typedef TTMSFNCCustomCloudGoogleAnalytics inherited;
	
__published:
	__property Data;
	__property RequestData;
	__property ErrorMessages;
	__property ViewID = {default=0};
	__property OnRetrieveData;
	__property OnRetrieveDataError;
public:
	/* TTMSFNCCustomCloudGoogleAnalytics.Create */ inline __fastcall virtual TTMSFNCCloudGoogleAnalytics(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomCloudGoogleAnalytics(AOwner) { }
	/* TTMSFNCCustomCloudGoogleAnalytics.Destroy */ inline __fastcall virtual ~TTMSFNCCloudGoogleAnalytics() { }
	
public:
	/* TTMSFNCCustomCloudOAuth.Create */ inline __fastcall virtual TTMSFNCCloudGoogleAnalytics()/* overload */ : TTMSFNCCustomCloudGoogleAnalytics() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudgoogleanalytics */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDGOOGLEANALYTICS)
using namespace Fmx::Tmsfnccloudgoogleanalytics;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudgoogleanalyticsHPP

// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCGooglePlaces.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncgoogleplacesHPP
#define Fmx_TmsfncgoogleplacesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <System.JSON.hpp>
#include <FMX.TMSFNCMapsCommonTypes.hpp>
#include <FMX.TMSFNCPlaces.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>
#include <System.Types.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncgoogleplaces
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCGooglePlaces;
//-- type declarations -------------------------------------------------------
class PASCALIMPLEMENTATION TTMSFNCGooglePlaces : public Fmx::Tmsfncplaces::TTMSFNCCustomPlaces
{
	typedef Fmx::Tmsfncplaces::TTMSFNCCustomPlaces inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property PlacesInstance;
	__property PlacesProperties;
	virtual Fmx::Tmsfncplaces::TTMSFNCPlacesRequest* __fastcall SearchByTextSync(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual Fmx::Tmsfncplaces::TTMSFNCPlacesRequest* __fastcall SearchNearbySync(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString AType = System::UnicodeString(), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual Fmx::Tmsfncplaces::TTMSFNCPlacesRequest* __fastcall SearchNearbyNextPageSync(System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall SearchByText(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, Fmx::Tmsfncplaces::_di_TTMSFNCPlacesCallback ACallback = Fmx::Tmsfncplaces::_di_TTMSFNCPlacesCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall SearchNearby(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString AType = System::UnicodeString(), Fmx::Tmsfncplaces::_di_TTMSFNCPlacesCallback ACallback = Fmx::Tmsfncplaces::_di_TTMSFNCPlacesCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall SearchNearbyNextPage(Fmx::Tmsfncplaces::_di_TTMSFNCPlacesCallback ACallback = Fmx::Tmsfncplaces::_di_TTMSFNCPlacesCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall GetPlaceDetail(Fmx::Tmsfncplaces::TTMSFNCPlacesItem* APlace, System::UnicodeString AType = System::UnicodeString(), Fmx::Tmsfncplaces::_di_TTMSFNCPlacesCallback ACallback = Fmx::Tmsfncplaces::_di_TTMSFNCPlacesCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall GetPlaceDetail(System::UnicodeString APlaceID, System::UnicodeString AType = System::UnicodeString(), Fmx::Tmsfncplaces::_di_TTMSFNCPlacesCallback ACallback = Fmx::Tmsfncplaces::_di_TTMSFNCPlacesCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall SearchByTextResult(System::UnicodeString ASearch, const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, Fmx::Tmsfncplaces::_di_TTMSFNCPlacesResultCallback ACallback = Fmx::Tmsfncplaces::_di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall SearchNearbyResult(const Fmx::Tmsfncmapscommontypes::TTMSFNCMapsCoordinateRec &ALocation, System::UnicodeString AType = System::UnicodeString(), Fmx::Tmsfncplaces::_di_TTMSFNCPlacesResultCallback ACallback = Fmx::Tmsfncplaces::_di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall SearchNearbyNextPageResult(Fmx::Tmsfncplaces::_di_TTMSFNCPlacesResultCallback ACallback = Fmx::Tmsfncplaces::_di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0), System::UnicodeString ALocale = System::UnicodeString(), Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode AMode = (Fmx::Tmsfncmapscommontypes::TTMSFNCMapsLocaleMode)(0x0))/* overload */;
	virtual void __fastcall GetPlaceDetailResult(Fmx::Tmsfncplaces::TTMSFNCPlacesItem* APlace, System::UnicodeString AType = System::UnicodeString(), Fmx::Tmsfncplaces::_di_TTMSFNCPlacesResultCallback ACallback = Fmx::Tmsfncplaces::_di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	virtual void __fastcall GetPlaceDetailResult(System::UnicodeString APlaceID, System::UnicodeString AType = System::UnicodeString(), Fmx::Tmsfncplaces::_di_TTMSFNCPlacesResultCallback ACallback = Fmx::Tmsfncplaces::_di_TTMSFNCPlacesResultCallback(), System::UnicodeString AID = System::UnicodeString(), void * ADataPointer = (void *)(0x0))/* overload */;
	
__published:
	__property OnGetAutoComplete;
	__property OnGetAutoCompleteResult;
	__property OnSearchByText;
	__property OnSearchByTextResult;
	__property OnSearchNearby;
	__property OnSearchNearbyResult;
	__property OnGetPlaceDetail;
	__property OnGetPlaceDetailResult;
	__property APIKey = {default=0};
	__property PlacesRequests;
	__property Version = {default=0};
public:
	/* TTMSFNCCustomPlaces.Create */ inline __fastcall virtual TTMSFNCGooglePlaces(System::Classes::TComponent* AOwner)/* overload */ : Fmx::Tmsfncplaces::TTMSFNCCustomPlaces(AOwner) { }
	/* TTMSFNCCustomPlaces.Destroy */ inline __fastcall virtual ~TTMSFNCGooglePlaces() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCGooglePlaces()/* overload */ : Fmx::Tmsfncplaces::TTMSFNCCustomPlaces() { }
	
};


//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncgoogleplaces */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCGOOGLEPLACES)
using namespace Fmx::Tmsfncgoogleplaces;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncgoogleplacesHPP

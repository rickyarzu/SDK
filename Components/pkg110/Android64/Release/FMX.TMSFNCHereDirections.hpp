// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCHereDirections.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncheredirectionsHPP
#define Fmx_TmsfncheredirectionsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <System.Types.hpp>
#include <FMX.Forms.hpp>
#include <System.Generics.Collections.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCMapsCommonTypes.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCDirections.hpp>
#include <FMX.TMSFNCCustomComponent.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncheredirections
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCDirectionsTruckOptions;
class DELPHICLASS TTMSFNCDirectionsOptions;
class DELPHICLASS TTMSFNCCustomHereDirections;
class DELPHICLASS TTMSFNCHereDirections;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TTMSFNCDirectionsRoutingMode : unsigned char { rmFast, rmShort };

enum DECLSPEC_DENUM TTMSFNCDirectionsTunnelCategory : unsigned char { tcNone, tcB, tcC, tcD, tcE };

class PASCALIMPLEMENTATION TTMSFNCDirectionsTruckOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	int FGrossWeight;
	int FWidth;
	int FHeight;
	int FSpeedCap;
	TTMSFNCDirectionsTunnelCategory FTunnelCategory;
	bool FAvoidDifficultTurns;
	bool FHazardousMaterials;
	void __fastcall SetGrossWeight(const int Value);
	void __fastcall SetWidth(const int Value);
	void __fastcall SetHeight(const int Value);
	void __fastcall SetSpeedCap(const int Value);
	void __fastcall SetTunnelCategory(const TTMSFNCDirectionsTunnelCategory Value);
	void __fastcall SetAvoidDifficultTurns(const bool Value);
	void __fastcall SetHazardousMaterials(const bool Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCDirectionsTruckOptions();
	
__published:
	__property int GrossWeight = {read=FGrossWeight, write=SetGrossWeight, default=0};
	__property int Height = {read=FHeight, write=SetHeight, default=0};
	__property int Width = {read=FWidth, write=SetWidth, default=0};
	__property int SpeedCap = {read=FSpeedCap, write=SetSpeedCap, default=0};
	__property TTMSFNCDirectionsTunnelCategory TunnelCategory = {read=FTunnelCategory, write=SetTunnelCategory, default=0};
	__property bool AvoidDifficultTurns = {read=FAvoidDifficultTurns, write=SetAvoidDifficultTurns, default=0};
	__property bool HazardousMaterials = {read=FHazardousMaterials, write=SetHazardousMaterials, default=0};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCDirectionsTruckOptions() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCDirectionsOptions : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCDirectionsRoutingMode FRoutingMode;
	TTMSFNCDirectionsTruckOptions* FTruck;
	bool FAvoidTunnels;
	bool FAvoidDirtRoads;
	void __fastcall SetRoutingMode(const TTMSFNCDirectionsRoutingMode Value);
	void __fastcall SetTruck(TTMSFNCDirectionsTruckOptions* const Value);
	void __fastcall SetAvoidDirtRoads(const bool Value);
	void __fastcall SetAvoidTunnels(const bool Value);
	
public:
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual TTMSFNCDirectionsOptions();
	__fastcall virtual ~TTMSFNCDirectionsOptions();
	
__published:
	__property TTMSFNCDirectionsTruckOptions* Truck = {read=FTruck, write=SetTruck};
	__property TTMSFNCDirectionsRoutingMode RoutingMode = {read=FRoutingMode, write=SetRoutingMode, default=0};
	__property bool AvoidTunnels = {read=FAvoidTunnels, write=SetAvoidTunnels, default=0};
	__property bool AvoidDirtRoads = {read=FAvoidDirtRoads, write=SetAvoidDirtRoads, default=0};
};


class PASCALIMPLEMENTATION TTMSFNCCustomHereDirections : public Fmx::Tmsfncdirections::TTMSFNCCustomDirections
{
	typedef Fmx::Tmsfncdirections::TTMSFNCCustomDirections inherited;
	
private:
	TTMSFNCDirectionsOptions* FOptions;
	void __fastcall SetOptions(TTMSFNCDirectionsOptions* const Value);
	
protected:
	virtual System::UnicodeString __fastcall GetTruckOptions(System::UnicodeString &AOptions, bool AAVoidTolls);
	
public:
	__fastcall virtual TTMSFNCCustomHereDirections(System::Classes::TComponent* AOwner)/* overload */;
	__fastcall virtual ~TTMSFNCCustomHereDirections();
	__property TTMSFNCDirectionsOptions* Options = {read=FOptions, write=SetOptions};
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCCustomHereDirections()/* overload */ : Fmx::Tmsfncdirections::TTMSFNCCustomDirections() { }
	
};


class PASCALIMPLEMENTATION TTMSFNCHereDirections : public TTMSFNCCustomHereDirections
{
	typedef TTMSFNCCustomHereDirections inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
public:
	__property DirectionsInstance;
	__property DirectionsProperties;
	
__published:
	__property OnGetDirections;
	__property OnGetDirectionsResult;
	__property APIKey = {default=0};
	__property DirectionsRequests;
	__property Version = {default=0};
public:
	/* TTMSFNCCustomHereDirections.Create */ inline __fastcall virtual TTMSFNCHereDirections(System::Classes::TComponent* AOwner)/* overload */ : TTMSFNCCustomHereDirections(AOwner) { }
	/* TTMSFNCCustomHereDirections.Destroy */ inline __fastcall virtual ~TTMSFNCHereDirections() { }
	
public:
	/* TTMSFNCCustomCloudBase.Create */ inline __fastcall virtual TTMSFNCHereDirections()/* overload */ : TTMSFNCCustomHereDirections() { }
	
};


//-- var, const, procedure ---------------------------------------------------
#define TTMSFNCHereDirectionsDocURL u"https://download.tmssoftware.com/doc/tmsfncmaps/components"\
	u"/ttmsfncmaps/#ttmsfncdirections"
#define TTMSFNCHereDirectionsTipsURL u"https://www.tmssoftware.com/site/tmsfncmaps.asp?s=faq"
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfncheredirections */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCHEREDIRECTIONS)
using namespace Fmx::Tmsfncheredirections;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncheredirectionsHPP

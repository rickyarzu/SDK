// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCMaps.GoogleMaps.pas' rev: 35.00 (Android)

#ifndef Fmx_Tmsfncmaps_GooglemapsHPP
#define Fmx_Tmsfncmaps_GooglemapsHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncmaps
{
namespace Googlemaps
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
#define GOOGLEMAPSAPIURL u"https://maps.googleapis.com/maps/api/"
#define MAPSERVICEVAR u"window.google.maps"
#define MAPCALCLAYER u"calclayer"
extern DELPHI_PACKAGE void __fastcall RegisterGoogleMapsService(void);
extern DELPHI_PACKAGE void __fastcall UnRegisterGoogleMapsService(void);
}	/* namespace Googlemaps */
}	/* namespace Tmsfncmaps */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCMAPS_GOOGLEMAPS)
using namespace Fmx::Tmsfncmaps::Googlemaps;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCMAPS)
using namespace Fmx::Tmsfncmaps;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_Tmsfncmaps_GooglemapsHPP

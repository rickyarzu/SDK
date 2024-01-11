// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCMaps.OpenLayers.pas' rev: 35.00 (Android)

#ifndef Fmx_Tmsfncmaps_OpenlayersHPP
#define Fmx_Tmsfncmaps_OpenlayersHPP

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
namespace Openlayers
{
//-- forward type declarations -----------------------------------------------
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
#define MAPSERVICEVAR u"window.ol"
#define MAPSOURCEVAR u".source.OSM()"
#define CLUSTERVAR u"cluster"
#define CLUSTERARRAYVAR u"clusterarray"
#define GETCLUSTERARRAYVAR u"getclusterarray()"
#define ADDORUPDATECLUSTERFUNCTION u"addOrUpdateCluster"
#define DELETECLUSTERFUNCTION u"deleteCluster"
extern DELPHI_PACKAGE void __fastcall RegisterOpenLayersService(void);
extern DELPHI_PACKAGE void __fastcall UnRegisterOpenLayersService(void);
}	/* namespace Openlayers */
}	/* namespace Tmsfncmaps */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCMAPS_OPENLAYERS)
using namespace Fmx::Tmsfncmaps::Openlayers;
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
#endif	// Fmx_Tmsfncmaps_OpenlayersHPP

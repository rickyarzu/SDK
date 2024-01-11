// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCRichEditorPic.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncricheditorpicHPP
#define Fmx_TmsfncricheditorpicHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.Graphics.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncricheditorpic
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TPicture;
class DELPHICLASS TGDIPPicture;
//-- type declarations -------------------------------------------------------
enum DECLSPEC_DENUM TPictureFormat : unsigned char { pfBMP, pfGIF, pfJPG, pfPNG, pfICO, pfTiff, pfMetaFile, pfNone };

class PASCALIMPLEMENTATION TPicture : public Fmx::Graphics::TBitmap
{
	typedef Fmx::Graphics::TBitmap inherited;
	
public:
	/* TBitmap.Create */ inline __fastcall virtual TPicture()/* overload */ : Fmx::Graphics::TBitmap() { }
	/* TBitmap.Create */ inline __fastcall virtual TPicture(const int AWidth, const int AHeight)/* overload */ : Fmx::Graphics::TBitmap(AWidth, AHeight) { }
	/* TBitmap.CreateFromStream */ inline __fastcall virtual TPicture(System::Classes::TStream* const AStream) : Fmx::Graphics::TBitmap(AStream) { }
	/* TBitmap.CreateFromFile */ inline __fastcall virtual TPicture(const System::UnicodeString AFileName) : Fmx::Graphics::TBitmap(AFileName) { }
	/* TBitmap.CreateFromBitmapAndMask */ inline __fastcall TPicture(Fmx::Graphics::TBitmap* const Bitmap, Fmx::Graphics::TBitmap* const Mask) : Fmx::Graphics::TBitmap(Bitmap, Mask) { }
	/* TBitmap.Destroy */ inline __fastcall virtual ~TPicture() { }
	
};


class PASCALIMPLEMENTATION TGDIPPicture : public TPicture
{
	typedef TPicture inherited;
	
private:
	bool FTransparentBitmap;
	
public:
	bool __fastcall Empty();
	TPictureFormat __fastcall PictureFormat();
	void __fastcall GetImageSizes();
	HIDESBASE void __fastcall SaveToStream(System::Classes::TStream* Stream);
	HIDESBASE void __fastcall LoadFromStream(System::Classes::TStream* Stream);
	__property bool TransparentBitmap = {read=FTransparentBitmap, write=FTransparentBitmap, nodefault};
public:
	/* TBitmap.Create */ inline __fastcall virtual TGDIPPicture()/* overload */ : TPicture() { }
	/* TBitmap.Create */ inline __fastcall virtual TGDIPPicture(const int AWidth, const int AHeight)/* overload */ : TPicture(AWidth, AHeight) { }
	/* TBitmap.CreateFromStream */ inline __fastcall virtual TGDIPPicture(System::Classes::TStream* const AStream) : TPicture(AStream) { }
	/* TBitmap.CreateFromFile */ inline __fastcall virtual TGDIPPicture(const System::UnicodeString AFileName) : TPicture(AFileName) { }
	/* TBitmap.CreateFromBitmapAndMask */ inline __fastcall TGDIPPicture(Fmx::Graphics::TBitmap* const Bitmap, Fmx::Graphics::TBitmap* const Mask) : TPicture(Bitmap, Mask) { }
	/* TBitmap.Destroy */ inline __fastcall virtual ~TGDIPPicture() { }
	
};


//-- var, const, procedure ---------------------------------------------------
}	/* namespace Tmsfncricheditorpic */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCRICHEDITORPIC)
using namespace Fmx::Tmsfncricheditorpic;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncricheditorpicHPP

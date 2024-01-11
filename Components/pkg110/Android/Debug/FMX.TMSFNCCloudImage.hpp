// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCCloudImage.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfnccloudimageHPP
#define Fmx_TmsfnccloudimageHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCCustomControl.hpp>
#include <FMX.TMSFNCBitmapContainer.hpp>
#include <FMX.TMSFNCCloudBase.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <FMX.TMSFNCGraphics.hpp>
#include <FMX.TMSFNCGraphicsTypes.hpp>
#include <System.UITypes.hpp>
#include <System.Types.hpp>
#include <FMX.Controls.hpp>
#include <FMX.Types.hpp>
#include <System.Generics.Collections.hpp>
#include <System.SysUtils.hpp>
#include <System.Generics.Defaults.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfnccloudimage
{
//-- forward type declarations -----------------------------------------------
class DELPHICLASS TTMSFNCCustomCloudImage;
class DELPHICLASS TTMSFNCCloudImage;
//-- type declarations -------------------------------------------------------
#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCustomCloudImage : public Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl
{
	typedef Fmx::Tmsfnccustomcontrol::TTMSFNCCustomControl inherited;
	
private:
	Fmx::Tmsfnccloudbase::TTMSFNCCloudBase* FImageDownloader;
	Fmx::Tmsfnctypes::TTMSFNCBitmap* FBitmap;
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* FBitmapContainer;
	bool FStretch;
	Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* FBitmaps;
	bool FCropping;
	bool FCenter;
	bool FAutoSize;
	bool FAspectRatio;
	System::Classes::TNotifyEvent FOnBitmapChanged;
	System::UnicodeString FURL;
	void __fastcall SetBitmapContainer(Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* const Value);
	void __fastcall SetStretch(const bool Value);
	void __fastcall SetBitmaps(Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* const Value);
	void __fastcall SetCropping(const bool Value);
	void __fastcall SetCenter(const bool Value);
	void __fastcall SetAS(const bool Value);
	void __fastcall SetAspectRatio(const bool Value);
	void __fastcall SetBitmap(Fmx::Tmsfnctypes::TTMSFNCBitmap* const Value);
	Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* __fastcall GetBitmapContainer();
	void __fastcall SetURL(const System::UnicodeString Value);
	
protected:
	virtual System::UnicodeString __fastcall GetVersion();
	void __fastcall ApplyAutoSize();
	void __fastcall DoDownloadImage(Fmx::Tmsfnccloudbase::TTMSFNCCloudBaseRequestResult* const ARequestResult);
	virtual void __fastcall Notification(System::Classes::TComponent* AComponent, System::Classes::TOperation Operation);
	void __fastcall BitmapChanged(System::TObject* Sender);
	__property bool AspectRatio = {read=FAspectRatio, write=SetAspectRatio, default=1};
	__property System::UnicodeString Version = {read=GetVersion};
	__property Fmx::Tmsfnctypes::TTMSFNCScaledBitmaps* Bitmaps = {read=FBitmaps, write=SetBitmaps};
	__property Fmx::Tmsfncbitmapcontainer::TTMSFNCBitmapContainer* BitmapContainer = {read=GetBitmapContainer, write=SetBitmapContainer};
	__property bool Stretch = {read=FStretch, write=SetStretch, default=0};
	__property bool Cropping = {read=FCropping, write=SetCropping, default=0};
	__property bool Center = {read=FCenter, write=SetCenter, default=1};
	__property bool AutoSize = {read=FAutoSize, write=SetAS, default=0};
	__property Fmx::Tmsfnctypes::TTMSFNCBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
	__property System::UnicodeString URL = {read=FURL, write=SetURL};
	
public:
	void __fastcall Clear();
	System::Types::TRectF __fastcall GetPaintRectangle();
	Fmx::Tmsfnctypes::TTMSFNCBitmap* __fastcall GetBitmap();
	__fastcall virtual TTMSFNCCustomCloudImage(System::Classes::TComponent* AOwner);
	__fastcall virtual ~TTMSFNCCustomCloudImage();
	virtual void __fastcall Draw(Fmx::Tmsfncgraphics::TTMSFNCGraphics* AGraphics, const System::Types::TRectF &ARect);
	void __fastcall LoadFromURL(const System::UnicodeString AURL);
	__property System::Classes::TNotifyEvent OnBitmapChanged = {read=FOnBitmapChanged, write=FOnBitmapChanged};
private:
	void *__ITMSFNCBitmapContainer;	// Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer 
	
public:
	#if defined(MANAGED_INTERFACE_OPERATORS)
	// {ED26710D-395F-4971-8AC9-A31083BF2A3C}
	operator Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer()
	{
		Fmx::Tmsfncbitmapcontainer::_di_ITMSFNCBitmapContainer intf;
		this->GetInterface(intf);
		return intf;
	}
	#else
	operator Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*(void) { return (Fmx::Tmsfncbitmapcontainer::ITMSFNCBitmapContainer*)&__ITMSFNCBitmapContainer; }
	#endif
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCCloudImage : public TTMSFNCCustomCloudImage
{
	typedef TTMSFNCCustomCloudImage inherited;
	
protected:
	virtual void __fastcall RegisterRuntimeClasses();
	
__published:
	__property OnBitmapChanged;
	__property AspectRatio = {default=1};
	__property Bitmap;
	__property Version = {default=0};
	__property Bitmaps;
	__property BitmapContainer;
	__property Stretch = {default=0};
	__property Cropping = {default=0};
	__property Center = {default=1};
	__property AutoSize = {default=0};
	__property Fill;
	__property Stroke;
	__property URL = {default=0};
public:
	/* TTMSFNCCustomCloudImage.Create */ inline __fastcall virtual TTMSFNCCloudImage(System::Classes::TComponent* AOwner) : TTMSFNCCustomCloudImage(AOwner) { }
	/* TTMSFNCCustomCloudImage.Destroy */ inline __fastcall virtual ~TTMSFNCCloudImage() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
static constexpr System::Int8 MAJ_VER = System::Int8(0x1);
static constexpr System::Int8 MIN_VER = System::Int8(0x0);
static constexpr System::Int8 REL_VER = System::Int8(0x0);
static constexpr System::Int8 BLD_VER = System::Int8(0x0);
}	/* namespace Tmsfnccloudimage */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCCLOUDIMAGE)
using namespace Fmx::Tmsfnccloudimage;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfnccloudimageHPP

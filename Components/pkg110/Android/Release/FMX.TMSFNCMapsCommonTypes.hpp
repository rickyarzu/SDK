// CodeGear C++Builder
// Copyright (c) 1995, 2022 by Embarcadero Technologies, Inc.
// All rights reserved

// (DO NOT EDIT: machine generated header) 'FMX.TMSFNCMapsCommonTypes.pas' rev: 35.00 (Android)

#ifndef Fmx_TmsfncmapscommontypesHPP
#define Fmx_TmsfncmapscommontypesHPP

#pragma delphiheader begin
#pragma option push
#pragma option -w-      // All warnings off
#pragma option -Vx      // Zero-length empty class member 
#pragma pack(push,8)
#include <System.hpp>
#include <SysInit.hpp>
#include <System.Classes.hpp>
#include <FMX.TMSFNCTypes.hpp>
#include <Xml.XMLIntf.hpp>
#include <Xml.xmldom.hpp>
#include <Xml.XMLDoc.hpp>
#include <System.SysUtils.hpp>

//-- user supplied -----------------------------------------------------------

namespace Fmx
{
namespace Tmsfncmapscommontypes
{
//-- forward type declarations -----------------------------------------------
struct TTMSFNCMapsAnchorPointRec;
struct TTMSFNCMapsCoordinateRec;
struct TTMSFNCMapsGPXTrackRec;
class DELPHICLASS TTMSFNCMapsGPXTrackEventData;
class DELPHICLASS TTMSFNCMapsGPXSegmentEventData;
struct TTMSFNCMapsGPXMetaData;
struct TTMSFNCMapWayPointRec;
struct TTMSFNCMapsGPXRec;
struct TTMSFNCMapsBoundsRec;
class DELPHICLASS TTMSFNCMapsCoordinate;
class DELPHICLASS TTMSFNCMapsBounds;
class DELPHICLASS TTMSFNCMapsCoordinateItem;
class DELPHICLASS TTMSFNCMapsCoordinates;
class DELPHICLASS TTMSFNCMapsBasePoint;
class DELPHICLASS TTMSFNCMapsAnchorPoint;
class DELPHICLASS TTMSFNCMapsPlusCode;
//-- type declarations -------------------------------------------------------
struct DECLSPEC_DRECORD TTMSFNCMapsAnchorPointRec
{
public:
	float X;
	float Y;
};


struct DECLSPEC_DRECORD TTMSFNCMapsCoordinateRec
{
public:
	double Longitude;
	double Latitude;
	double Elevation;
	System::TDateTime TimeStamp;
	bool HasElevation;
	bool HasTimeStamp;
	System::TObject* DataObject;
	System::UnicodeString Description;
};


typedef System::DynamicArray<TTMSFNCMapsCoordinateRec> TTMSFNCMapsCoordinateRecArray;

typedef System::DynamicArray<TTMSFNCMapsCoordinateRecArray> TTMSFNCMapsCoordinateRecArrayArray;

typedef System::DynamicArray<TTMSFNCMapsCoordinateRecArrayArray> TTMSFNCMapsCoordinateRecArrayArrayArray;

typedef Xml::Xmlintf::_di_IXMLNode TTMSFNCMapsXMLNode;

typedef Xml::Xmlintf::_di_IXMLDocument TTMSFNCMapsXMLDocument;

typedef Xml::Xmldom::_di_IDOMNode TTMSFNCMapsXMLDomNode;

struct DECLSPEC_DRECORD TTMSFNCMapsGPXTrackRec
{
public:
	TTMSFNCMapsCoordinateRecArrayArray Segments;
	System::UnicodeString Name;
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMapsGPXTrackEventData : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Xml::Xmldom::_di_IDOMNode FNode;
	TTMSFNCMapsGPXTrackRec FData;
	
public:
	__fastcall virtual TTMSFNCMapsGPXTrackEventData();
	__fastcall virtual ~TTMSFNCMapsGPXTrackEventData();
	__property TTMSFNCMapsGPXTrackRec Data = {read=FData, write=FData};
	__property Xml::Xmldom::_di_IDOMNode Node = {read=FNode, write=FNode};
};

#pragma pack(pop)

class PASCALIMPLEMENTATION TTMSFNCMapsGPXSegmentEventData : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	Xml::Xmldom::_di_IDOMNode FNode;
	TTMSFNCMapsCoordinateRec FData;
	
public:
	__fastcall virtual TTMSFNCMapsGPXSegmentEventData();
	__fastcall virtual ~TTMSFNCMapsGPXSegmentEventData();
	__property TTMSFNCMapsCoordinateRec Data = {read=FData, write=FData};
	__property Xml::Xmldom::_di_IDOMNode Node = {read=FNode, write=FNode};
};


struct DECLSPEC_DRECORD TTMSFNCMapsGPXMetaData
{
public:
	System::UnicodeString AuthorName;
	System::UnicodeString AuthorLink;
	System::UnicodeString TrackName;
	System::UnicodeString TrackType;
};


struct DECLSPEC_DRECORD TTMSFNCMapWayPointRec
{
public:
	TTMSFNCMapsCoordinateRec WayPoint;
	System::UnicodeString Name;
};


struct DECLSPEC_DRECORD TTMSFNCMapsGPXRec
{
	
private:
	typedef System::DynamicArray<TTMSFNCMapsGPXTrackRec> _TTMSFNCMapsGPXRec__1;
	
	typedef System::DynamicArray<TTMSFNCMapWayPointRec> _TTMSFNCMapsGPXRec__2;
	
	
public:
	_TTMSFNCMapsGPXRec__1 Tracks;
	_TTMSFNCMapsGPXRec__2 WayPoints;
};


typedef void __fastcall (__closure *TTMSFNCMapsGPXTrackEvent)(System::TObject* Sender, TTMSFNCMapsGPXTrackEventData* AEventData);

typedef void __fastcall (__closure *TTMSFNCMapsGPXSegmentEvent)(System::TObject* Sender, TTMSFNCMapsGPXSegmentEventData* AEventData);

enum DECLSPEC_DENUM TTMSFNCMapsLocaleMode : unsigned char { mlmDefault, mlmCountry, mlmLanguage };

struct DECLSPEC_DRECORD TTMSFNCMapsBoundsRec
{
public:
	TTMSFNCMapsCoordinateRec NorthEast;
	TTMSFNCMapsCoordinateRec SouthWest;
};


class PASCALIMPLEMENTATION TTMSFNCMapsCoordinate : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	double FLatitude;
	double FLongitude;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetLatitude(const double Value);
	void __fastcall SetLongitude(const double Value);
	bool __fastcall IsLatitudeStored();
	bool __fastcall IsLongitudeStored();
	TTMSFNCMapsCoordinateRec __fastcall GetToRec();
	void __fastcall SetToRec(const TTMSFNCMapsCoordinateRec &Value);
	
protected:
	virtual void __fastcall UpdateCoordinate();
	
public:
	__fastcall virtual TTMSFNCMapsCoordinate()/* overload */;
	__fastcall virtual TTMSFNCMapsCoordinate(const TTMSFNCMapsCoordinateRec &ACoordinate)/* overload */;
	__fastcall virtual TTMSFNCMapsCoordinate(double ALatitude, double ALongitude)/* overload */;
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property TTMSFNCMapsCoordinateRec ToRec = {read=GetToRec, write=SetToRec};
	
__published:
	__property double Longitude = {read=FLongitude, write=SetLongitude, stored=IsLongitudeStored};
	__property double Latitude = {read=FLatitude, write=SetLatitude, stored=IsLatitudeStored};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCMapsCoordinate() { }
	
};


#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMapsBounds : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	TTMSFNCMapsCoordinate* FNorthEast;
	TTMSFNCMapsCoordinate* FSouthWest;
	System::Classes::TNotifyEvent FOnChange;
	void *FDataPointer;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	TTMSFNCMapsBoundsRec __fastcall GetToRec();
	void __fastcall SetToRec(const TTMSFNCMapsBoundsRec &Value);
	
protected:
	void __fastcall DoCoordinateChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCMapsBounds()/* overload */;
	__fastcall virtual TTMSFNCMapsBounds(const TTMSFNCMapsCoordinateRec &ANorthEast, const TTMSFNCMapsCoordinateRec &ASouthWest)/* overload */;
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__fastcall virtual ~TTMSFNCMapsBounds();
	__property TTMSFNCMapsBoundsRec ToRec = {read=GetToRec, write=SetToRec};
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property TTMSFNCMapsCoordinate* NorthEast = {read=FNorthEast};
	__property TTMSFNCMapsCoordinate* SouthWest = {read=FSouthWest};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMapsCoordinateItem : public System::Classes::TCollectionItem
{
	typedef System::Classes::TCollectionItem inherited;
	
private:
	System::Classes::TPersistent* FOwner;
	bool FDataBoolean;
	System::UnicodeString FDataString;
	System::TObject* FDataObject;
	NativeInt FDataInteger;
	void *FDataPointer;
	TTMSFNCMapsCoordinate* FCoordinate;
	void __fastcall SetCoordinate(TTMSFNCMapsCoordinate* const Value);
	double __fastcall GetLatitude();
	double __fastcall GetLongitude();
	void __fastcall SetLatitude(const double Value);
	void __fastcall SetLongitude(const double Value);
	bool __fastcall IsLatitudeStored();
	bool __fastcall IsLongitudeStored();
	
protected:
	virtual void __fastcall UpdateCoordinateItem();
	void __fastcall CoordinateChanged(System::TObject* Sender);
	
public:
	__fastcall virtual TTMSFNCMapsCoordinateItem(System::Classes::TCollection* Collection);
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__fastcall virtual ~TTMSFNCMapsCoordinateItem();
	__property void * DataPointer = {read=FDataPointer, write=FDataPointer};
	__property bool DataBoolean = {read=FDataBoolean, write=FDataBoolean, nodefault};
	__property System::TObject* DataObject = {read=FDataObject, write=FDataObject};
	__property System::UnicodeString DataString = {read=FDataString, write=FDataString};
	__property NativeInt DataInteger = {read=FDataInteger, write=FDataInteger, nodefault};
	__property TTMSFNCMapsCoordinate* Coordinate = {read=FCoordinate, write=SetCoordinate};
	
__published:
	__property double Longitude = {read=GetLongitude, write=SetLongitude, stored=IsLongitudeStored};
	__property double Latitude = {read=GetLatitude, write=SetLatitude, stored=IsLatitudeStored};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMapsCoordinates : public Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsCoordinateItem*>
{
	typedef Fmx::Tmsfnctypes::TTMSFNCOwnedCollection__1<TTMSFNCMapsCoordinateItem*> inherited;
	
public:
	TTMSFNCMapsCoordinateItem* operator[](int Index) { return this->Items[Index]; }
	
private:
	TTMSFNCMapsBounds* FBounds;
	System::Classes::TPersistent* FOwner;
	System::Classes::TNotifyEvent FOnBeginUpdate;
	System::Classes::TNotifyEvent FOnEndUpdate;
	System::Classes::TNotifyEvent FOnUpdateCoordinates;
	HIDESBASE TTMSFNCMapsCoordinateItem* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TTMSFNCMapsCoordinateItem* const Value);
	TTMSFNCMapsBounds* __fastcall GetBounds();
	TTMSFNCMapsCoordinateRecArray __fastcall GetArray();
	
protected:
	virtual System::Classes::TCollectionItemClass __fastcall CreateItemClass();
	DYNAMIC System::Classes::TPersistent* __fastcall GetOwner();
	virtual void __fastcall UpdateCoordinates();
	
public:
	__fastcall virtual TTMSFNCMapsCoordinates(System::Classes::TPersistent* AOwner);
	__fastcall virtual ~TTMSFNCMapsCoordinates();
	__property TTMSFNCMapsCoordinateItem* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
	HIDESBASE virtual void __fastcall Clear();
	HIDESBASE TTMSFNCMapsCoordinateItem* __fastcall Add();
	__property TTMSFNCMapsBounds* Bounds = {read=GetBounds};
	HIDESBASE TTMSFNCMapsCoordinateItem* __fastcall Insert(int Index);
	__property System::Classes::TNotifyEvent OnBeginUpdate = {read=FOnBeginUpdate, write=FOnBeginUpdate};
	__property System::Classes::TNotifyEvent OnEndUpdate = {read=FOnEndUpdate, write=FOnEndUpdate};
	__property System::Classes::TNotifyEvent OnUpdateCoordinates = {read=FOnUpdateCoordinates, write=FOnUpdateCoordinates};
	__property TTMSFNCMapsCoordinateRecArray ToArray = {read=GetArray};
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMapsBasePoint : public System::Classes::TPersistent
{
	typedef System::Classes::TPersistent inherited;
	
private:
	float FX;
	float FY;
	System::Classes::TNotifyEvent FOnChange;
	void __fastcall SetY(const float Value);
	void __fastcall SetX(const float Value);
	bool __fastcall IsYStored();
	bool __fastcall IsXStored();
	
protected:
	void __fastcall UpdatePoint();
	
public:
	__fastcall virtual TTMSFNCMapsBasePoint();
	virtual void __fastcall Assign(System::Classes::TPersistent* Source);
	__property System::Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
protected:
	__property float X = {read=FX, write=SetX, stored=IsXStored};
	__property float Y = {read=FY, write=SetY, stored=IsYStored};
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCMapsBasePoint() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMapsAnchorPoint : public TTMSFNCMapsBasePoint
{
	typedef TTMSFNCMapsBasePoint inherited;
	
__published:
	__property X = {default=0};
	__property Y = {default=0};
public:
	/* TTMSFNCMapsBasePoint.Create */ inline __fastcall virtual TTMSFNCMapsAnchorPoint() : TTMSFNCMapsBasePoint() { }
	
public:
	/* TPersistent.Destroy */ inline __fastcall virtual ~TTMSFNCMapsAnchorPoint() { }
	
};

#pragma pack(pop)

#pragma pack(push,4)
class PASCALIMPLEMENTATION TTMSFNCMapsPlusCode : public System::TObject
{
	typedef System::TObject inherited;
	
	
private:
	typedef System::StaticArray<System::UnicodeString, 20> _TTMSFNCMapsPlusCode__1;
	
	
private:
	static int SeparatorPosition;
	static System::WideChar SeparatorCharacter;
	static System::WideChar PaddingCharacter;
	static int GridColumns;
	static int GridRows;
	static _TTMSFNCMapsPlusCode__1 CodeAlphaBet;
	static int EncodingBase;
	static int LatitudeMax;
	static int LongitudeMax;
	static int GridRowsMultiplier;
	static int GridColumnsMultiplier;
	static __int64 LatIntegerMultiplier;
	static __int64 LngIntegerMultiplier;
	static __int64 LatMspValue;
	static __int64 LngMspValue;
	static int PairCodeLength;
	static int MaxDigitCount;
	static int GridCodeLength;
	
protected:
	__classmethod int __fastcall DigitValueOf(System::WideChar digit);
	
public:
	__classmethod System::UnicodeString __fastcall Encode(const TTMSFNCMapsCoordinateRec &ACoordinate);
	__classmethod TTMSFNCMapsBoundsRec __fastcall Decode(System::UnicodeString APlusCode);
	System::UnicodeString __fastcall ToJSON()/* overload */;
	void __fastcall FromJSON(const System::UnicodeString Value);
	__property System::UnicodeString JSON = {read=ToJSON, write=FromJSON};
	System::UnicodeString __fastcall ToJSON(Fmx::Tmsfnctypes::TTMSFNCObjectExcludePropertyListArray AExcludedProperties)/* overload */;
	void __fastcall Log();
	void __fastcall SaveToJSONFile(const System::UnicodeString AFileName);
	void __fastcall LoadFromJSONFile(const System::UnicodeString AFileName);
	void __fastcall SaveToJSONStream(System::Classes::TStream* const AStream);
	void __fastcall LoadFromJSONStream(System::Classes::TStream* const AStream);
public:
	/* TObject.Create */ inline __fastcall TTMSFNCMapsPlusCode() : System::TObject() { }
	/* TObject.Destroy */ inline __fastcall virtual ~TTMSFNCMapsPlusCode() { }
	
};

#pragma pack(pop)

//-- var, const, procedure ---------------------------------------------------
#define DEFAULT_LOCALE u"en-US"
static const double DEFAULT_LATITUDE = 4.068925E+01;
static const double DEFAULT_LONGITUDE = -7.404450E+01;
#define DEFAULT_ICONURL u"https://cdn.mapmarker.io/api/v1/pin?text=P&size=50&hoffset"\
	u"=1"
extern DELPHI_PACKAGE TTMSFNCMapsGPXMetaData __fastcall CreateGPXMetaData(System::UnicodeString AAuthorName, System::UnicodeString AAuthorLink, System::UnicodeString ATrackName, System::UnicodeString ATrackType);
extern DELPHI_PACKAGE TTMSFNCMapsGPXMetaData __fastcall DefaultGPXMetaData(void);
extern DELPHI_PACKAGE System::UnicodeString __fastcall ParseLocale(System::UnicodeString ALocale, TTMSFNCMapsLocaleMode AMode = (TTMSFNCMapsLocaleMode)(0x0));
extern DELPHI_PACKAGE double __fastcall CalculateBearing(const TTMSFNCMapsCoordinateRec &ACoordinate1, const TTMSFNCMapsCoordinateRec &ACoordinate2);
extern DELPHI_PACKAGE TTMSFNCMapsCoordinateRec __fastcall CalculateCoordinate(const TTMSFNCMapsCoordinateRec &ACoordinate, double ABearing, double ADistance);
extern DELPHI_PACKAGE double __fastcall MeasureDistance(const TTMSFNCMapsCoordinateRec &ACoordinate1, const TTMSFNCMapsCoordinateRec &ACoordinate2);
extern DELPHI_PACKAGE double __fastcall MeasureArea(TTMSFNCMapsCoordinateRecArray ACoordinatesArray);
extern DELPHI_PACKAGE bool __fastcall IsPointInArea(double ALatitude, double ALongitude, TTMSFNCMapsCoordinateRecArray ACoordinatesArray);
extern DELPHI_PACKAGE TTMSFNCMapsCoordinateRec __fastcall BoundsCenter(const TTMSFNCMapsBoundsRec &ABounds);
extern DELPHI_PACKAGE TTMSFNCMapsCoordinateRecArray __fastcall BoundsRectangle(const TTMSFNCMapsBoundsRec &ABounds);
extern DELPHI_PACKAGE TTMSFNCMapsBoundsRec __fastcall CreateBounds(double ANorthLatitude, double AEastLongitude, double ASouthLatitude, double AWestLongitude)/* overload */;
extern DELPHI_PACKAGE TTMSFNCMapsBoundsRec __fastcall CreateBounds(TTMSFNCMapsCoordinateRecArrayArrayArray ACoordinatesArrayArray)/* overload */;
extern DELPHI_PACKAGE TTMSFNCMapsBoundsRec __fastcall CreateBounds(TTMSFNCMapsCoordinateRecArrayArray ACoordinatesArray)/* overload */;
extern DELPHI_PACKAGE TTMSFNCMapsBoundsRec __fastcall CreateBounds(const TTMSFNCMapsCoordinateRec &ACoordinate1, const TTMSFNCMapsCoordinateRec &ACoordinate2)/* overload */;
extern DELPHI_PACKAGE TTMSFNCMapsBoundsRec __fastcall CreateBounds(TTMSFNCMapsCoordinateRecArray ACoordinates)/* overload */;
extern DELPHI_PACKAGE TTMSFNCMapsCoordinateRec __fastcall EmptyCoordinate(void);
extern DELPHI_PACKAGE TTMSFNCMapsCoordinateRec __fastcall DefaultCoordinate(void);
extern DELPHI_PACKAGE TTMSFNCMapsCoordinateRec __fastcall CenterCoordinate(void);
extern DELPHI_PACKAGE bool __fastcall TryStrToFloatDot(System::UnicodeString AValue, double &AResult);
extern DELPHI_PACKAGE double __fastcall StrToFloatDot(System::UnicodeString AValue);
extern DELPHI_PACKAGE System::UnicodeString __fastcall FloatToStrDot(double AValue);
extern DELPHI_PACKAGE TTMSFNCMapsCoordinateRecArray __fastcall CreateCircle(const TTMSFNCMapsCoordinateRec &ACenter, double ARadius);
extern DELPHI_PACKAGE TTMSFNCMapsCoordinateRec __fastcall CreateCoordinate(const double ALatitude, const double ALongitude);
}	/* namespace Tmsfncmapscommontypes */
}	/* namespace Fmx */
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX_TMSFNCMAPSCOMMONTYPES)
using namespace Fmx::Tmsfncmapscommontypes;
#endif
#if !defined(DELPHIHEADER_NO_IMPLICIT_NAMESPACE_USE) && !defined(NO_USING_NAMESPACE_FMX)
using namespace Fmx;
#endif
#pragma pack(pop)
#pragma option pop

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// Fmx_TmsfncmapscommontypesHPP

.class public Lcom/easydlna/dlna/service/DlnaDevice;
.super Ljava/lang/Object;
.source "DlnaDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static AVT_TYPEString:Ljava/lang/String; = null

.field public static CDS_TYPEString:Ljava/lang/String; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/easydlna/dlna/service/DlnaDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_OFFLINE:I = 0x0

.field public static final DEVICE_ONLINE:I = 0x1

.field public static DEVICE_TYPE_DMR:I = 0x0

.field public static DEVICE_TYPE_DMRString:Ljava/lang/String; = null

.field public static DEVICE_TYPE_DMS:I = 0x0

.field public static DEVICE_TYPE_DMSString:Ljava/lang/String; = null

.field public static DEVICE_TYPE_UNKNOWN:I = 0x0

.field public static final DEVICE_UPDATED:I = 0x2


# instance fields
.field public bSupportRemoteDesktop:I

.field public baseUrlString:Ljava/lang/String;

.field public nameString:Ljava/lang/String;

.field public stateNow:I

.field public type:I

.field public typeString:Ljava/lang/String;

.field public udnString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput v0, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_DMS:I

    .line 8
    const/4 v0, 0x1

    sput v0, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_DMR:I

    .line 9
    const/4 v0, -0x1

    sput v0, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_UNKNOWN:I

    .line 11
    const-string v0, "urn:schemas-upnp-org:device:MediaServer:1"

    sput-object v0, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_DMSString:Ljava/lang/String;

    .line 12
    const-string v0, "urn:schemas-upnp-org:device:MediaRenderer:1"

    sput-object v0, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_DMRString:Ljava/lang/String;

    .line 14
    const-string v0, "urn:schemas-upnp-org:service:ContentDirectory:1"

    sput-object v0, Lcom/easydlna/dlna/service/DlnaDevice;->CDS_TYPEString:Ljava/lang/String;

    .line 15
    const-string v0, "urn:schemas-upnp-org:service:AVTransport:1"

    sput-object v0, Lcom/easydlna/dlna/service/DlnaDevice;->AVT_TYPEString:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/easydlna/dlna/service/DlnaDevice$1;

    invoke-direct {v0}, Lcom/easydlna/dlna/service/DlnaDevice$1;-><init>()V

    sput-object v0, Lcom/easydlna/dlna/service/DlnaDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_UNKNOWN:I

    iput v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->type:I

    .line 21
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->udnString:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->nameString:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->typeString:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->baseUrlString:Ljava/lang/String;

    .line 25
    iput v2, p0, Lcom/easydlna/dlna/service/DlnaDevice;->stateNow:I

    .line 26
    iput v2, p0, Lcom/easydlna/dlna/service/DlnaDevice;->bSupportRemoteDesktop:I

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_UNKNOWN:I

    iput v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->type:I

    .line 21
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->udnString:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->nameString:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->typeString:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->baseUrlString:Ljava/lang/String;

    .line 25
    iput v2, p0, Lcom/easydlna/dlna/service/DlnaDevice;->stateNow:I

    .line 26
    iput v2, p0, Lcom/easydlna/dlna/service/DlnaDevice;->bSupportRemoteDesktop:I

    .line 60
    invoke-virtual {p0, p1}, Lcom/easydlna/dlna/service/DlnaDevice;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/easydlna/dlna/service/DlnaDevice$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/easydlna/dlna/service/DlnaDevice$1;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/easydlna/dlna/service/DlnaDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/easydlna/dlna/service/DlnaDevice;)V
    .locals 3
    .param p1, "other"    # Lcom/easydlna/dlna/service/DlnaDevice;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_UNKNOWN:I

    iput v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->type:I

    .line 21
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->udnString:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->nameString:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->typeString:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/easydlna/dlna/service/DlnaDevice;->baseUrlString:Ljava/lang/String;

    .line 25
    iput v2, p0, Lcom/easydlna/dlna/service/DlnaDevice;->stateNow:I

    .line 26
    iput v2, p0, Lcom/easydlna/dlna/service/DlnaDevice;->bSupportRemoteDesktop:I

    .line 39
    iget-object v0, p1, Lcom/easydlna/dlna/service/DlnaDevice;->udnString:Ljava/lang/String;

    iput-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->udnString:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/easydlna/dlna/service/DlnaDevice;->nameString:Ljava/lang/String;

    iput-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->nameString:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/easydlna/dlna/service/DlnaDevice;->typeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->typeString:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/easydlna/dlna/service/DlnaDevice;->baseUrlString:Ljava/lang/String;

    iput-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->baseUrlString:Ljava/lang/String;

    .line 43
    iget v0, p1, Lcom/easydlna/dlna/service/DlnaDevice;->stateNow:I

    iput v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->stateNow:I

    .line 44
    iget v0, p1, Lcom/easydlna/dlna/service/DlnaDevice;->type:I

    iput v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->type:I

    .line 45
    iget v0, p1, Lcom/easydlna/dlna/service/DlnaDevice;->bSupportRemoteDesktop:I

    iput v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->bSupportRemoteDesktop:I

    .line 46
    return-void
.end method


# virtual methods
.method public confirmTypes()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->typeString:Ljava/lang/String;

    sget-object v1, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_DMSString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget v0, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_DMS:I

    iput v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->type:I

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->typeString:Ljava/lang/String;

    sget-object v1, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_DMRString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget v0, Lcom/easydlna/dlna/service/DlnaDevice;->DEVICE_TYPE_DMR:I

    iput v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->type:I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->udnString:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->nameString:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->typeString:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->baseUrlString:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->stateNow:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->type:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->bSupportRemoteDesktop:I

    .line 75
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->udnString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->nameString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->typeString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->baseUrlString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->stateNow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/easydlna/dlna/service/DlnaDevice;->bSupportRemoteDesktop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method

.class public Lcom/easydlna/dlna/service/ContentInfo;
.super Ljava/lang/Object;
.source "ContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/easydlna/dlna/service/ContentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childCount:I

.field public id:Ljava/lang/String;

.field public mediaClasString:Ljava/lang/String;

.field public parentId:Ljava/lang/String;

.field public protocalInfo:Ljava/lang/String;

.field public realPath:Ljava/lang/String;

.field public resourceRtspUrl:Ljava/lang/String;

.field public resourceUrl:Ljava/lang/String;

.field public size:J

.field public thumbnailUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public totalMatches:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/easydlna/dlna/service/ContentInfo$1;

    invoke-direct {v0}, Lcom/easydlna/dlna/service/ContentInfo$1;-><init>()V

    sput-object v0, Lcom/easydlna/dlna/service/ContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->id:Ljava/lang/String;

    .line 9
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->parentId:Ljava/lang/String;

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->childCount:I

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->totalMatches:I

    .line 12
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->title:Ljava/lang/String;

    .line 13
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->protocalInfo:Ljava/lang/String;

    .line 14
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->resourceUrl:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->resourceRtspUrl:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->thumbnailUrl:Ljava/lang/String;

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->size:J

    .line 18
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->mediaClasString:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->realPath:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->id:Ljava/lang/String;

    .line 9
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->parentId:Ljava/lang/String;

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->childCount:I

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->totalMatches:I

    .line 12
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->title:Ljava/lang/String;

    .line 13
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->protocalInfo:Ljava/lang/String;

    .line 14
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->resourceUrl:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->resourceRtspUrl:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->thumbnailUrl:Ljava/lang/String;

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->size:J

    .line 18
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->mediaClasString:Ljava/lang/String;

    .line 19
    iput-object v2, p0, Lcom/easydlna/dlna/service/ContentInfo;->realPath:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1}, Lcom/easydlna/dlna/service/ContentInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/easydlna/dlna/service/ContentInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/easydlna/dlna/service/ContentInfo$1;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/easydlna/dlna/service/ContentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->id:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->parentId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->childCount:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->title:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->protocalInfo:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->resourceUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->resourceRtspUrl:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->thumbnailUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->mediaClasString:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->size:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->realPath:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->totalMatches:I

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->parentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->childCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->protocalInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->resourceUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->resourceRtspUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->thumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->mediaClasString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-wide v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-object v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->realPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/easydlna/dlna/service/ContentInfo;->totalMatches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void
.end method

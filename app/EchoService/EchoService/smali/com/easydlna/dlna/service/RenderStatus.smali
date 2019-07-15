.class public Lcom/easydlna/dlna/service/RenderStatus;
.super Ljava/lang/Object;
.source "RenderStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/easydlna/dlna/service/RenderStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_NO_MEDIA_PRESENT:I = -0x1

.field public static final STATE_PAUSE_PLAYBACK:I = 0x2

.field public static final STATE_PLAYING:I = 0x1

.field public static final STATE_STOPPED:I


# instance fields
.field public duration:J

.field public durationString:Ljava/lang/String;

.field public errcode:I

.field public state:I

.field public stateString:Ljava/lang/String;

.field public statusString:Ljava/lang/String;

.field public urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/easydlna/dlna/service/RenderStatus$1;

    invoke-direct {v0}, Lcom/easydlna/dlna/service/RenderStatus$1;-><init>()V

    sput-object v0, Lcom/easydlna/dlna/service/RenderStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->urlString:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->stateString:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->statusString:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->durationString:Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->state:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->errcode:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->duration:J

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->urlString:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->stateString:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->statusString:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->durationString:Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->state:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->errcode:I

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->duration:J

    .line 37
    invoke-virtual {p0, p1}, Lcom/easydlna/dlna/service/RenderStatus;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/easydlna/dlna/service/RenderStatus$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/easydlna/dlna/service/RenderStatus$1;

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/easydlna/dlna/service/RenderStatus;-><init>(Landroid/os/Parcel;)V

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

    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->urlString:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->stateString:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->statusString:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->durationString:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->state:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->errcode:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->duration:J

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->urlString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->stateString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->statusString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->durationString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->errcode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-wide v0, p0, Lcom/easydlna/dlna/service/RenderStatus;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    return-void
.end method

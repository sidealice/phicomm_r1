.class public Lcom/phicomm/speaker/player/model/PlayPositionInfo;
.super Ljava/lang/Object;
.source "PlayPositionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/phicomm/speaker/player/model/PlayPositionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private music_id:Ljava/lang/String;

.field private play_time:I

.field private status:I

.field private timestamp:Ljava/lang/String;

.field private total_time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayPositionInfo$1;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/model/PlayPositionInfo$1;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->music_id:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->status:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->total_time:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->play_time:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->timestamp:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getMusic_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->music_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_time()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->play_time:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->status:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_time()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->total_time:I

    return v0
.end method

.method public setMusic_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "music_id"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->music_id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setPlay_time(I)V
    .locals 0
    .param p1, "play_time"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->play_time:I

    .line 58
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->status:I

    .line 42
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->timestamp:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTotal_time(I)V
    .locals 0
    .param p1, "total_time"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->total_time:I

    .line 50
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->music_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->total_time:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->play_time:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;->timestamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return-void
.end method

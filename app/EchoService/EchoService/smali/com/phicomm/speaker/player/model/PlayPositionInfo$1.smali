.class final Lcom/phicomm/speaker/player/model/PlayPositionInfo$1;
.super Ljava/lang/Object;
.source "PlayPositionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/PlayPositionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/phicomm/speaker/player/model/PlayPositionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 72
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 77
    new-array v0, p1, [Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/model/PlayPositionInfo$1;->newArray(I)[Lcom/phicomm/speaker/player/model/PlayPositionInfo;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/phicomm/speaker/player/model/PlaySong$1;
.super Ljava/lang/Object;
.source "PlaySong.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/player/model/PlaySong;
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
        "Lcom/phicomm/speaker/player/model/PlaySong;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/phicomm/speaker/player/model/PlaySong;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 36
    new-instance v0, Lcom/phicomm/speaker/player/model/PlaySong;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/player/model/PlaySong;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/model/PlaySong$1;->createFromParcel(Landroid/os/Parcel;)Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/phicomm/speaker/player/model/PlaySong;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 41
    new-array v0, p1, [Lcom/phicomm/speaker/player/model/PlaySong;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/player/model/PlaySong$1;->newArray(I)[Lcom/phicomm/speaker/player/model/PlaySong;

    move-result-object v0

    return-object v0
.end method

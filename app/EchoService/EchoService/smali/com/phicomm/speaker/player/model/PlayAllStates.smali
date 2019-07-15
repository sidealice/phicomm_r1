.class public Lcom/phicomm/speaker/player/model/PlayAllStates;
.super Ljava/lang/Object;
.source "PlayAllStates.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/phicomm/speaker/player/model/PlayAllStates;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private playIndex:I

.field private playList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/model/PlaySong;",
            ">;"
        }
    .end annotation
.end field

.field private playMode:I

.field private playState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/phicomm/speaker/player/model/PlayAllStates$1;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/model/PlayAllStates$1;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/player/model/PlayAllStates;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/util/List;)V
    .locals 0
    .param p1, "playMode"    # I
    .param p2, "playState"    # I
    .param p3, "playIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/model/PlaySong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p4, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/player/model/PlaySong;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playMode:I

    .line 20
    iput p2, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playState:I

    .line 21
    iput p3, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playIndex:I

    .line 22
    iput-object p4, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playList:Ljava/util/List;

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playMode:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playState:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playIndex:I

    .line 29
    sget-object v0, Lcom/phicomm/speaker/player/model/PlaySong;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playList:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayIndex()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playIndex:I

    return v0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/model/PlaySong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playList:Ljava/util/List;

    return-object v0
.end method

.method public getPlayMode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playMode:I

    return v0
.end method

.method public getPlayState()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayAllStates{playMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/player/model/PlayAllStates;->playList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 55
    return-void
.end method

.class public Lcom/unisound/lib/msgcenter/bean/PlayingInfo;
.super Lcom/unisound/lib/msgcenter/bean/BaseInfo;
.source "PlayingInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/unisound/lib/msgcenter/bean/BaseInfo;"
    }
.end annotation


# instance fields
.field private controlCmd:Ljava/lang/String;

.field private currentSongInfo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private itemId:Ljava/lang/String;

.field private playMode:Ljava/lang/String;

.field private playState:Ljava/lang/String;

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/unisound/lib/msgcenter/bean/BaseInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getControlCmd()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->controlCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSongInfo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->currentSongInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayMode()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayState()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->playState:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->volume:I

    return v0
.end method

.method public setControlCmd(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->controlCmd:Ljava/lang/String;

    return-void
.end method

.method public setCurrentSongInfo(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->currentSongInfo:Ljava/lang/Object;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setPlayMode(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->playMode:Ljava/lang/String;

    return-void
.end method

.method public setPlayState(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->playState:Ljava/lang/String;

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;->volume:I

    return-void
.end method

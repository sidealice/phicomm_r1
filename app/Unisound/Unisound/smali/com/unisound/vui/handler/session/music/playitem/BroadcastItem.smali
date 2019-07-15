.class public Lcom/unisound/vui/handler/session/music/playitem/BroadcastItem;
.super Ljava/lang/Object;
.source "BroadcastItem.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/playitem/PlayItem;


# instance fields
.field private final broadcastResult:Lnluparser/scheme/BroadcastResult;


# direct methods
.method public constructor <init>(Lnluparser/scheme/BroadcastResult;)V
    .locals 0
    .param p1, "broadcastResult"    # Lnluparser/scheme/BroadcastResult;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/playitem/BroadcastItem;->broadcastResult:Lnluparser/scheme/BroadcastResult;

    .line 14
    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/BroadcastItem;->broadcastResult:Lnluparser/scheme/BroadcastResult;

    invoke-virtual {v0}, Lnluparser/scheme/BroadcastResult;->getTotalTime()I

    move-result v0

    return v0
.end method

.method public getHdImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/BroadcastItem;->broadcastResult:Lnluparser/scheme/BroadcastResult;

    invoke-virtual {v0}, Lnluparser/scheme/BroadcastResult;->getChannelId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/BroadcastItem;->broadcastResult:Lnluparser/scheme/BroadcastResult;

    invoke-virtual {v0}, Lnluparser/scheme/BroadcastResult;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_BROADCAST:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/playitem/BroadcastItem;->broadcastResult:Lnluparser/scheme/BroadcastResult;

    invoke-virtual {v0}, Lnluparser/scheme/BroadcastResult;->getRate64TsUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public setCollected(Z)V
    .locals 0
    .param p1, "isCollected"    # Z

    .prologue
    .line 66
    return-void
.end method

.method public setListId(Ljava/lang/String;)V
    .locals 0
    .param p1, "listId"    # Ljava/lang/String;

    .prologue
    .line 26
    return-void
.end method

.class public Lcom/unisound/vui/handler/session/music/playitem/RadioItem;
.super Ljava/lang/Object;
.source "RadioItem.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/playitem/PlayItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getHdImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getmLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public setCollected(Z)V
    .locals 0
    .param p1, "isCollected"    # Z

    .prologue
    .line 56
    return-void
.end method

.method public setListId(Ljava/lang/String;)V
    .locals 0
    .param p1, "listId"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method

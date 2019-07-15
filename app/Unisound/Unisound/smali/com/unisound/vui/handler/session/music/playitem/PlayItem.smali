.class public interface abstract Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
.super Ljava/lang/Object;
.source "PlayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    }
.end annotation


# virtual methods
.method public abstract getAlbum()Ljava/lang/String;
.end method

.method public abstract getArtist()Ljava/lang/String;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getHdImgUrl()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImgUrl()Ljava/lang/String;
.end method

.method public abstract getListId()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getmLyric()Ljava/lang/String;
.end method

.method public abstract isCollected()Z
.end method

.method public abstract setCollected(Z)V
.end method

.method public abstract setListId(Ljava/lang/String;)V
.end method

.class public interface abstract Lcom/unisound/vui/handler/session/music/listener/MusicListener;
.super Ljava/lang/Object;
.source "MusicListener.java"


# virtual methods
.method public abstract fireError(Ljava/lang/String;)V
.end method

.method public abstract fireMusicChange()V
.end method

.method public abstract fireMusicEnd(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;)V
.end method

.method public abstract fireMusicListChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fireMusicPrepare(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;I)V
.end method

.method public abstract fireMusicStart(Lcom/unisound/vui/handler/session/music/playitem/PlayItem;I)V
.end method

.class public interface abstract Lcom/unisound/vui/common/media/MusicPlayer$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/common/media/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onOperateCommandChange(I)V
.end method

.method public abstract onPlayStateChanged(I)V
.end method

.method public abstract onPlayerError(Ljava/lang/String;)V
.end method

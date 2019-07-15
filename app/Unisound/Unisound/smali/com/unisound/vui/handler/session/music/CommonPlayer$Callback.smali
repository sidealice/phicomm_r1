.class public interface abstract Lcom/unisound/vui/handler/session/music/CommonPlayer$Callback;
.super Ljava/lang/Object;
.source "CommonPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/CommonPlayer;
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

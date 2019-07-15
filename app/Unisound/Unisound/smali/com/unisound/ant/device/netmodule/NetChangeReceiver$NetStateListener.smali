.class public interface abstract Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;
.super Ljava/lang/Object;
.source "NetChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/netmodule/NetChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetStateListener"
.end annotation


# virtual methods
.method public abstract onNetConnected()V
.end method

.method public abstract onNetConnecting()V
.end method

.method public abstract onNetDisconnected()V
.end method

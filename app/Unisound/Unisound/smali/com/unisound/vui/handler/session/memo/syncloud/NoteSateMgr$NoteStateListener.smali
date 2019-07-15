.class public interface abstract Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr$NoteStateListener;
.super Ljava/lang/Object;
.source "NoteSateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/memo/syncloud/NoteSateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NoteStateListener"
.end annotation


# virtual methods
.method public abstract remoteAddNote(Lcom/unisound/ant/device/bean/NoteInfo;)V
.end method

.method public abstract remoteDeleteNote(Lcom/unisound/ant/device/bean/NoteInfo;)V
.end method

.method public abstract remoteUpdateNote(Lcom/unisound/ant/device/bean/NoteInfo;)V
.end method

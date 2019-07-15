.class public interface abstract Lcom/easydlna/dlna/dlnaclient/DMCClient$DMCCallback;
.super Ljava/lang/Object;
.source "DMCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easydlna/dlna/dlnaclient/DMCClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DMCCallback"
.end annotation


# virtual methods
.method public abstract DMCServiceStatusNotify(I)V
.end method

.method public abstract DlnaDeviceStatusNotify(Lcom/easydlna/dlna/service/DlnaDevice;)V
.end method

.method public abstract DlnaFilesNotify(Ljava/lang/String;III)V
.end method

.method public abstract DlnaPlayStatusNotify(Ljava/lang/String;Lcom/easydlna/dlna/service/RenderStatus;)V
.end method

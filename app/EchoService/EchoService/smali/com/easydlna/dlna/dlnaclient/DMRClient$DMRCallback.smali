.class public interface abstract Lcom/easydlna/dlna/dlnaclient/DMRClient$DMRCallback;
.super Ljava/lang/Object;
.source "DMRClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easydlna/dlna/dlnaclient/DMRClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DMRCallback"
.end annotation


# virtual methods
.method public abstract DMRServiceStatusNotify(I)V
.end method

.method public abstract GetPosition()I
.end method

.method public abstract Pause()I
.end method

.method public abstract Play()I
.end method

.method public abstract Seek(I)I
.end method

.method public abstract SetDataSource(Ljava/lang/String;)I
.end method

.method public abstract Stop()I
.end method

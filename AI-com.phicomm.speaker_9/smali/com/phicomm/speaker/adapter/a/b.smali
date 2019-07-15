.class public Lcom/phicomm/speaker/adapter/a/b;
.super Lcom/phicomm/speaker/adapter/a/a/a;
.source "LocalVideoChat.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/phicomm/speaker/adapter/a/a/a;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/phicomm/speaker/adapter/a/b;->a(J)V

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/adapter/a/b;->b(Z)V

    return-void
.end method

.class public Lcom/phicomm/speaker/model/common/d;
.super Landroid/os/Handler;
.source "MainHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

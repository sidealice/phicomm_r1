.class public Lcom/phicomm/speaker/f/a/l;
.super Ljava/lang/Object;
.source "WakeNameUtil.java"


# direct methods
.method public static a(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.class public Lcom/unisound/lib/device/WakeupWordLevel;
.super Ljava/lang/Object;
.source "WakeupWordLevel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable(I)Z
    .locals 2

    const/4 v0, 0x6

    .line 15
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

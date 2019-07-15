.class public Lcom/phicomm/speaker/device/custom/lights/PhicommLightIndexProcessor;
.super Ljava/lang/Object;
.source "PhicommLightIndexProcessor.java"


# static fields
.field private static final WHITE_LIGHT_NUMBER:I = 0x18

.field private static final WHITE_LIGHT_TAG:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIndex(I)I
    .locals 1
    .param p0, "angle"    # I

    .prologue
    .line 18
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/lights/PhicommLightIndexProcessor;->perHandleAngle(I)I

    move-result p0

    .line 19
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/lights/PhicommLightIndexProcessor;->getIndexFromAngle(I)I

    move-result v0

    return v0
.end method

.method private static getIndexFromAngle(I)I
    .locals 3
    .param p0, "angle"    # I

    .prologue
    .line 37
    const/4 v0, 0x1

    .line 38
    .local v0, "lightsIndex":I
    rem-int/lit8 v1, p0, 0xf

    .line 39
    .local v1, "surplus":I
    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    .line 40
    div-int/lit8 v2, p0, 0xf

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 44
    :goto_0
    const/16 v2, 0x18

    if-le v0, v2, :cond_0

    .line 45
    add-int/lit8 v0, v0, -0x18

    .line 47
    :cond_0
    return v0

    .line 42
    :cond_1
    div-int/lit8 v2, p0, 0xf

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private static perHandleAngle(I)I
    .locals 2
    .param p0, "angle"    # I

    .prologue
    const/16 v1, 0x168

    .line 24
    if-ltz p0, :cond_0

    if-lt p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x0

    .line 26
    :cond_1
    add-int/lit16 v0, p0, -0x168

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 28
    add-int/lit16 p0, p0, 0x10e

    .line 29
    if-lt p0, v1, :cond_2

    .line 30
    add-int/lit16 p0, p0, -0x168

    .line 32
    :cond_2
    return p0
.end method

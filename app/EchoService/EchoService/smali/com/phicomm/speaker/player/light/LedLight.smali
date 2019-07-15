.class public Lcom/phicomm/speaker/player/light/LedLight;
.super Ljava/lang/Object;
.source "LedLight.java"


# static fields
.field private static mColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "ledLight-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/phicomm/speaker/player/light/LedLight;->mColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setColor(JI)V
    .locals 2
    .param p0, "ledMask"    # J
    .param p2, "color"    # I

    .prologue
    .line 13
    sget v0, Lcom/phicomm/speaker/player/light/LedLight;->mColor:I

    if-eq v0, p2, :cond_0

    .line 14
    invoke-static {p0, p1, p2}, Lcom/phicomm/speaker/player/light/LedLight;->set_color(JI)V

    .line 15
    sput p2, Lcom/phicomm/speaker/player/light/LedLight;->mColor:I

    .line 17
    :cond_0
    return-void
.end method

.method public static native set_color(JI)V
.end method

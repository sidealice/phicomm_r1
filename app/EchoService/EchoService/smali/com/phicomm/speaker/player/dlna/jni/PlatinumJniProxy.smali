.class public Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;
.super Ljava/lang/Object;
.source "PlatinumJniProxy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "Proxy"

    sput-object v0, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->TAG:Ljava/lang/String;

    .line 12
    const-string v0, "platinum-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static responseGenaEvent(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "cmd"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    const-string p1, ""

    .line 40
    :cond_0
    if-nez p2, :cond_1

    .line 41
    const-string p2, ""

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 45
    .local v1, "ret":Z
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->responseGenaEvent(I[B[B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 49
    :goto_0
    return v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static native responseGenaEvent(I[B[B)Z
.end method

.method public static native startDeviceDiscovery()V
.end method

.method public static native startDlnaMediaRender([B[B)I
.end method

.method public static startMediaRender(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "friendname"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 23
    if-nez p0, :cond_0

    const-string p0, ""

    .line 24
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 25
    :cond_1
    const/4 v1, -0x1

    .line 27
    .local v1, "ret":I
    :try_start_0
    sget-object v2, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uuid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->startDlnaMediaRender([B[B)I

    move-result v1

    .line 29
    sget-object v2, Lcom/phicomm/speaker/player/dlna/jni/PlatinumJniProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    const/4 v1, 0x0

    .line 34
    return v1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static native stopDeviceDiscovery()V
.end method

.method public static native stopDlnaMediaRender()V
.end method

.class public Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;
.super Ljava/lang/Object;
.source "PhicommPlayerUtils.java"


# static fields
.field public static final MESSAGE_PAUSE:I = 0x2

.field public static final MESSAGE_PLAY_NEXT:I = 0x6

.field public static final MESSAGE_PLAY_PREV:I = 0x5

.field public static final MESSAGE_RESUME:I = 0x3

.field public static final MESSAGE_STOP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PhicommPlayerUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static pause(Landroid/os/MessageDispatchManager;)V
    .locals 4
    .param p0, "messageDispatchManager"    # Landroid/os/MessageDispatchManager;

    .prologue
    .line 28
    const-string v0, "PhicommPlayerUtils"

    const-string v1, "pause: start to pause"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 31
    return-void
.end method

.method public static playNext(Landroid/os/MessageDispatchManager;)V
    .locals 4
    .param p0, "messageDispatchManager"    # Landroid/os/MessageDispatchManager;

    .prologue
    .line 52
    const-string v0, "PhicommPlayerUtils"

    const-string v1, "playNext: start to play next"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x4

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 55
    return-void
.end method

.method public static playPrev(Landroid/os/MessageDispatchManager;)V
    .locals 4
    .param p0, "messageDispatchManager"    # Landroid/os/MessageDispatchManager;

    .prologue
    .line 46
    const-string v0, "PhicommPlayerUtils"

    const-string v1, "playPrev: start to play prev"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 49
    return-void
.end method

.method public static resume(Landroid/os/MessageDispatchManager;)V
    .locals 4
    .param p0, "messageDispatchManager"    # Landroid/os/MessageDispatchManager;

    .prologue
    .line 34
    const-string v0, "PhicommPlayerUtils"

    const-string v1, "resume: start to resume"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 37
    return-void
.end method

.method public static stop(Landroid/os/MessageDispatchManager;)V
    .locals 3
    .param p0, "messageDispatchManager"    # Landroid/os/MessageDispatchManager;

    .prologue
    const/4 v2, 0x4

    .line 40
    const-string v0, "PhicommPlayerUtils"

    const-string v1, "stop: start to stop"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 43
    return-void
.end method

.class public Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;
.super Ljava/lang/Object;
.source "PhicommXController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhicommXController"


# instance fields
.field private mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    .line 22
    return-void
.end method


# virtual methods
.method public closeAmbientLight()V
    .locals 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/4 v1, 0x4

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 210
    return-void
.end method

.method public closeBlueToothStatus()V
    .locals 5

    .prologue
    .line 40
    const-string v0, "PhicommXController"

    const-string v1, "close buletooth status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x40

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 42
    return-void
.end method

.method public closeConnectNetStatus()V
    .locals 5

    .prologue
    .line 68
    const-string v0, "PhicommXController"

    const-string v1, "close connect net status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/high16 v1, 0x40000

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 70
    return-void
.end method

.method public closeMusic()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 131
    return-void
.end method

.method public closeMusicFadeout()V
    .locals 5

    .prologue
    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/4 v1, 0x4

    const/16 v2, 0xa

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 140
    return-void
.end method

.method public closeSoundEffect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 224
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x4000

    const/16 v2, 0x64

    .line 225
    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v3

    .line 224
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 226
    return-void
.end method

.method public openAmbientLight()V
    .locals 5

    .prologue
    .line 202
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/4 v1, 0x4

    const/16 v2, 0x40

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 203
    return-void
.end method

.method public openBlueToothStatus()V
    .locals 5

    .prologue
    .line 30
    const-string v0, "PhicommXController"

    const-string v1, "enter buletooth status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 32
    return-void
.end method

.method public openConnectNetStatus()V
    .locals 5

    .prologue
    .line 58
    const-string v0, "PhicommXController"

    const-string v1, "open connect net status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/high16 v1, 0x40000

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 60
    return-void
.end method

.method public openPhijoinConnectNetStatus(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 78
    const-string v0, "PhicommXController"

    const-string v1, "open phijoin connect net status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/high16 v1, 0x40000

    const/4 v2, 0x3

    const/4 v3, -0x1

    check-cast p1, Landroid/os/ParcelableUtil;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 81
    return-void
.end method

.method public openSoundEffect()V
    .locals 5

    .prologue
    .line 216
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x4000

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 217
    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    .line 216
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 218
    return-void
.end method

.method public resetBlueToothStatus()V
    .locals 5

    .prologue
    .line 48
    const-string v0, "PhicommXController"

    const-string v1, "reset buletooth status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x40

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 50
    return-void
.end method

.method public resetDevice()V
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x4000

    const/16 v2, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 149
    return-void
.end method

.method public syncBindFailEvent(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/high16 v1, 0x200000

    const/16 v2, 0x65

    const/4 v3, -0x1

    .line 195
    invoke-static {p1}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    .line 194
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 196
    return-void
.end method

.method public syncBindSuccessEvent()V
    .locals 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/high16 v1, 0x200000

    const/16 v2, 0x64

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 186
    return-void
.end method

.method public syncDeviceStatus(Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;)V
    .locals 8
    .param p1, "status"    # Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 99
    const/4 v7, 0x0

    .line 100
    .local v7, "data":Landroid/os/Parcelable;
    sget-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$1;->$SwitchMap$com$phicomm$speaker$device$custom$ipc$PhicommXController$DeviceStatus:[I

    invoke-virtual {p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    const-string v0, "PhicommXController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " status"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const v2, 0x8000

    const/16 v4, 0x4000

    const/4 v6, -0x1

    move v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 120
    return-void

    .line 102
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v7

    .line 103
    goto :goto_0

    .line 105
    :pswitch_1
    invoke-static {v1}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v7

    .line 106
    goto :goto_0

    .line 108
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v7

    .line 109
    goto :goto_0

    .line 111
    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v7

    .line 112
    goto :goto_0

    .line 114
    :pswitch_4
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v7

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public triggeredDoubleClickEvent()V
    .locals 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x100

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 169
    return-void
.end method

.method public triggeredOneClickEvent()V
    .locals 5

    .prologue
    .line 177
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x100

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 179
    return-void
.end method

.method public triggeredTropleClickEvent()V
    .locals 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x100

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 159
    return-void
.end method

.class public Lcom/unisound/lib/msgcenter/bean/GeneralInfo;
.super Ljava/lang/Object;
.source "GeneralInfo.java"


# instance fields
.field availableMemory:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "availableMemory"
    .end annotation
.end field

.field cpuSize:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cpuSize"
    .end annotation
.end field

.field isRetainCamera:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRetainCamera"
    .end annotation
.end field

.field isRetainScreen:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRetainScreen"
    .end annotation
.end field

.field isRetainSpeaker:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRetainSpeaker"
    .end annotation
.end field

.field isSurpportBluetooth:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSurpportBluetooth"
    .end annotation
.end field

.field isSurpportDirectionBySound:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSurpportDirectionBySound"
    .end annotation
.end field

.field isSurpportGps:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSurpportGps"
    .end annotation
.end field

.field isSurpportIndoorGps:Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isSurpportIndoorGps"
    .end annotation
.end field

.field otherSensor:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "otherSensor"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field totalMemory:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalMemory"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableMemory()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->availableMemory:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuSize()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->cpuSize:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherSensor()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->otherSensor:Ljava/util/List;

    return-object v0
.end method

.method public getTotalMemory()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->totalMemory:Ljava/lang/String;

    return-object v0
.end method

.method public isRetainCamera()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isRetainCamera:Z

    return v0
.end method

.method public isRetainScreen()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 117
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isRetainScreen:Z

    return v0
.end method

.method public isRetainSpeaker()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 171
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isRetainSpeaker:Z

    return v0
.end method

.method public isSurpportBluetooth()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 189
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isSurpportBluetooth:Z

    return v0
.end method

.method public isSurpportDirectionBySound()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 225
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isSurpportDirectionBySound:Z

    return v0
.end method

.method public isSurpportGps()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 153
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isSurpportGps:Z

    return v0
.end method

.method public isSurpportIndoorGps()Z
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 207
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isSurpportIndoorGps:Z

    return v0
.end method

.method public setAvailableMemory(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->availableMemory:Ljava/lang/String;

    return-void
.end method

.method public setCpuSize(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 108
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->cpuSize:Ljava/lang/String;

    return-void
.end method

.method public setOtherSensor(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->otherSensor:Ljava/util/List;

    return-void
.end method

.method public setRetainCamera(Z)V
    .locals 0
    .param p1    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 144
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isRetainCamera:Z

    return-void
.end method

.method public setRetainScreen(Z)V
    .locals 0
    .param p1    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 126
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isRetainScreen:Z

    return-void
.end method

.method public setRetainSpeaker(Z)V
    .locals 0
    .param p1    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 180
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isRetainSpeaker:Z

    return-void
.end method

.method public setSurpportBluetooth(Z)V
    .locals 0
    .param p1    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 198
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isSurpportBluetooth:Z

    return-void
.end method

.method public setSurpportDirectionBySound(Z)V
    .locals 0
    .param p1    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 234
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isSurpportDirectionBySound:Z

    return-void
.end method

.method public setSurpportGps(Z)V
    .locals 0
    .param p1    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 162
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isSurpportGps:Z

    return-void
.end method

.method public setSurpportIndoorGps(Z)V
    .locals 0
    .param p1    # Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 216
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->isSurpportIndoorGps:Z

    return-void
.end method

.method public setTotalMemory(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 72
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/bean/GeneralInfo;->totalMemory:Ljava/lang/String;

    return-void
.end method

.class public Lcom/unisound/ant/device/devicelayer/DeviceNetState;
.super Ljava/lang/Object;
.source "DeviceNetState.java"


# instance fields
.field inNetIp:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "inNetIp"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inNetIp"
    .end annotation
.end field

.field netType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "netType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "netType"
    .end annotation
.end field

.field outNetIp:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "outNetIp"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "outNetIp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInNetIp()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unisound/ant/device/devicelayer/DeviceNetState;->inNetIp:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unisound/ant/device/devicelayer/DeviceNetState;->netType:Ljava/lang/String;

    return-object v0
.end method

.method public getOutNetIp()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unisound/ant/device/devicelayer/DeviceNetState;->outNetIp:Ljava/lang/String;

    return-object v0
.end method

.method public setInNetIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "inNetIp"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 28
    iput-object p1, p0, Lcom/unisound/ant/device/devicelayer/DeviceNetState;->inNetIp:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setNetType(Ljava/lang/String;)V
    .locals 0
    .param p1, "netType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    iput-object p1, p0, Lcom/unisound/ant/device/devicelayer/DeviceNetState;->netType:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setOutNetIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "outNetIp"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unisound/ant/device/devicelayer/DeviceNetState;->outNetIp:Ljava/lang/String;

    .line 37
    return-void
.end method

.class public Lcom/unisound/lib/msgcenter/devicelayer/DeviceNetState;
.super Ljava/lang/Object;
.source "DeviceNetState.java"


# instance fields
.field inNetIp:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inNetIp"
    .end annotation
.end field

.field netType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "netType"
    .end annotation
.end field

.field outNetIp:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "outNetIp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInNetIp()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceNetState;->inNetIp:Ljava/lang/String;

    return-object v0
.end method

.method public getNetType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceNetState;->netType:Ljava/lang/String;

    return-object v0
.end method

.method public getOutNetIp()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceNetState;->outNetIp:Ljava/lang/String;

    return-object v0
.end method

.method public setInNetIp(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceNetState;->inNetIp:Ljava/lang/String;

    return-void
.end method

.method public setNetType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceNetState;->netType:Ljava/lang/String;

    return-void
.end method

.method public setOutNetIp(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/devicelayer/DeviceNetState;->outNetIp:Ljava/lang/String;

    return-void
.end method

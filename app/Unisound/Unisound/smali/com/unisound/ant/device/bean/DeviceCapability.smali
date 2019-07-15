.class public Lcom/unisound/ant/device/bean/DeviceCapability;
.super Ljava/lang/Object;
.source "DeviceCapability.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/bean/DeviceCapability$Vendors;,
        Lcom/unisound/ant/device/bean/DeviceCapability$Detail;
    }
.end annotation


# instance fields
.field capability:Ljava/lang/String;

.field detailInfo:Lcom/unisound/ant/device/bean/DeviceCapability$Detail;

.field operations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapability()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DeviceCapability;->capability:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailInfo()Lcom/unisound/ant/device/bean/DeviceCapability$Detail;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DeviceCapability;->detailInfo:Lcom/unisound/ant/device/bean/DeviceCapability$Detail;

    return-object v0
.end method

.method public getOperations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DeviceCapability;->operations:Ljava/util/List;

    return-object v0
.end method

.method public setCapability(Ljava/lang/String;)V
    .locals 0
    .param p1, "capability"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceCapability;->capability:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setDetailInfo(Lcom/unisound/ant/device/bean/DeviceCapability$Detail;)V
    .locals 0
    .param p1, "detailInfo"    # Lcom/unisound/ant/device/bean/DeviceCapability$Detail;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceCapability;->detailInfo:Lcom/unisound/ant/device/bean/DeviceCapability$Detail;

    .line 36
    return-void
.end method

.method public setOperations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceCapability;->operations:Ljava/util/List;

    .line 28
    return-void
.end method

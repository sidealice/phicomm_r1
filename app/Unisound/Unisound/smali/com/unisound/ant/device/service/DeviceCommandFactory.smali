.class public final Lcom/unisound/ant/device/service/DeviceCommandFactory;
.super Ljava/lang/Object;
.source "DeviceCommandFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    .locals 2
    .param p0, "capability"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TE;)",
            "Lcom/unisound/ant/device/bean/UnisoundDeviceCommand",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "parameter":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;-><init>()V

    const-string v1, "1.10.0"

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->setVersion(Ljava/lang/String;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->setCapability(Ljava/lang/String;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->setOperation(Ljava/lang/String;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p2}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->setParameter(Ljava/lang/Object;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand$Builder;->build()Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v0

    .line 12
    return-object v0
.end method

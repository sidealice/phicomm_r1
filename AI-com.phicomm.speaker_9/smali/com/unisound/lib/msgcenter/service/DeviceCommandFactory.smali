.class public final Lcom/unisound/lib/msgcenter/service/DeviceCommandFactory;
.super Ljava/lang/Object;
.source "DeviceCommandFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TE;)",
            "Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand<",
            "TE;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;-><init>()V

    const-string v1, "1.10.0"

    invoke-virtual {v0, v1}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->setVersion(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->setCapability(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;

    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->setOperation(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0, p2}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->setParameter(Ljava/lang/Object;)Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand$Builder;->build()Lcom/unisound/lib/msgcenter/bean/UnisoundDeviceCommand;

    move-result-object p0

    return-object p0
.end method

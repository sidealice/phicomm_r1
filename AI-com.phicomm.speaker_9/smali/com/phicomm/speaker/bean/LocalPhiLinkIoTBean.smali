.class public Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;
.super Ljava/lang/Object;
.source "LocalPhiLinkIoTBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x350fe421ce7a97aL


# instance fields
.field private dev_id:Ljava/lang/String;

.field private device_type:Ljava/lang/String;

.field public extra_data:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;

.field private hardware_version:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rom_version:Ljava/lang/String;

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDev_id()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->dev_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_type()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->device_type:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware_version()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->hardware_version:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRom_version()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->rom_version:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setDev_id(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->dev_id:Ljava/lang/String;

    return-void
.end method

.method public setDevice_type(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->device_type:Ljava/lang/String;

    return-void
.end method

.method public setHardware_version(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->hardware_version:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->mac:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->model:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRom_version(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->rom_version:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;->udid:Ljava/lang/String;

    return-void
.end method

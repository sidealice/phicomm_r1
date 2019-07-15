.class public Lcom/unisound/lib/usercenter/bean/UserBindInfo;
.super Ljava/lang/Object;
.source "UserBindInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;
    }
.end annotation


# instance fields
.field private command:Ljava/lang/String;

.field private deviceProfile:Lcom/unisound/lib/bind/BaseDeviceProfileInfo;

.field private promise:Lcom/unisound/lib/devices/callback/bean/DevicePromise;

.field private tcl:Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0.0"

    .line 10
    iput-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceProfile()Lcom/unisound/lib/bind/BaseDeviceProfileInfo;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->deviceProfile:Lcom/unisound/lib/bind/BaseDeviceProfileInfo;

    return-object v0
.end method

.method public getPromise()Lcom/unisound/lib/devices/callback/bean/DevicePromise;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->promise:Lcom/unisound/lib/devices/callback/bean/DevicePromise;

    return-object v0
.end method

.method public getTcl()Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->tcl:Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->command:Ljava/lang/String;

    return-void
.end method

.method public setDeviceProfile(Lcom/unisound/lib/bind/BaseDeviceProfileInfo;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->deviceProfile:Lcom/unisound/lib/bind/BaseDeviceProfileInfo;

    return-void
.end method

.method public setPromise(Lcom/unisound/lib/devices/callback/bean/DevicePromise;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->promise:Lcom/unisound/lib/devices/callback/bean/DevicePromise;

    return-void
.end method

.method public setTcl(Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->tcl:Lcom/unisound/lib/usercenter/bean/UserBindInfo$EffectiveToken;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/UserBindInfo;->version:Ljava/lang/String;

    return-void
.end method

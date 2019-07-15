.class public Lcom/unisound/lib/bind/DeviceProfileInfo;
.super Lcom/unisound/lib/bind/BaseDeviceProfileInfo;
.source "DeviceProfileInfo.java"


# instance fields
.field private isActive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/unisound/lib/bind/BaseDeviceProfileInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/unisound/lib/bind/DeviceProfileInfo;->isActive:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/unisound/lib/bind/DeviceProfileInfo;->isActive:Z

    return-void
.end method

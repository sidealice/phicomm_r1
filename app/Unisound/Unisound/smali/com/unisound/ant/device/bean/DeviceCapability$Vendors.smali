.class public final Lcom/unisound/ant/device/bean/DeviceCapability$Vendors;
.super Ljava/lang/Object;
.source "DeviceCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/bean/DeviceCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vendors"
.end annotation


# instance fields
.field extraInfo:Ljava/lang/String;

.field vendorName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DeviceCapability$Vendors;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DeviceCapability$Vendors;->vendorName:Ljava/lang/String;

    return-object v0
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceCapability$Vendors;->extraInfo:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setVendorName(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendorName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceCapability$Vendors;->vendorName:Ljava/lang/String;

    .line 60
    return-void
.end method

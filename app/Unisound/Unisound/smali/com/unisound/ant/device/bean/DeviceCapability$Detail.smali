.class public final Lcom/unisound/ant/device/bean/DeviceCapability$Detail;
.super Ljava/lang/Object;
.source "DeviceCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/bean/DeviceCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Detail"
.end annotation


# instance fields
.field supportVendors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/DeviceCapability$Vendors;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportVendors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/DeviceCapability$Vendors;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/unisound/ant/device/bean/DeviceCapability$Detail;->supportVendors:Ljava/util/List;

    return-object v0
.end method

.method public setSupportVendors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/DeviceCapability$Vendors;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "supportVendors":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/DeviceCapability$Vendors;>;"
    iput-object p1, p0, Lcom/unisound/ant/device/bean/DeviceCapability$Detail;->supportVendors:Ljava/util/List;

    .line 47
    return-void
.end method

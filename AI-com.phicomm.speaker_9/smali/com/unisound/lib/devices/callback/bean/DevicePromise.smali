.class public Lcom/unisound/lib/devices/callback/bean/DevicePromise;
.super Ljava/lang/Object;
.source "DevicePromise.java"


# instance fields
.field private serviceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceType()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/unisound/lib/devices/callback/bean/DevicePromise;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public setServiceType(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/unisound/lib/devices/callback/bean/DevicePromise;->serviceType:Ljava/lang/String;

    return-void
.end method

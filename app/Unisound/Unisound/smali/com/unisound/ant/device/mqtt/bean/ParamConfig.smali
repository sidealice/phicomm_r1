.class public final Lcom/unisound/ant/device/mqtt/bean/ParamConfig;
.super Ljava/lang/Object;
.source "ParamConfig.java"


# static fields
.field public static final DEVICE_TYPE_GENERAL:Ljava/lang/String; = "generalDevice"

.field public static final DEVICE_TYPE_PHONE:Ljava/lang/String; = "phone"

.field private static isOutNet:Z

.field private static lconRequest:Lcom/unisound/ant/device/mqtt/bean/LconRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/ant/device/mqtt/bean/LconRequest",
            "<",
            "Lcom/unisound/ant/device/mqtt/bean/LconInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLconRequest()Lcom/unisound/ant/device/mqtt/bean/LconRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/unisound/ant/device/mqtt/bean/LconRequest",
            "<",
            "Lcom/unisound/ant/device/mqtt/bean/LconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    sget-object v0, Lcom/unisound/ant/device/mqtt/bean/ParamConfig;->lconRequest:Lcom/unisound/ant/device/mqtt/bean/LconRequest;

    return-object v0
.end method

.method public static isOutNet()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/unisound/ant/device/mqtt/bean/ParamConfig;->isOutNet:Z

    return v0
.end method

.method public static setIsOutNet(Z)V
    .locals 0
    .param p0, "isOutNet"    # Z

    .prologue
    .line 29
    sput-boolean p0, Lcom/unisound/ant/device/mqtt/bean/ParamConfig;->isOutNet:Z

    .line 30
    return-void
.end method

.method public static setLconRequest(Lcom/unisound/ant/device/mqtt/bean/LconRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/ant/device/mqtt/bean/LconRequest",
            "<",
            "Lcom/unisound/ant/device/mqtt/bean/LconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "info":Lcom/unisound/ant/device/mqtt/bean/LconRequest;, "Lcom/unisound/ant/device/mqtt/bean/LconRequest<Lcom/unisound/ant/device/mqtt/bean/LconInfo;>;"
    sput-object p0, Lcom/unisound/ant/device/mqtt/bean/ParamConfig;->lconRequest:Lcom/unisound/ant/device/mqtt/bean/LconRequest;

    .line 22
    return-void
.end method

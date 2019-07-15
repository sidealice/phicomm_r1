.class public Lcom/unisound/ant/device/bean/AccessoryInfo;
.super Ljava/lang/Object;
.source "AccessoryInfo.java"


# instance fields
.field private controllerFlag:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "controllerFlag"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AccessoryInfo;->controllerFlag:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/unisound/ant/device/bean/AccessoryInfo;->token:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getControllerFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AccessoryInfo;->controllerFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AccessoryInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setControllerFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "controllerFlag"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AccessoryInfo;->controllerFlag:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AccessoryInfo;->token:Ljava/lang/String;

    .line 29
    return-void
.end method

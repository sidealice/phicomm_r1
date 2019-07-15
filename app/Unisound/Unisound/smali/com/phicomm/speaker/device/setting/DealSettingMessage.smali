.class public Lcom/phicomm/speaker/device/setting/DealSettingMessage;
.super Ljava/lang/Object;
.source "DealSettingMessage.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/setting/SettingInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "DealSettingMessage"

.field private static dealSettingMessage:Lcom/phicomm/speaker/device/setting/DealSettingMessage;


# instance fields
.field private context:Landroid/content/Context;

.field private mPM:Landroid/os/PowerManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/setting/DealSettingMessage;->mPM:Landroid/os/PowerManager;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/setting/DealSettingMessage;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/phicomm/speaker/device/setting/DealSettingMessage;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/phicomm/speaker/device/setting/DealSettingMessage;->dealSettingMessage:Lcom/phicomm/speaker/device/setting/DealSettingMessage;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lcom/phicomm/speaker/device/setting/DealSettingMessage;->dealSettingMessage:Lcom/phicomm/speaker/device/setting/DealSettingMessage;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/phicomm/speaker/device/setting/DealSettingMessage;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/setting/DealSettingMessage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/phicomm/speaker/device/setting/DealSettingMessage;->dealSettingMessage:Lcom/phicomm/speaker/device/setting/DealSettingMessage;

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public dealMessage(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 36
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/unisound/vui/util/entity/CommandInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 37
    check-cast v0, Lcom/unisound/vui/util/entity/CommandInfo;

    .line 38
    .local v0, "cmdInfo":Lcom/unisound/vui/util/entity/CommandInfo;
    const-string v1, "DealSettingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleControlWakeup cmdInfo.getCommand()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/unisound/vui/util/entity/CommandInfo;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .end local v0    # "cmdInfo":Lcom/unisound/vui/util/entity/CommandInfo;
    :cond_0
    return-void
.end method

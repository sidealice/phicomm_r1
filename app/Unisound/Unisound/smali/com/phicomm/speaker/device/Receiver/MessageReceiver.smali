.class public Lcom/phicomm/speaker/device/Receiver/MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageReceiver.java"


# static fields
.field public static final SP_SYSTEM_BOOTLOADER:Ljava/lang/String; = "systemBootloader"

.field private static final TAG:Ljava/lang/String; = "MessageReceiver"

.field private static sSystemBootloader:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->sSystemBootloader:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isSystemBootloader(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->sSystemBootloader:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "systemBootloader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->sSystemBootloader:Ljava/lang/Boolean;

    .line 58
    :cond_0
    sget-object v0, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->sSystemBootloader:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setSystemBootloader(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isBootloader"    # Z

    .prologue
    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->sSystemBootloader:Ljava/lang/Boolean;

    .line 48
    invoke-static {p0}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "systemBootloader"

    invoke-virtual {v0, v1, p1}, Lcom/unisound/vui/util/SharedPreferencesHelper;->saveBooleanValue(Ljava/lang/String;Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    const-string v2, "MessageReceiver"

    const-string v3, "action boot complted"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->setSystemBootloader(Landroid/content/Context;Z)V

    .line 30
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/phicomm/speaker/device/ui/MainActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v1, "mintent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    const-string v2, "car_theft_upload"

    invoke-static {p1, v2, v4}, Lcom/unisound/vui/util/UserPerferenceUtil;->getData(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    const-string v2, "car_theft_upload"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/unisound/vui/util/UserPerferenceUtil;->putData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 39
    .end local v1    # "mintent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local v1    # "mintent":Landroid/content/Intent;
    :cond_1
    const-string v2, "MessageReceiver"

    const-string v3, "CarTheft err "

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

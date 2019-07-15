.class public Lcom/phicomm/speaker/device/utils/PhicommMessageManager;
.super Ljava/lang/Object;
.source "PhicommMessageManager.java"


# static fields
.field public static DOMAIN_DEVICE_ID:I = 0x0

.field public static DOMAIN_MATCH_PHIJOIN_CONFIG:I = 0x0

.field public static DOMAIN_UDID:I = 0x0

.field private static final PHICOMM_MESSAGE_CENTER_SYSTEM_NAME:Ljava/lang/String; = "msgcenter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->DOMAIN_DEVICE_ID:I

    .line 17
    const/4 v0, 0x2

    sput v0, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->DOMAIN_UDID:I

    .line 19
    const/16 v0, 0xb

    sput v0, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->DOMAIN_MATCH_PHIJOIN_CONFIG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static messageCenter(Landroid/content/Context;)Landroid/os/MessageDispatchManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "msgcenter"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/MessageDispatchManager;

    .line 29
    return-object v0
.end method

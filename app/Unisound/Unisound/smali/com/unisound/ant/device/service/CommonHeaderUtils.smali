.class public final Lcom/unisound/ant/device/service/CommonHeaderUtils;
.super Ljava/lang/Object;
.source "CommonHeaderUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static buildUpdateReqHeader()Lcom/unisound/ant/device/service/MessageHeader;
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/vui/util/SystemUitls;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "version":Ljava/lang/String;
    new-instance v1, Lcom/unisound/ant/device/service/MessageHeader;

    const-string v2, "uploadGDRequest"

    invoke-direct {v1, v2, v0}, Lcom/unisound/ant/device/service/MessageHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildUpdateReqHeader(Ljava/lang/String;)Lcom/unisound/ant/device/service/MessageHeader;
    .locals 2
    .param p0, "messageType"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/vui/util/SystemUitls;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "version":Ljava/lang/String;
    new-instance v1, Lcom/unisound/ant/device/service/MessageHeader;

    invoke-direct {v1, p0, v0}, Lcom/unisound/ant/device/service/MessageHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildUploadReqHeader()Lcom/unisound/ant/device/service/MessageHeader;
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/vui/util/SystemUitls;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "version":Ljava/lang/String;
    new-instance v1, Lcom/unisound/ant/device/service/MessageHeader;

    const-string v2, "uploadPDRequest"

    invoke-direct {v1, v2, v0}, Lcom/unisound/ant/device/service/MessageHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

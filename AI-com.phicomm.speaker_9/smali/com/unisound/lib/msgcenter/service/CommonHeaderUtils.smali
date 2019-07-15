.class public final Lcom/unisound/lib/msgcenter/service/CommonHeaderUtils;
.super Ljava/lang/Object;
.source "CommonHeaderUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUpdateReqHeader()Lcom/unisound/lib/msgcenter/service/MessageHeader;
    .locals 3

    .line 31
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/lib/utils/SystemUitls;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/unisound/lib/msgcenter/service/MessageHeader;

    const-string v2, "uploadPDRequest"

    invoke-direct {v1, v2, v0}, Lcom/unisound/lib/msgcenter/service/MessageHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildUpdateReqHeader(Ljava/lang/String;)Lcom/unisound/lib/msgcenter/service/MessageHeader;
    .locals 2

    .line 21
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/lib/utils/SystemUitls;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/unisound/lib/msgcenter/service/MessageHeader;

    invoke-direct {v1, p0, v0}, Lcom/unisound/lib/msgcenter/service/MessageHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildUploadReqHeader()Lcom/unisound/lib/msgcenter/service/MessageHeader;
    .locals 3

    .line 41
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/lib/utils/SystemUitls;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/unisound/lib/msgcenter/service/MessageHeader;

    const-string v2, "uploadGDRequest"

    invoke-direct {v1, v2, v0}, Lcom/unisound/lib/msgcenter/service/MessageHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.class final Lcom/huawei/hms/support/api/hwid/b;
.super Lcom/huawei/hms/support/api/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/support/api/a<",
        "Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResult;",
        "Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/support/api/a;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;)Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResult;
    .locals 4

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;->getRetCode()I

    move-result v0

    new-instance v1, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResult;

    invoke-direct {v1}, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResult;-><init>()V

    if-nez v0, :cond_0

    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/16 v2, 0x7d1

    const-string v3, "ST is Invalid"

    invoke-direct {v0, v2, v3, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResult;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    return-object v1
.end method

.method public synthetic onComplete(Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/support/api/client/Result;
    .locals 0

    check-cast p1, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/hwid/b;->a(Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;)Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResult;

    move-result-object p1

    return-object p1
.end method

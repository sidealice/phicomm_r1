.class public Lcom/huawei/hms/support/api/hwid/HuaweiIdInternalApi;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoginIntent(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoReq;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/client/ApiClient;",
            "Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoReq;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/huawei/hms/support/api/hwid/b;

    const-string v1, "hwid.loginintent"

    invoke-direct {v0, p0, v1, p1}, Lcom/huawei/hms/support/api/hwid/b;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

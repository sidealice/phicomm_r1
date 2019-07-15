.class public Lcom/huawei/hms/support/api/pay/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/support/api/pay/HuaweiPayApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/support/api/pay/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayResultInfoFromIntent(Landroid/content/Intent;)Lcom/huawei/hms/support/api/pay/PayResultInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SDK_PAY"

    const-string v1, "getPayResultInfoFromIntent intent is null"

    :goto_0
    invoke-static {p1, v1}, Lcom/huawei/hms/support/log/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "SDK_PAY"

    const-string v1, "getPayResultInfoFromIntent bundle is null"

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/huawei/hms/support/api/pay/PayResultInfo;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/pay/PayResultInfo;-><init>()V

    const-string v1, "returnCode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/pay/PayResultInfo;->setReturnCode(I)V

    const-string v1, "userName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/pay/PayResultInfo;->setUserName(Ljava/lang/String;)V

    const-string v1, "orderID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/pay/PayResultInfo;->setOrderID(Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/pay/PayResultInfo;->setAmount(Ljava/lang/String;)V

    const-string v1, "errMsg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/pay/PayResultInfo;->setErrMsg(Ljava/lang/String;)V

    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/pay/PayResultInfo;->setTime(Ljava/lang/String;)V

    const-string v1, "requestId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/pay/PayResultInfo;->setRequestId(Ljava/lang/String;)V

    const-string v1, "sign"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/api/pay/PayResultInfo;->setSign(Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/support/log/c;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SDK_PAY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "final pay result info::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/pay/PayResultInfo;->getReturnCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/huawei/hms/support/log/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public pay(Lcom/huawei/hms/api/HuaweiApiClient;Lcom/huawei/hms/support/api/entity/pay/PayReq;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            "Lcom/huawei/hms/support/api/entity/pay/PayReq;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/pay/PayResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hms/support/log/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SDK_PAY"

    const-string v1, "start to pay"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/huawei/hms/support/api/pay/a/a$a;

    const-string v1, "pay.pay"

    invoke-direct {v0, p1, v1, p2}, Lcom/huawei/hms/support/api/pay/a/a$a;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

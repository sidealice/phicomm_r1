.class Lcom/huawei/hms/support/api/pay/a/a$a;
.super Lcom/huawei/hms/support/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/api/pay/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/support/api/a<",
        "Lcom/huawei/hms/support/api/pay/PayResult;",
        "Lcom/huawei/hms/support/api/entity/pay/PayResp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/support/api/a;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/support/api/entity/pay/PayResp;)Lcom/huawei/hms/support/api/pay/PayResult;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "SDK_PAY"

    const-string v1, "pay resp is null"

    invoke-static {p1, v1}, Lcom/huawei/hms/support/log/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {}, Lcom/huawei/hms/support/log/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SDK_PAY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pay resp :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/huawei/hms/support/api/entity/pay/PayResp;->retCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lcom/huawei/hms/support/api/pay/PayResult;

    invoke-direct {v1}, Lcom/huawei/hms/support/api/pay/PayResult;-><init>()V

    new-instance v2, Lcom/huawei/hms/support/api/client/Status;

    iget v3, p1, Lcom/huawei/hms/support/api/entity/pay/PayResp;->retCode:I

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/pay/PayResp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v2, v3, v0, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/huawei/hms/support/api/pay/PayResult;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    return-object v1
.end method

.method public synthetic onComplete(Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/support/api/client/Result;
    .locals 0

    check-cast p1, Lcom/huawei/hms/support/api/entity/pay/PayResp;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/pay/a/a$a;->a(Lcom/huawei/hms/support/api/entity/pay/PayResp;)Lcom/huawei/hms/support/api/pay/PayResult;

    move-result-object p1

    return-object p1
.end method

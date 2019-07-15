.class Lcom/huawei/hms/support/api/hwid/a/a$a;
.super Lcom/huawei/hms/support/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/api/hwid/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/support/api/a<",
        "Lcom/huawei/hms/support/api/hwid/SignOutResult;",
        "Lcom/huawei/hms/support/api/entity/hwid/SignOutResp;",
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
.method public a(Lcom/huawei/hms/support/api/entity/hwid/SignOutResp;)Lcom/huawei/hms/support/api/hwid/SignOutResult;
    .locals 2

    new-instance p1, Lcom/huawei/hms/support/api/hwid/SignOutResult;

    invoke-direct {p1}, Lcom/huawei/hms/support/api/hwid/SignOutResult;-><init>()V

    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/huawei/hms/support/api/hwid/SignOutResult;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    return-object p1
.end method

.method public synthetic onComplete(Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/support/api/client/Result;
    .locals 0

    check-cast p1, Lcom/huawei/hms/support/api/entity/hwid/SignOutResp;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/hwid/a/a$a;->a(Lcom/huawei/hms/support/api/entity/hwid/SignOutResp;)Lcom/huawei/hms/support/api/hwid/SignOutResult;

    move-result-object p1

    return-object p1
.end method

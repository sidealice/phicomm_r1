.class final Lcom/huawei/hms/support/api/sns/a/j;
.super Lcom/huawei/hms/support/api/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/support/api/a<",
        "Lcom/huawei/hms/support/api/sns/GroupMemListResult;",
        "Lcom/huawei/hms/support/api/entity/sns/internal/GetGroupMemListResp;",
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
.method public a(Lcom/huawei/hms/support/api/entity/sns/internal/GetGroupMemListResp;)Lcom/huawei/hms/support/api/sns/GroupMemListResult;
    .locals 2

    new-instance v0, Lcom/huawei/hms/support/api/sns/GroupMemListResult;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/sns/GroupMemListResult;-><init>()V

    sget-object v1, Lcom/huawei/hms/support/api/client/Status;->SUCCESS:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/sns/GroupMemListResult;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/sns/internal/GetGroupMemListResp;->getGroupMemList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/api/sns/GroupMemListResult;->setGroupMems(Ljava/util/List;)V

    return-object v0
.end method

.method public synthetic onComplete(Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/support/api/client/Result;
    .locals 0

    check-cast p1, Lcom/huawei/hms/support/api/entity/sns/internal/GetGroupMemListResp;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/sns/a/j;->a(Lcom/huawei/hms/support/api/entity/sns/internal/GetGroupMemListResp;)Lcom/huawei/hms/support/api/sns/GroupMemListResult;

    move-result-object p1

    return-object p1
.end method

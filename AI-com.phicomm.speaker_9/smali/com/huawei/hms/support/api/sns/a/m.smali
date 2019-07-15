.class final Lcom/huawei/hms/support/api/sns/a/m;
.super Lcom/huawei/hms/support/api/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/support/api/a<",
        "Lcom/huawei/hms/support/api/sns/UserUnreadMsgCountResult;",
        "Lcom/huawei/hms/support/api/entity/sns/internal/GetUserUnreadMsgResp;",
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
.method public a(Lcom/huawei/hms/support/api/entity/sns/internal/GetUserUnreadMsgResp;)Lcom/huawei/hms/support/api/sns/UserUnreadMsgCountResult;
    .locals 2

    new-instance v0, Lcom/huawei/hms/support/api/sns/UserUnreadMsgCountResult;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/sns/UserUnreadMsgCountResult;-><init>()V

    sget-object v1, Lcom/huawei/hms/support/api/client/Status;->SUCCESS:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/sns/UserUnreadMsgCountResult;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/sns/internal/GetUserUnreadMsgResp;->getUserUnreadMsg()Lcom/huawei/hms/support/api/entity/sns/UserUnreadMsg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/sns/UserUnreadMsg;->getFriendMsg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/api/sns/UserUnreadMsgCountResult;->setCount(I)V

    return-object v0
.end method

.method public synthetic onComplete(Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/support/api/client/Result;
    .locals 0

    check-cast p1, Lcom/huawei/hms/support/api/entity/sns/internal/GetUserUnreadMsgResp;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/sns/a/m;->a(Lcom/huawei/hms/support/api/entity/sns/internal/GetUserUnreadMsgResp;)Lcom/huawei/hms/support/api/sns/UserUnreadMsgCountResult;

    move-result-object p1

    return-object p1
.end method

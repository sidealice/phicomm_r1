.class public Lcom/huawei/hms/support/api/entity/sns/internal/GetUserUnreadMsgResp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private userUnreadMsg:Lcom/huawei/hms/support/api/entity/sns/UserUnreadMsg;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserUnreadMsg()Lcom/huawei/hms/support/api/entity/sns/UserUnreadMsg;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/GetUserUnreadMsgResp;->userUnreadMsg:Lcom/huawei/hms/support/api/entity/sns/UserUnreadMsg;

    return-object v0
.end method

.method public setUserUnreadMsg(Lcom/huawei/hms/support/api/entity/sns/UserUnreadMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/GetUserUnreadMsgResp;->userUnreadMsg:Lcom/huawei/hms/support/api/entity/sns/UserUnreadMsg;

    return-void
.end method

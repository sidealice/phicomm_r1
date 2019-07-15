.class public Lcom/huawei/hms/support/api/entity/sns/internal/GetUnreadMsgResp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private unreadMsg:Lcom/huawei/hms/support/api/entity/sns/UnreadMsg;
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
.method public getUnreadMsg()Lcom/huawei/hms/support/api/entity/sns/UnreadMsg;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/GetUnreadMsgResp;->unreadMsg:Lcom/huawei/hms/support/api/entity/sns/UnreadMsg;

    return-object v0
.end method

.method public setUnreadMsg(Lcom/huawei/hms/support/api/entity/sns/UnreadMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/GetUnreadMsgResp;->unreadMsg:Lcom/huawei/hms/support/api/entity/sns/UnreadMsg;

    return-void
.end method

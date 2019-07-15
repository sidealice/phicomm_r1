.class public Lcom/huawei/hms/support/api/sns/UnreadMsgCountResult;
.super Lcom/huawei/hms/support/api/client/Result;


# instance fields
.field private a:Lcom/huawei/hms/support/api/entity/sns/UnreadMsg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/support/api/client/Result;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnreadMsg()Lcom/huawei/hms/support/api/entity/sns/UnreadMsg;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/sns/UnreadMsgCountResult;->a:Lcom/huawei/hms/support/api/entity/sns/UnreadMsg;

    return-object v0
.end method

.method public setUnreadMsg(Lcom/huawei/hms/support/api/entity/sns/UnreadMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/sns/UnreadMsgCountResult;->a:Lcom/huawei/hms/support/api/entity/sns/UnreadMsg;

    return-void
.end method

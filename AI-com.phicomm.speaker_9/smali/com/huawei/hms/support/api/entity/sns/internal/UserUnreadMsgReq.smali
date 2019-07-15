.class public Lcom/huawei/hms/support/api/entity/sns/internal/UserUnreadMsgReq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private userId:J
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
.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/UserUnreadMsgReq;->userId:J

    return-wide v0
.end method

.method public setUserId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/UserUnreadMsgReq;->userId:J

    return-void
.end method

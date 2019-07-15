.class public Lcom/huawei/hms/support/api/entity/sns/internal/GroupMemListReq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private groupId:J
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
.method public getGroupId()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/GroupMemListReq;->groupId:J

    return-wide v0
.end method

.method public setGroupId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/GroupMemListReq;->groupId:J

    return-void
.end method

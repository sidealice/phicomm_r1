.class public Lcom/huawei/hms/support/api/entity/sns/internal/AddFriendResp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private result:I
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
.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/AddFriendResp;->result:I

    return v0
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/AddFriendResp;->result:I

    return-void
.end method

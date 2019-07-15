.class public Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private param:J
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private type:I
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
.method public getParam()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;->param:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;->type:I

    return v0
.end method

.method public setParam(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;->param:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/support/api/entity/sns/internal/UiIntentReq;->type:I

    return-void
.end method

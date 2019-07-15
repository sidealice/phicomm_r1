.class public Lcom/huawei/hms/support/api/sns/IMStatusResult;
.super Lcom/huawei/hms/support/api/client/Result;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/support/api/client/Result;-><init>()V

    return-void
.end method


# virtual methods
.method public getImStatus()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/support/api/sns/IMStatusResult;->a:I

    return v0
.end method

.method public setImStatus(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/support/api/sns/IMStatusResult;->a:I

    return-void
.end method

.class public Lcom/huawei/hms/support/api/hwid/SignInResult;
.super Lcom/huawei/hms/support/api/client/Result;


# instance fields
.field private a:Lcom/huawei/hms/support/api/hwid/SignInHuaweiId;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/client/Status;)V
    .locals 0

    invoke-direct {p0}, Lcom/huawei/hms/support/api/client/Result;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/support/api/hwid/SignInResult;->status:Lcom/huawei/hms/support/api/client/Status;

    return-void
.end method


# virtual methods
.method public getData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/hwid/SignInResult;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public getSignInHuaweiId()Lcom/huawei/hms/support/api/hwid/SignInHuaweiId;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/hwid/SignInResult;->a:Lcom/huawei/hms/support/api/hwid/SignInHuaweiId;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/hwid/SignInResult;->status:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->isSuccess()Z

    move-result v0

    return v0
.end method

.method public setData(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/hwid/SignInResult;->b:Landroid/content/Intent;

    return-void
.end method

.method public setSignInHuaweiId(Lcom/huawei/hms/support/api/hwid/SignInHuaweiId;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/hwid/SignInResult;->a:Lcom/huawei/hms/support/api/hwid/SignInHuaweiId;

    return-void
.end method

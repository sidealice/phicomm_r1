.class public Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private data:Landroid/content/Intent;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private pendingIntent:Landroid/app/PendingIntent;
    .annotation runtime Lcom/huawei/hms/core/aidl/a/a;
    .end annotation
.end field

.field private retCode:I
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
.method public getData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;->data:Landroid/content/Intent;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;->retCode:I

    return v0
.end method

.method public setData(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;->data:Landroid/content/Intent;

    return-void
.end method

.method public setPendingIntent(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;->data:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;->data:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    iget-object v1, p0, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;->data:Landroid/content/Intent;

    const/high16 v2, 0x8000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;->pendingIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method public setRetCode(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/support/api/entity/hwid/GetLoginInfoResp;->retCode:I

    return-void
.end method

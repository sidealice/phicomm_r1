.class Lcom/huawei/hms/support/api/push/HuaweiPushApiImp$a;
.super Lcom/huawei/hms/support/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/api/push/HuaweiPushApiImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/support/api/a<",
        "Lcom/huawei/hms/support/api/push/GetTagResult;",
        "Lcom/huawei/hms/support/api/entity/push/GetTagsResp;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/huawei/hms/support/api/client/ApiClient;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/support/api/a;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    iput-object p1, p0, Lcom/huawei/hms/support/api/push/HuaweiPushApiImp$a;->a:Lcom/huawei/hms/support/api/client/ApiClient;

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/support/api/entity/push/GetTagsResp;)Lcom/huawei/hms/support/api/push/GetTagResult;
    .locals 5

    new-instance v0, Lcom/huawei/hms/support/api/push/GetTagResult;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/push/GetTagResult;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/support/api/push/HuaweiPushApiImp$a;->a:Lcom/huawei/hms/support/api/client/ApiClient;

    invoke-interface {v1}, Lcom/huawei/hms/support/api/client/ApiClient;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/huawei/hms/support/api/push/a/a/d;

    const-string v3, "tags_info"

    invoke-direct {v2, v1, v3}, Lcom/huawei/hms/support/api/push/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/huawei/hms/support/api/push/a/a/d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/support/api/entity/push/GetTagsResp;->setTags(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/api/push/GetTagResult;->setTagsRes(Lcom/huawei/hms/support/api/entity/push/GetTagsResp;)V

    sget-object v1, Lcom/huawei/hms/support/api/client/Status;->SUCCESS:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/push/GetTagResult;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/huawei/hms/support/api/push/a/b;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HuaweiPushApiImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get tags failed, error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/hms/support/api/push/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/api/push/GetTagResult;->setTagsRes(Lcom/huawei/hms/support/api/entity/push/GetTagsResp;)V

    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    const v1, 0x36119552

    invoke-direct {p1, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/api/push/GetTagResult;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    return-object v0
.end method

.method public synthetic onComplete(Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/support/api/client/Result;
    .locals 0

    check-cast p1, Lcom/huawei/hms/support/api/entity/push/GetTagsResp;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/push/HuaweiPushApiImp$a;->a(Lcom/huawei/hms/support/api/entity/push/GetTagsResp;)Lcom/huawei/hms/support/api/push/GetTagResult;

    move-result-object p1

    return-object p1
.end method

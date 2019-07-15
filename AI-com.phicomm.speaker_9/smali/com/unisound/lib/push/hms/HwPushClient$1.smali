.class Lcom/unisound/lib/push/hms/HwPushClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/hms/support/api/client/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/push/hms/HwPushClient;->getToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hms/support/api/client/ResultCallback<",
        "Lcom/huawei/hms/support/api/push/TokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/push/hms/HwPushClient;


# direct methods
.method constructor <init>(Lcom/unisound/lib/push/hms/HwPushClient;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/hms/HwPushClient$1;->this$0:Lcom/unisound/lib/push/hms/HwPushClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/huawei/hms/support/api/push/TokenResult;)V
    .locals 0

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/push/TokenResult;->getTokenRes()Lcom/huawei/hms/support/api/entity/push/TokenResp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/push/TokenResp;->getToken()Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/huawei/hms/support/api/push/TokenResult;

    invoke-virtual {p0, p1}, Lcom/unisound/lib/push/hms/HwPushClient$1;->onResult(Lcom/huawei/hms/support/api/push/TokenResult;)V

    return-void
.end method

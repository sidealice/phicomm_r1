.class Lcom/unisound/lib/push/hms/HwPushClient$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/push/hms/HwPushClient;->getState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/push/hms/HwPushClient;


# direct methods
.method constructor <init>(Lcom/unisound/lib/push/hms/HwPushClient;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/hms/HwPushClient$2;->this$0:Lcom/unisound/lib/push/hms/HwPushClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/huawei/hms/support/api/push/HuaweiPush;->HuaweiPushApi:Lcom/huawei/hms/support/api/push/HuaweiPushApi;

    sget-object v1, Lcom/unisound/lib/push/hms/HwPushClient;->huaweiApiClient:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-interface {v0, v1}, Lcom/huawei/hms/support/api/push/HuaweiPushApi;->getPushState(Lcom/huawei/hms/support/api/client/ApiClient;)Z

    return-void
.end method

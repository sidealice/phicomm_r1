.class Lcom/unisound/lib/UnisDeviceAssistant$19;
.super Ljava/lang/Object;
.source "UnisDeviceAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisDeviceAssistant;->queryFAQStatus(Lcom/unisound/lib/callback/HttpDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unisound/lib/net/HttpCallBack<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/UnisDeviceAssistant;

.field final synthetic val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/unisound/lib/UnisDeviceAssistant$19;->this$0:Lcom/unisound/lib/UnisDeviceAssistant;

    iput-object p2, p0, Lcom/unisound/lib/UnisDeviceAssistant$19;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorMessage"

    .line 689
    invoke-static {v0, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object p2, p0, Lcom/unisound/lib/UnisDeviceAssistant$19;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-interface {p2, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onFailed(I)V

    return-void
.end method

.method public onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 678
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 680
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getControlInfo()Lcom/google/gson/k;

    move-result-object p1

    const-string v0, "isOpen"

    .line 681
    invoke-virtual {p1, v0}, Lcom/google/gson/k;->a(Ljava/lang/String;)Lcom/google/gson/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/i;->f()B

    move-result p1

    .line 682
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant$19;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    goto :goto_1

    .line 684
    :cond_1
    iget-object p1, p0, Lcom/unisound/lib/UnisDeviceAssistant$19;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

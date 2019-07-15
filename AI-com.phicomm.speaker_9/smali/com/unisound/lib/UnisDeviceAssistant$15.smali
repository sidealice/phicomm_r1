.class Lcom/unisound/lib/UnisDeviceAssistant$15;
.super Ljava/lang/Object;
.source "UnisDeviceAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisDeviceAssistant;->openFAQ(Lcom/unisound/lib/callback/HttpDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/UnisDeviceAssistant;

.field final synthetic val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisDeviceAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/unisound/lib/UnisDeviceAssistant$15;->this$0:Lcom/unisound/lib/UnisDeviceAssistant;

    iput-object p2, p0, Lcom/unisound/lib/UnisDeviceAssistant$15;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    .line 598
    iget-object p2, p0, Lcom/unisound/lib/UnisDeviceAssistant$15;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-interface {p2, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onFailed(I)V

    return-void
.end method

.method public onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/unisound/lib/UnisDeviceAssistant$15;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getDetailInfo()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    return-void
.end method

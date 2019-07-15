.class Lcom/unisound/lib/UnisMusicAssistant$2$1;
.super Ljava/lang/Object;
.source "UnisMusicAssistant.java"

# interfaces
.implements Lcom/unisound/lib/callback/HttpDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisMusicAssistant$2;->onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unisound/lib/callback/HttpDataCallback<",
        "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/unisound/lib/UnisMusicAssistant$2;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisMusicAssistant$2;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/unisound/lib/UnisMusicAssistant$2$1;->this$1:Lcom/unisound/lib/UnisMusicAssistant$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3

    const-string v0, "UnisMusicAssistant"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play music list failure, error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant$2$1;->this$1:Lcom/unisound/lib/UnisMusicAssistant$2;

    iget-object v0, v0, Lcom/unisound/lib/UnisMusicAssistant$2;->val$callBack:Lcom/unisound/lib/callback/HttpDataCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    return-void
.end method

.method public onResult(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant$2$1;->this$1:Lcom/unisound/lib/UnisMusicAssistant$2;

    iget-object v0, v0, Lcom/unisound/lib/UnisMusicAssistant$2;->val$callBack:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-virtual {p2}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getDetailInfo()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResult(ILjava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p2, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/lib/UnisMusicAssistant$2$1;->onResult(ILcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V

    return-void
.end method

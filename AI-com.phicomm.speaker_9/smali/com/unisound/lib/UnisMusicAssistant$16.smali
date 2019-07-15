.class Lcom/unisound/lib/UnisMusicAssistant$16;
.super Ljava/lang/Object;
.source "UnisMusicAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisMusicAssistant;->getAudioFirstList(Lcom/unisound/lib/callback/HttpDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/UnisMusicAssistant;

.field final synthetic val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/unisound/lib/UnisMusicAssistant$16;->this$0:Lcom/unisound/lib/UnisMusicAssistant;

    iput-object p2, p0, Lcom/unisound/lib/UnisMusicAssistant$16;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    const-string v0, "errorMessage"

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "---->"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object p2, p0, Lcom/unisound/lib/UnisMusicAssistant$16;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    if-eqz p2, :cond_0

    .line 555
    iget-object p2, p0, Lcom/unisound/lib/UnisMusicAssistant$16;->this$0:Lcom/unisound/lib/UnisMusicAssistant;

    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant$16;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-static {p2, p1, v0}, Lcom/unisound/lib/UnisMusicAssistant;->access$400(Lcom/unisound/lib/UnisMusicAssistant;ILcom/unisound/lib/callback/HttpDataCallback;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant$16;->this$0:Lcom/unisound/lib/UnisMusicAssistant;

    iget-object v1, p0, Lcom/unisound/lib/UnisMusicAssistant$16;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-static {v0, p1, v1}, Lcom/unisound/lib/UnisMusicAssistant;->access$1100(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

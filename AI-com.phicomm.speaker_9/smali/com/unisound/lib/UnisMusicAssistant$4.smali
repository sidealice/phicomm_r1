.class Lcom/unisound/lib/UnisMusicAssistant$4;
.super Ljava/lang/Object;
.source "UnisMusicAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisMusicAssistant;->getCollectMusicList(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
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

    .line 160
    iput-object p1, p0, Lcom/unisound/lib/UnisMusicAssistant$4;->this$0:Lcom/unisound/lib/UnisMusicAssistant;

    iput-object p2, p0, Lcom/unisound/lib/UnisMusicAssistant$4;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 3

    const-string v0, "errorMessage"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCollectMusicList-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/unisound/lib/UnisMusicAssistant$4;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-interface {p2, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onFailed(I)V

    return-void
.end method

.method public onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant$4;->this$0:Lcom/unisound/lib/UnisMusicAssistant;

    iget-object v1, p0, Lcom/unisound/lib/UnisMusicAssistant$4;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-static {v0, p1, v1}, Lcom/unisound/lib/UnisMusicAssistant;->access$200(Lcom/unisound/lib/UnisMusicAssistant;Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

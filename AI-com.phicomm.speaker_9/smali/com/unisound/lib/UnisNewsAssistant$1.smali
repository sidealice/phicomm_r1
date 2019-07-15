.class Lcom/unisound/lib/UnisNewsAssistant$1;
.super Ljava/lang/Object;
.source "UnisNewsAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisNewsAssistant;->getNewsPlayInfo(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unisound/lib/net/HttpCallBack<",
        "Lcom/unisound/lib/msgcenter/bean/PlayingInfo<",
        "Lcom/unisound/lib/msgcenter/bean/NewsInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/UnisNewsAssistant;

.field final synthetic val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisNewsAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/unisound/lib/UnisNewsAssistant$1;->this$0:Lcom/unisound/lib/UnisNewsAssistant;

    iput-object p2, p0, Lcom/unisound/lib/UnisNewsAssistant$1;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorMessage"

    .line 48
    invoke-static {v0, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p2, p0, Lcom/unisound/lib/UnisNewsAssistant$1;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-interface {p2, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onFailed(I)V

    return-void
.end method

.method public onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/lib/usercenter/bussinessbean/BsResponse<",
            "Lcom/unisound/lib/msgcenter/bean/PlayingInfo<",
            "Lcom/unisound/lib/msgcenter/bean/NewsInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 37
    :try_start_0
    new-instance v0, Lcom/unisound/lib/UnisNewsAssistant$1$1;

    invoke-direct {v0, p0}, Lcom/unisound/lib/UnisNewsAssistant$1$1;-><init>(Lcom/unisound/lib/UnisNewsAssistant$1;)V

    .line 38
    invoke-virtual {v0}, Lcom/unisound/lib/UnisNewsAssistant$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/msgcenter/bean/PlayingInfo;

    .line 40
    invoke-static {}, Lcom/unisound/lib/UnisNewsAssistant;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/unisound/lib/UnisNewsAssistant$1;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    iget-object v0, p0, Lcom/unisound/lib/UnisNewsAssistant$1;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

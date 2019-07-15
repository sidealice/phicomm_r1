.class Lcom/unisound/lib/usercenter/TokenManger$4;
.super Ljava/lang/Object;
.source "TokenManger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/usercenter/TokenManger;->getAccessTokenCallBack(Ljava/lang/Object;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/usercenter/TokenManger;

.field final synthetic val$flushToken:Ljava/lang/String;

.field final synthetic val$requestTag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/unisound/lib/usercenter/TokenManger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/unisound/lib/usercenter/TokenManger$4;->this$0:Lcom/unisound/lib/usercenter/TokenManger;

    iput-object p2, p0, Lcom/unisound/lib/usercenter/TokenManger$4;->val$flushToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/lib/usercenter/TokenManger$4;->val$requestTag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 196
    new-instance v0, Lcom/unisound/lib/usercenter/bean/TokenHeader;

    invoke-direct {v0}, Lcom/unisound/lib/usercenter/bean/TokenHeader;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/unisound/lib/usercenter/TokenManger$4;->val$flushToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->setFlushToken(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/unisound/lib/utils/UserSpUtil;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/usercenter/bean/TokenHeader;->setClientId(Ljava/lang/String;)V

    const-string v1, "TokenManger"

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccessToken flushToken :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisound/lib/usercenter/TokenManger$4;->val$flushToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/unisound/lib/usercenter/TokenManger$4;->this$0:Lcom/unisound/lib/usercenter/TokenManger;

    invoke-static {v1}, Lcom/unisound/lib/usercenter/TokenManger;->access$600(Lcom/unisound/lib/usercenter/TokenManger;)Lcom/unisound/lib/net/UserRequestClient;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/lib/usercenter/TokenManger$4;->val$requestTag:Ljava/lang/Object;

    new-instance v3, Lcom/unisound/lib/usercenter/TokenManger$4$1;

    invoke-direct {v3, p0}, Lcom/unisound/lib/usercenter/TokenManger$4$1;-><init>(Lcom/unisound/lib/usercenter/TokenManger$4;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/unisound/lib/net/UserRequestClient;->flushToken(Ljava/lang/Object;Lcom/unisound/lib/usercenter/bean/TokenHeader;Lcom/unisound/lib/net/HttpUserCallBack;)V

    return-void
.end method

.class Lcom/unisound/lib/UnisMusicAssistant$12;
.super Ljava/lang/Object;
.source "UnisMusicAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisMusicAssistant;->playSingerMusic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/UnisMusicAssistant;

.field final synthetic val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

.field final synthetic val$udid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisMusicAssistant;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/unisound/lib/UnisMusicAssistant$12;->this$0:Lcom/unisound/lib/UnisMusicAssistant;

    iput-object p2, p0, Lcom/unisound/lib/UnisMusicAssistant$12;->val$udid:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/lib/UnisMusicAssistant$12;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorMessage"

    .line 406
    invoke-static {v0, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object p2, p0, Lcom/unisound/lib/UnisMusicAssistant$12;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-interface {p2, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onFailed(I)V

    return-void
.end method

.method public onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 4

    .line 397
    :try_start_0
    const-class v0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;

    .line 398
    invoke-virtual {p1, v0}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getEntity(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/music/bean/CurrentMusicInfo;

    .line 399
    iget-object v1, p0, Lcom/unisound/lib/UnisMusicAssistant$12;->this$0:Lcom/unisound/lib/UnisMusicAssistant;

    invoke-virtual {v0}, Lcom/unisound/lib/music/bean/CurrentMusicInfo;->getMusicList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/unisound/lib/UnisMusicAssistant$12;->val$udid:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/lib/UnisMusicAssistant$12;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-static {v1, v0, v2, v3}, Lcom/unisound/lib/UnisMusicAssistant;->access$700(Lcom/unisound/lib/UnisMusicAssistant;Ljava/util/List;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant$12;->val$httpDataCallback:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

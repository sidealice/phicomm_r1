.class Lcom/unisound/lib/UnisMusicAssistant$2;
.super Ljava/lang/Object;
.source "UnisMusicAssistant.java"

# interfaces
.implements Lcom/unisound/lib/net/HttpCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/lib/UnisMusicAssistant;->playMusic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/unisound/lib/callback/HttpDataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/lib/UnisMusicAssistant;

.field final synthetic val$callBack:Lcom/unisound/lib/callback/HttpDataCallback;

.field final synthetic val$musicList:Ljava/util/List;

.field final synthetic val$udid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unisound/lib/UnisMusicAssistant;Ljava/lang/String;Ljava/util/List;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/unisound/lib/UnisMusicAssistant$2;->this$0:Lcom/unisound/lib/UnisMusicAssistant;

    iput-object p2, p0, Lcom/unisound/lib/UnisMusicAssistant$2;->val$udid:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/lib/UnisMusicAssistant$2;->val$musicList:Ljava/util/List;

    iput-object p4, p0, Lcom/unisound/lib/UnisMusicAssistant$2;->val$callBack:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 1

    const-string v0, "errorMessage"

    .line 122
    invoke-static {v0, p2}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p2, p0, Lcom/unisound/lib/UnisMusicAssistant$2;->val$callBack:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-interface {p2, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onFailed(I)V

    return-void
.end method

.method public onSuccess(Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;)V
    .locals 3

    .line 99
    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 102
    new-instance p1, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    .line 103
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant$2;->val$udid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setUdid(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant$2;->val$musicList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/music/bean/MusicList;

    invoke-virtual {v0}, Lcom/unisound/lib/music/bean/MusicList;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    const-string v0, "toAppAddMusicList"

    .line 105
    invoke-virtual {p1, v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/unisound/lib/UnisMusicAssistant$2;->this$0:Lcom/unisound/lib/UnisMusicAssistant;

    const-string v1, "UnisMusicAssistant"

    new-instance v2, Lcom/unisound/lib/UnisMusicAssistant$2$1;

    invoke-direct {v2, p0}, Lcom/unisound/lib/UnisMusicAssistant$2$1;-><init>(Lcom/unisound/lib/UnisMusicAssistant$2;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/UnisMusicAssistant;->sendMusicControlCommand(Ljava/lang/String;Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/callback/HttpDataCallback;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/unisound/lib/UnisMusicAssistant$2;->val$callBack:Lcom/unisound/lib/callback/HttpDataCallback;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/unisound/lib/usercenter/bussinessbean/BsResponse;->getDetailInfo()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/unisound/lib/callback/HttpDataCallback;->onResult(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

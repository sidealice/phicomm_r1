.class Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$PlayListCallback;
.super Ljava/lang/Object;
.source "MusicStateMgr.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayListCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/unisound/ant/device/bean/CurrentMusicList;",
        ">;"
    }
.end annotation


# instance fields
.field private itemId:Ljava/lang/String;

.field final synthetic this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Ljava/lang/String;)V
    .locals 0
    .param p2, "itemId"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$PlayListCallback;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p2, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$PlayListCallback;->itemId:Ljava/lang/String;

    .line 520
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/unisound/ant/device/bean/CurrentMusicList;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 540
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/unisound/ant/device/bean/CurrentMusicList;>;"
    const-string v0, "MusicStateMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5f53\u524d\u64ad\u653e\u7684\u97f3\u4e50\u6536\u85cf\u5217\u8868\u5931\u8d25 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/unisound/ant/device/bean/CurrentMusicList;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/unisound/ant/device/bean/CurrentMusicList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/unisound/ant/device/bean/CurrentMusicList;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/unisound/ant/device/bean/CurrentMusicList;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/bean/CurrentMusicList;

    .line 525
    .local v0, "body":Lcom/unisound/ant/device/bean/CurrentMusicList;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/CurrentMusicList;->getStatus()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 526
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/CurrentMusicList;->getControlInfo()Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unisound/ant/device/bean/CurrentMusicList$ControlInfo;->getResult()Ljava/util/List;

    move-result-object v3

    .line 527
    .local v3, "itemList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 528
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$PlayListCallback;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-static {v3}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptMusic(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$PlayListCallback;->itemId:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$500(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Ljava/util/List;Ljava/lang/String;)I

    move-result v2

    .line 529
    .local v2, "index":I
    new-instance v1, Lcom/unisound/ant/device/bean/DeviceMusicData;

    invoke-direct {v1, v2, v3}, Lcom/unisound/ant/device/bean/DeviceMusicData;-><init>(ILjava/util/List;)V

    .line 530
    .local v1, "deviceMusicData":Lcom/unisound/ant/device/bean/DeviceMusicData;
    invoke-static {v1}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, "musicData":Ljava/lang/String;
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$PlayListCallback;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-static {v5}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$600(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;)Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->playMusicListWithIndex(Ljava/lang/String;)V

    .line 537
    .end local v1    # "deviceMusicData":Lcom/unisound/ant/device/bean/DeviceMusicData;
    .end local v2    # "index":I
    .end local v3    # "itemList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    .end local v4    # "musicData":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    const-string v6, "MusicStateMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u83b7\u53d6\u5f53\u524d\u64ad\u653e\u7684\u97f3\u4e50\u6536\u85cf\u5217\u8868\u5931\u8d25, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v0, :cond_2

    const-string v5, "responseBody == null"

    .line 535
    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 534
    invoke-static {v6, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 535
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/CurrentMusicList;->getStatus()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", detailInfo = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/CurrentMusicList;->getDetailInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

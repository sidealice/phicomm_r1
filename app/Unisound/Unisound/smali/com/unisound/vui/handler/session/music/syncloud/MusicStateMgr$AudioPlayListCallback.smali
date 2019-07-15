.class Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;
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
    name = "AudioPlayListCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/unisound/ant/device/bean/AudioListResult;",
        ">;"
    }
.end annotation


# instance fields
.field private albumId:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private pageCount:I

.field private pageNo:I

.field private pageSize:I

.field final synthetic this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    const/4 v0, 0x1

    iput v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageNo:I

    .line 565
    const/16 v0, 0x1e

    iput v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageSize:I

    .line 566
    const/4 v0, 0x2

    iput v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageCount:I

    .line 569
    iput-object p2, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->itemId:Ljava/lang/String;

    .line 570
    iput-object p3, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->albumId:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "albumId"    # Ljava/lang/String;
    .param p4, "pageNo"    # I
    .param p5, "pageSize"    # I
    .param p6, "pageCount"    # I

    .prologue
    .line 574
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    const/4 v0, 0x1

    iput v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageNo:I

    .line 565
    const/16 v0, 0x1e

    iput v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageSize:I

    .line 566
    const/4 v0, 0x2

    iput v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageCount:I

    .line 575
    iput-object p2, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->itemId:Ljava/lang/String;

    .line 576
    iput-object p3, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->albumId:Ljava/lang/String;

    .line 577
    iput p4, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageNo:I

    .line 578
    iput p5, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageSize:I

    .line 579
    iput p6, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageCount:I

    .line 580
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
            "Lcom/unisound/ant/device/bean/AudioListResult;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/unisound/ant/device/bean/AudioListResult;>;"
    const-string v0, "MusicStateMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5f53\u524d\u64ad\u653e\u7684\u6709\u58f0\u8bfb\u7269\u6536\u85cf\u5217\u8868\u5931\u8d25 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/unisound/ant/device/bean/AudioListResult;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/unisound/ant/device/bean/AudioListResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/unisound/ant/device/bean/AudioListResult;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/unisound/ant/device/bean/AudioListResult;>;"
    const/4 v5, 0x0

    .line 584
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/unisound/ant/device/bean/AudioListResult;

    .line 585
    .local v8, "body":Lcom/unisound/ant/device/bean/AudioListResult;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/unisound/ant/device/bean/AudioListResult;->getStatus()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_1

    .line 586
    invoke-virtual {v8}, Lcom/unisound/ant/device/bean/AudioListResult;->getControlInfo()Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;

    move-result-object v9

    .line 587
    .local v9, "result":Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;
    invoke-virtual {v9}, Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;->getResult()Ljava/util/List;

    move-result-object v3

    .line 588
    .local v3, "itemList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-static {v3, v5, v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptAudio(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->itemId:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$500(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 590
    .local v1, "index":I
    new-instance v0, Lcom/unisound/ant/device/bean/DeviceAudioData;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->albumId:Ljava/lang/String;

    iget v4, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageNo:I

    iget v5, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageSize:I

    iget v6, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->pageCount:I

    invoke-direct/range {v0 .. v6}, Lcom/unisound/ant/device/bean/DeviceAudioData;-><init>(ILjava/lang/String;Ljava/util/List;III)V

    .line 592
    .local v0, "deviceAudioData":Lcom/unisound/ant/device/bean/DeviceAudioData;
    invoke-static {v0}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 593
    .local v7, "audioList":Ljava/lang/String;
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$AudioPlayListCallback;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-static {v2}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$600(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;)Lcom/unisound/ant/device/devicelayer/button/ButtonControl;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/unisound/ant/device/devicelayer/button/ButtonControl;->playAudioListWithIndex(Ljava/lang/String;)V

    .line 599
    .end local v0    # "deviceAudioData":Lcom/unisound/ant/device/bean/DeviceAudioData;
    .end local v1    # "index":I
    .end local v3    # "itemList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    .end local v7    # "audioList":Ljava/lang/String;
    .end local v9    # "result":Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    const-string v4, "MusicStateMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u83b7\u53d6\u5f53\u524d\u64ad\u653e\u7684\u6709\u58f0\u8bfb\u7269\u6536\u85cf\u5217\u8868\u5931\u8d25, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v8, :cond_2

    const-string v2, "responseBody == null"

    .line 597
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-static {v4, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 597
    invoke-virtual {v8}, Lcom/unisound/ant/device/bean/AudioListResult;->getStatus()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", detailInfo = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/unisound/ant/device/bean/AudioListResult;->getDetailInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

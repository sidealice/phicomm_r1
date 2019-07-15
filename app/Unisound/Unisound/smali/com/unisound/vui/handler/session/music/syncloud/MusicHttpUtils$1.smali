.class final Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils$1;
.super Ljava/lang/Object;
.source "MusicHttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;->uploadMusicList(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$playItemList:Ljava/util/List;

.field final synthetic val$udid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils$1;->val$udid:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils$1;->val$playItemList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 38
    new-instance v1, Lcom/unisound/ant/device/netmodule/request/RequestBody;

    invoke-direct {v1}, Lcom/unisound/ant/device/netmodule/request/RequestBody;-><init>()V

    .line 39
    .local v1, "body":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;>;"
    const-string v13, "music"

    invoke-virtual {v1, v13}, Lcom/unisound/ant/device/netmodule/request/RequestBody;->setBusinessType(Ljava/lang/String;)V

    .line 40
    const-string v13, "uploadMusicList"

    invoke-virtual {v1, v13}, Lcom/unisound/ant/device/netmodule/request/RequestBody;->setCommand(Ljava/lang/String;)V

    .line 41
    const-string v13, "2.0.0"

    invoke-virtual {v1, v13}, Lcom/unisound/ant/device/netmodule/request/RequestBody;->setVersion(Ljava/lang/String;)V

    .line 42
    new-instance v2, Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;

    invoke-direct {v2}, Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;-><init>()V

    .line 43
    .local v2, "clientInfo":Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;
    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/netmodule/request/RequestBody;->setTcl(Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;)V

    .line 44
    new-instance v9, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;

    invoke-direct {v9}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;-><init>()V

    .line 45
    .local v9, "musicListBean":Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils$1;->val$udid:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;->setUdid(Ljava/lang/String;)V

    .line 46
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v8, "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils$1;->val$playItemList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 49
    .local v5, "item":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    new-instance v7, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;

    invoke-direct {v7}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;-><init>()V

    .line 50
    .local v7, "musicInfo":Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;
    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setId(Ljava/lang/String;)V

    .line 51
    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getListId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setMusicListId(Ljava/lang/String;)V

    .line 52
    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setTitle(Ljava/lang/String;)V

    .line 53
    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getArtist()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setArtist(Ljava/lang/String;)V

    .line 54
    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getAlbum()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setAlbum(Ljava/lang/String;)V

    .line 55
    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setUrl(Ljava/lang/String;)V

    .line 56
    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getDuration()I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setDuration(I)V

    .line 57
    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getImgUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setImgUrl(Ljava/lang/String;)V

    .line 58
    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getHdImgUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setHdImgUrl(Ljava/lang/String;)V

    .line 59
    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getmLyric()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setmLyric(Ljava/lang/String;)V

    .line 60
    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->isCollected()Z

    move-result v14

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setCollected(Z)V

    .line 61
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;->setErrorCode(I)V

    .line 62
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v5    # "item":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .end local v7    # "musicInfo":Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;
    :cond_0
    invoke-virtual {v9, v8}, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;->setMusicList(Ljava/util/List;)V

    .line 65
    invoke-virtual {v1, v9}, Lcom/unisound/ant/device/netmodule/request/RequestBody;->setData(Ljava/lang/Object;)V

    .line 66
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->getAppServerUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "appService"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 67
    .local v12, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "dataString":Ljava/lang/String;
    invoke-static {}, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uploadMusicList, url = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", params = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/unisound/vui/util/HttpUtils;->getInstance()Lcom/unisound/vui/util/HttpUtils;

    move-result-object v13

    invoke-virtual {v13, v12, v3}, Lcom/unisound/vui/util/HttpUtils;->postSync(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v10

    .line 70
    .local v10, "response":Lokhttp3/Response;
    invoke-static {v10}, Lcom/unisound/vui/util/HttpUtils;->isResponseCorrect(Lokhttp3/Response;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 72
    :try_start_0
    invoke-virtual {v10}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/unisound/vui/util/JsonTool;->parseToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 73
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v13, "status"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 74
    .local v11, "status":I
    const/16 v13, 0xc8

    if-ne v13, v11, :cond_1

    .line 75
    invoke-static {}, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;->access$000()Ljava/lang/String;

    move-result-object v13

    const-string v14, "uploadMusicList success!"

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "status":I
    :goto_1
    return-void

    .line 77
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v11    # "status":I
    :cond_1
    invoke-static {}, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uploadMusicList failure, error code = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", message = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "detailInfo"

    .line 80
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 77
    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 82
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "status":I
    :catch_0
    move-exception v4

    .line 83
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uploadMusicList error, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 85
    .local v4, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;->access$000()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uploadMusicList error, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-static {}, Lcom/unisound/vui/handler/session/music/syncloud/MusicHttpUtils;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uploadMusicList failure, "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v10, :cond_3

    const-string v13, "response is null!"

    .line 89
    :goto_2
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 88
    invoke-static {v14, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " response code = "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 89
    invoke-virtual {v10}, Lokhttp3/Response;->code()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2
.end method

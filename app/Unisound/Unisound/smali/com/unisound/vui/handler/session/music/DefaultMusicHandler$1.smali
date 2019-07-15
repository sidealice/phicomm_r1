.class Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;
.super Ljava/lang/Object;
.source "DefaultMusicHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->processAudioDataReq(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    .prologue
    .line 316
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;"
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    iput p2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 318
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;"
    const-string v8, "audio"

    iget-object v9, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    invoke-static {v9}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->access$000(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lcom/unisound/vui/handler/session/music/CommonPlayer;

    move-result-object v9

    invoke-interface {v9}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getDevicePlayingType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 319
    const-string v8, "DefaultMusicHandler"

    const-string v9, "query audio list, but now isn\'t playing audio, ignore."

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 322
    :cond_0
    const/4 v3, 0x0

    .line 324
    .local v3, "body":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<Lcom/unisound/vui/handler/session/music/network/body/AudioBody;>;"
    :try_start_0
    new-instance v4, Lcom/unisound/ant/device/netmodule/request/RequestBody;

    invoke-direct {v4}, Lcom/unisound/ant/device/netmodule/request/RequestBody;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    .end local v3    # "body":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<Lcom/unisound/vui/handler/session/music/network/body/AudioBody;>;"
    .local v4, "body":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<Lcom/unisound/vui/handler/session/music/network/body/AudioBody;>;"
    :try_start_1
    const-string v8, "audio"

    invoke-virtual {v4, v8}, Lcom/unisound/ant/device/netmodule/request/RequestBody;->setBusinessType(Ljava/lang/String;)V

    .line 326
    const-string v8, "getNextAudioList"

    invoke-virtual {v4, v8}, Lcom/unisound/ant/device/netmodule/request/RequestBody;->setCommand(Ljava/lang/String;)V

    .line 327
    new-instance v8, Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;

    invoke-direct {v8}, Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;-><init>()V

    invoke-virtual {v4, v8}, Lcom/unisound/ant/device/netmodule/request/RequestBody;->setTcl(Lcom/unisound/ant/device/netmodule/request/RequestBody$ClientInfo;)V

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "audioBody":Lcom/unisound/vui/handler/session/music/network/body/AudioBody;
    iget-object v8, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    invoke-static {v8}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->access$100(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lnluparser/scheme/NLU;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 330
    iget-object v8, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    invoke-static {v8}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->access$100(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lnluparser/scheme/NLU;

    move-result-object v2

    .line 331
    .local v2, "audios":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/AudioIntent;Lnluparser/scheme/AudioResult;>;"
    invoke-virtual {v2}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v8

    invoke-virtual {v8}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v1

    check-cast v1, Lnluparser/scheme/AudioIntent;

    .line 332
    .local v1, "audioIntent":Lnluparser/scheme/AudioIntent;
    new-instance v0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;

    .line 333
    .end local v0    # "audioBody":Lcom/unisound/vui/handler/session/music/network/body/AudioBody;
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getUdid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lnluparser/scheme/AudioIntent;->getKeyword()Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;->val$page:I

    .line 334
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .end local v1    # "audioIntent":Lnluparser/scheme/AudioIntent;
    .end local v2    # "audios":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/AudioIntent;Lnluparser/scheme/AudioResult;>;"
    .restart local v0    # "audioBody":Lcom/unisound/vui/handler/session/music/network/body/AudioBody;
    :cond_1
    :goto_1
    invoke-virtual {v4, v0}, Lcom/unisound/ant/device/netmodule/request/RequestBody;->setData(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 344
    :try_start_2
    const-string v8, "DefaultMusicHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query audio list, requestUrl = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 345
    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->getAppServerUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", body is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 347
    invoke-static {v4}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 344
    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/unisound/vui/handler/session/music/network/Api;->getMusicApi()Lcom/unisound/vui/handler/session/music/network/MusicApi;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/unisound/vui/handler/session/music/network/MusicApi;->getAudio(Lcom/unisound/ant/device/netmodule/request/RequestBody;)Lretrofit2/Call;

    move-result-object v8

    invoke-interface {v8}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v6

    .line 349
    .local v6, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/unisound/ant/device/bean/AudioListResult;>;"
    invoke-virtual {v6}, Lretrofit2/Response;->isSuccessful()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 350
    invoke-virtual {v6}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/unisound/ant/device/bean/AudioListResult;

    .line 351
    .local v7, "result":Lcom/unisound/ant/device/bean/AudioListResult;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/unisound/ant/device/bean/AudioListResult;->getDetailInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/unisound/ant/device/bean/AudioListResult;->getStatus()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_3

    .line 352
    iget-object v8, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    iget-object v8, v8, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    iget v9, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;->val$page:I

    invoke-virtual {v7}, Lcom/unisound/ant/device/bean/AudioListResult;->getControlInfo()Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;->getPageCount()I

    move-result v10

    .line 353
    invoke-virtual {v7}, Lcom/unisound/ant/device/bean/AudioListResult;->getControlInfo()Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/unisound/ant/device/bean/AudioListResult$ControlInfo;->getResult()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptAudio(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 352
    invoke-virtual {v8, v9, v10, v11}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->appendPlaylist(IILjava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 361
    .end local v6    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/unisound/ant/device/bean/AudioListResult;>;"
    .end local v7    # "result":Lcom/unisound/ant/device/bean/AudioListResult;
    :catch_0
    move-exception v5

    .line 362
    .local v5, "e":Ljava/io/IOException;
    const-string v8, "DefaultMusicHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query audio list error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    iget-object v8, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    invoke-static {v8}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->access$200(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 336
    new-instance v0, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;

    .end local v0    # "audioBody":Lcom/unisound/vui/handler/session/music/network/body/AudioBody;
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getUdid()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;->this$0:Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    invoke-static {v9}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->access$200(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;->val$page:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v8, v9, v10}, Lcom/unisound/vui/handler/session/music/network/body/AudioBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v0    # "audioBody":Lcom/unisound/vui/handler/session/music/network/body/AudioBody;
    goto/16 :goto_1

    .line 339
    .end local v0    # "audioBody":Lcom/unisound/vui/handler/session/music/network/body/AudioBody;
    .end local v4    # "body":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<Lcom/unisound/vui/handler/session/music/network/body/AudioBody;>;"
    .restart local v3    # "body":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<Lcom/unisound/vui/handler/session/music/network/body/AudioBody;>;"
    :catch_1
    move-exception v5

    .line 340
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    const-string v8, "DefaultMusicHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query audio list error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    .end local v3    # "body":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<Lcom/unisound/vui/handler/session/music/network/body/AudioBody;>;"
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "audioBody":Lcom/unisound/vui/handler/session/music/network/body/AudioBody;
    .restart local v4    # "body":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<Lcom/unisound/vui/handler/session/music/network/body/AudioBody;>;"
    .restart local v6    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/unisound/ant/device/bean/AudioListResult;>;"
    .restart local v7    # "result":Lcom/unisound/ant/device/bean/AudioListResult;
    :cond_3
    :try_start_4
    const-string v9, "DefaultMusicHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query audio list error: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v7, :cond_4

    const-string v8, "result is null"

    .line 356
    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 355
    invoke-static {v9, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_4
    invoke-virtual {v7}, Lcom/unisound/ant/device/bean/AudioListResult;->getDetailInfo()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 359
    .end local v7    # "result":Lcom/unisound/ant/device/bean/AudioListResult;
    :cond_5
    const-string v8, "DefaultMusicHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query audio list error, code = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lretrofit2/Response;->code()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 339
    .end local v0    # "audioBody":Lcom/unisound/vui/handler/session/music/network/body/AudioBody;
    .end local v6    # "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/unisound/ant/device/bean/AudioListResult;>;"
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "body":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<Lcom/unisound/vui/handler/session/music/network/body/AudioBody;>;"
    .restart local v3    # "body":Lcom/unisound/ant/device/netmodule/request/RequestBody;, "Lcom/unisound/ant/device/netmodule/request/RequestBody<Lcom/unisound/vui/handler/session/music/network/body/AudioBody;>;"
    goto :goto_2
.end method

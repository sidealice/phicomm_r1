.class public Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;
.super Landroid/os/Handler;
.source "MusicStateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReportHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    .line 359
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 360
    iget-object v9, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-static {v9}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$000(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;)Lcom/unisound/vui/handler/session/music/ANTPlayController;

    move-result-object v9

    if-nez v9, :cond_0

    .line 361
    const-string v9, "MusicStateMgr"

    const-string v10, "-->>playController == null "

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v9, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-static {v9}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$000(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;)Lcom/unisound/vui/handler/session/music/ANTPlayController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getCurrPlayItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v2

    .line 365
    .local v2, "item":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    if-nez v2, :cond_1

    .line 366
    const-string v9, "MusicStateMgr"

    const-string v10, "---------error while report music status, currentItem == null"

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_1
    const-string v9, "MusicStateMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "update music info, title = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v3

    .line 371
    .local v3, "itemType":Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    const/4 v5, 0x0

    .line 372
    .local v5, "musicData":Lcom/unisound/ant/device/bean/MusicData;
    const-string v1, ""

    .line 373
    .local v1, "dstState":Ljava/lang/String;
    const-string v6, "none"

    .line 374
    .local v6, "operate":Ljava/lang/String;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 411
    :cond_2
    :goto_1
    if-eqz v5, :cond_9

    .line 412
    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/unisound/ant/device/bean/MusicData;->setItemId(Ljava/lang/String;)V

    .line 414
    sget-object v9, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_MUSIC:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    if-ne v3, v9, :cond_4

    .line 415
    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getListId()Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "listId":Ljava/lang/String;
    if-nez v4, :cond_3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 418
    :cond_3
    invoke-virtual {v5, v4}, Lcom/unisound/ant/device/bean/MusicData;->setListId(Ljava/lang/String;)V

    .line 420
    .end local v4    # "listId":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-static {v9, v3, v1, v6, v5}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$400(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/bean/MusicData;)V

    goto :goto_0

    .line 376
    :pswitch_0
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 377
    .local v8, "state":I
    iget-object v9, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-static {v9, v3}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$100(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)Ljava/lang/String;

    move-result-object v6

    .line 378
    iget-object v9, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-static {v9, v8, v3}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$200(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;ILcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)Ljava/lang/String;

    move-result-object v1

    .line 379
    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 380
    iget-object v9, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-static {v9}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$000(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;)Lcom/unisound/vui/handler/session/music/ANTPlayController;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getPlayStatus(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    iget-object v11, p0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr$ReportHandler;->this$0:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    .line 381
    invoke-static {v11}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$000(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;)Lcom/unisound/vui/handler/session/music/ANTPlayController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getPlayMode()Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->access$300(Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;)Ljava/lang/String;

    move-result-object v10

    .line 380
    invoke-static {v9, v10}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStatusUtils;->packageDataAllInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/unisound/ant/device/bean/MusicData;

    move-result-object v5

    goto :goto_1

    .line 382
    :cond_5
    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 383
    invoke-static {}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStatusUtils;->packageDataPlayStatusPause()Lcom/unisound/ant/device/bean/MusicData;

    move-result-object v5

    goto :goto_1

    .line 384
    :cond_6
    if-ne v8, v10, :cond_2

    .line 385
    invoke-static {}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStatusUtils;->packageDataPlayStatusStop()Lcom/unisound/ant/device/bean/MusicData;

    move-result-object v5

    goto :goto_1

    .line 389
    .end local v8    # "state":I
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 390
    .local v7, "playMode":Ljava/lang/String;
    const-string v9, "MusicStateMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "current playMode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {v7}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStatusUtils;->packageDataPlayMode(Ljava/lang/String;)Lcom/unisound/ant/device/bean/MusicData;

    move-result-object v5

    .line 392
    const-string v6, "changePlayMode"

    .line 393
    goto/16 :goto_1

    .line 395
    .end local v7    # "playMode":Ljava/lang/String;
    :pswitch_2
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v9, :cond_7

    .line 396
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStatusUtils;->packageDataVolume(I)Lcom/unisound/ant/device/bean/MusicData;

    move-result-object v5

    .line 400
    :goto_2
    const-string v6, "changeVolume"

    .line 401
    goto/16 :goto_1

    .line 398
    :cond_7
    const-string v9, "error while report music status, volume == null"

    invoke-static {v9}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;)V

    goto :goto_2

    .line 403
    :pswitch_3
    const-string v6, "changeCollectState"

    .line 404
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 405
    .local v0, "command":I
    const/16 v9, 0x14

    if-ne v0, v9, :cond_8

    move v9, v10

    :goto_3
    invoke-static {v9}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStatusUtils;->packageDataCollectionStatus(Z)Lcom/unisound/ant/device/bean/MusicData;

    move-result-object v5

    .line 407
    goto/16 :goto_1

    .line 405
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 422
    .end local v0    # "command":I
    :cond_9
    const-string v9, "MusicStateMgr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error while report music status, operate = +"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", item = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

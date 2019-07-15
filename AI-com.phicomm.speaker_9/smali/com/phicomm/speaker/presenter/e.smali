.class public Lcom/phicomm/speaker/presenter/e;
.super Lcom/phicomm/speaker/base/b;
.source "HomePagePresenter.java"


# instance fields
.field private c:Lcom/phicomm/speaker/model/f;

.field private d:Lcom/phicomm/speaker/presenter/b/e;

.field private e:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/LogMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/e;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/phicomm/speaker/base/b;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/presenter/e;->f:Ljava/util/List;

    .line 72
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/e;->a:Lcom/phicomm/speaker/presenter/b/f;

    .line 73
    iput-object p2, p0, Lcom/phicomm/speaker/presenter/e;->d:Lcom/phicomm/speaker/presenter/b/e;

    .line 74
    new-instance p1, Lcom/phicomm/speaker/model/f;

    invoke-direct {p1}, Lcom/phicomm/speaker/model/f;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/e;->c:Lcom/phicomm/speaker/model/f;

    return-void
.end method

.method private a(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Lcom/phicomm/speaker/adapter/a/a/b;
    .locals 4

    .line 165
    new-instance v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/a/a/b;-><init>()V

    .line 166
    new-instance v1, Lcom/phicomm/speaker/adapter/a/k;

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getCreateTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/adapter/a/k;-><init>(J)V

    .line 167
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getRecongniseResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/adapter/a/k;->a(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getLogId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/phicomm/speaker/adapter/a/k;->b(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/b;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    return-object v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/e;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/LogMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/LogMessage;",
            ">;"
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/msgcenter/bean/LogMessage;

    const-string v2, "HomePagePresenter"

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logmessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/presenter/e;->b(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/msgcenter/bean/LogMessage;

    .line 271
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/presenter/e;->c(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/e;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/e;->a()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/presenter/e;Lcom/unisound/lib/msgcenter/bean/LogMessage;)[Lcom/phicomm/speaker/adapter/a/a/b;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->d(Lcom/unisound/lib/msgcenter/bean/LogMessage;)[Lcom/phicomm/speaker/adapter/a/a/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/phicomm/speaker/presenter/e;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/phicomm/speaker/presenter/e;->a()V

    return-void
.end method

.method private b(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Z
    .locals 2

    .line 280
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getMessageType()I

    move-result v0

    const/16 v1, 0x4e2c

    if-eq v0, v1, :cond_1

    .line 282
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getRecongniseResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getTtsAnswer()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic c(Lcom/phicomm/speaker/presenter/e;)Lcom/phicomm/speaker/presenter/b/e;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/phicomm/speaker/presenter/e;->d:Lcom/phicomm/speaker/presenter/b/e;

    return-object p0
.end method

.method private c(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Z
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/msgcenter/bean/LogMessage;

    .line 288
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getLogId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getLogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "HomePagePresenter"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sameMessage logId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getLogId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private d(Lcom/unisound/lib/msgcenter/bean/LogMessage;)[Lcom/phicomm/speaker/adapter/a/a/b;
    .locals 9

    .line 298
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getMessageType()I

    move-result v0

    const/16 v1, 0x4e35

    const/16 v2, 0x4e32

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 310
    :pswitch_0
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getServiceData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {p1, v2}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setMessageType(I)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getServiceData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/NoteIntent;

    const-string v3, "task"

    .line 320
    invoke-virtual {v0}, Lnluparser/scheme/NoteIntent;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    invoke-virtual {p1, v2}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setMessageType(I)V

    goto :goto_0

    .line 305
    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getServiceData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 306
    invoke-virtual {p1, v2}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setMessageType(I)V

    .line 328
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getMessageType()I

    move-result v0

    const/16 v2, 0x4e2c

    const/4 v3, 0x0

    if-eq v0, v2, :cond_d

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v1, :cond_b

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 440
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getTtsAnswer()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v3

    .line 443
    :cond_3
    new-instance v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/a/a/b;-><init>()V

    .line 444
    new-instance v1, Lcom/phicomm/speaker/adapter/a/d;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/adapter/a/d;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 445
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/b;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    .line 446
    new-array v3, v5, [Lcom/phicomm/speaker/adapter/a/a/b;

    .line 447
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->a(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Lcom/phicomm/speaker/adapter/a/a/b;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v0, v3, v2

    goto/16 :goto_2

    .line 411
    :pswitch_2
    new-instance v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/a/a/b;-><init>()V

    .line 412
    new-instance v1, Lcom/phicomm/speaker/adapter/a/i;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/adapter/a/i;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 413
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getServiceData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnluparser/scheme/NoteIntent;

    if-nez v6, :cond_4

    const-string p1, "HomePagePresenter"

    const-string v0, "noteIntent data is null!"

    .line 415
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 418
    :cond_4
    invoke-virtual {v1, v6}, Lcom/phicomm/speaker/adapter/a/i;->a(Lnluparser/scheme/NoteIntent;)V

    .line 419
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/b;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    .line 420
    new-array v3, v5, [Lcom/phicomm/speaker/adapter/a/a/b;

    .line 421
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->a(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Lcom/phicomm/speaker/adapter/a/a/b;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v0, v3, v2

    goto/16 :goto_2

    .line 396
    :pswitch_3
    new-instance v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/a/a/b;-><init>()V

    .line 397
    new-instance v1, Lcom/phicomm/speaker/adapter/a/c;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/adapter/a/c;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 398
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getServiceData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnluparser/scheme/AlarmIntent;

    if-nez v6, :cond_5

    const-string p1, "HomePagePresenter"

    const-string v0, "alarmIntent data is null!"

    .line 400
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 403
    :cond_5
    invoke-virtual {v1, v6}, Lcom/phicomm/speaker/adapter/a/c;->a(Lnluparser/scheme/AlarmIntent;)V

    .line 404
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/b;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    .line 405
    new-array v3, v5, [Lcom/phicomm/speaker/adapter/a/a/b;

    .line 406
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->a(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Lcom/phicomm/speaker/adapter/a/a/b;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v0, v3, v2

    goto/16 :goto_2

    .line 380
    :pswitch_4
    new-instance v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/a/a/b;-><init>()V

    .line 381
    new-instance v1, Lcom/phicomm/speaker/adapter/a/f;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/adapter/a/f;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 382
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getServiceData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnluparser/scheme/ReminderIntent;

    if-nez v6, :cond_6

    const-string p1, "HomePagePresenter"

    const-string v0, "reminder data is null!"

    .line 384
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_6
    const-string v3, "HomePagePresenter"

    .line 387
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " reminderIntent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1, v6}, Lcom/phicomm/speaker/adapter/a/f;->a(Lnluparser/scheme/ReminderIntent;)V

    .line 389
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/b;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    .line 390
    new-array v3, v5, [Lcom/phicomm/speaker/adapter/a/a/b;

    .line 391
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->a(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Lcom/phicomm/speaker/adapter/a/a/b;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v0, v3, v2

    goto/16 :goto_2

    .line 364
    :pswitch_5
    new-instance v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/a/a/b;-><init>()V

    .line 365
    new-instance v1, Lcom/phicomm/speaker/adapter/a/j;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/adapter/a/j;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 366
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getServiceData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnluparser/scheme/WeatherResult;

    if-eqz v6, :cond_8

    .line 367
    invoke-virtual {v6}, Lnluparser/scheme/WeatherResult;->getWeatherDays()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 368
    invoke-virtual {v6}, Lnluparser/scheme/WeatherResult;->getWeatherDays()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_7

    goto :goto_1

    .line 372
    :cond_7
    invoke-virtual {v1, v6}, Lcom/phicomm/speaker/adapter/a/j;->a(Lnluparser/scheme/WeatherResult;)V

    .line 373
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/b;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    .line 374
    new-array v3, v5, [Lcom/phicomm/speaker/adapter/a/a/b;

    .line 375
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->a(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Lcom/phicomm/speaker/adapter/a/a/b;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v0, v3, v2

    goto/16 :goto_2

    :cond_8
    :goto_1
    const-string p1, "HomePagePresenter"

    const-string v0, "weather data is null!"

    .line 369
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 349
    :pswitch_6
    new-instance v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/a/a/b;-><init>()V

    .line 350
    new-instance v1, Lcom/phicomm/speaker/adapter/a/h;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/adapter/a/h;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 351
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getServiceData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnluparser/scheme/MusicResult$Music;

    if-nez v6, :cond_9

    const-string p1, "HomePagePresenter"

    const-string v0, "music data is null!"

    .line 353
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 356
    :cond_9
    invoke-virtual {v1, v6}, Lcom/phicomm/speaker/adapter/a/h;->a(Lnluparser/scheme/MusicResult$Music;)V

    .line 357
    new-array v3, v5, [Lcom/phicomm/speaker/adapter/a/a/b;

    .line 358
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/b;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->a(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Lcom/phicomm/speaker/adapter/a/a/b;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v0, v3, v2

    goto :goto_2

    .line 334
    :pswitch_7
    new-instance v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/a/a/b;-><init>()V

    .line 335
    new-instance v1, Lcom/phicomm/speaker/adapter/a/g;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/adapter/a/g;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 336
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getServiceData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnluparser/scheme/AudioResult$Music;

    if-nez v6, :cond_a

    const-string p1, "HomePagePresenter"

    const-string v0, "audio data is null!"

    .line 338
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 341
    :cond_a
    invoke-virtual {v1, v6}, Lcom/phicomm/speaker/adapter/a/g;->a(Lnluparser/scheme/AudioResult$Music;)V

    .line 342
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/b;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    .line 343
    new-array v3, v5, [Lcom/phicomm/speaker/adapter/a/a/b;

    .line 344
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->a(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Lcom/phicomm/speaker/adapter/a/a/b;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v0, v3, v2

    goto :goto_2

    .line 426
    :cond_b
    new-instance v0, Lcom/phicomm/speaker/adapter/a/a/b;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/a/a/b;-><init>()V

    .line 427
    new-instance v1, Lcom/phicomm/speaker/adapter/a/e;

    invoke-direct {v1, p1}, Lcom/phicomm/speaker/adapter/a/e;-><init>(Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 428
    invoke-virtual {p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->getServiceData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnluparser/scheme/AlarmIntent;

    if-nez v6, :cond_c

    const-string p1, "HomePagePresenter"

    const-string v0, "cuntDown data is null!"

    .line 430
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 433
    :cond_c
    invoke-virtual {v1, v6}, Lcom/phicomm/speaker/adapter/a/e;->a(Lnluparser/scheme/AlarmIntent;)V

    .line 434
    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/a/a/b;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    .line 435
    new-array v3, v5, [Lcom/phicomm/speaker/adapter/a/a/b;

    .line 436
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->a(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Lcom/phicomm/speaker/adapter/a/a/b;

    move-result-object p1

    aput-object p1, v3, v4

    aput-object v0, v3, v2

    :cond_d
    :goto_2
    return-object v3

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4e2f
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4e21
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4e2f
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(II)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const-string v0, "HomePagePresenter"

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChatLog pageNo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pageSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/presenter/e$2;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/presenter/e$2;-><init>(Lcom/phicomm/speaker/presenter/e;I)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/phicomm/speaker/e/d;->a(IILcom/unisound/lib/devices/callback/ILogMessageCallback;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    const v0, 0x7f0f0133

    .line 174
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/presenter/e;->a(I)V

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/e;->c:Lcom/phicomm/speaker/model/f;

    new-instance v1, Lcom/phicomm/speaker/presenter/e$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/presenter/e$1;-><init>(Lcom/phicomm/speaker/presenter/e;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/model/f;->a(Lcom/phicomm/speaker/e/c/d;)V

    return-void
.end method

.method public getAccountDetails(Lcom/phicomm/speaker/a/p;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "HomePagePresenter"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountDetails event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/p;->a()Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getImg()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/phicomm/speaker/adapter/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/p;->a()Lcom/phicomm/speaker/bean/AccountDetailsBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->getImg()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/phicomm/speaker/adapter/a/k;->a:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/e;->d:Lcom/phicomm/speaker/presenter/b/e;

    invoke-interface {p1}, Lcom/phicomm/speaker/presenter/b/e;->d()V

    :cond_0
    return-void
.end method

.method public onDeviceChange(Lcom/phicomm/speaker/e/b/d;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "HomePagePresenter"

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceChange event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/d;->a()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/e;->e:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/phicomm/speaker/presenter/e;->e:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/e;->e:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/phicomm/speaker/presenter/e;->d:Lcom/phicomm/speaker/presenter/b/e;

    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/d;->a()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/phicomm/speaker/presenter/b/e;->a(ZLcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    if-eqz v1, :cond_1

    .line 122
    const-class v2, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-static {v2}, Lcom/phicomm/speaker/model/common/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/presenter/yanry/i;

    invoke-virtual {v2}, Lcom/phicomm/speaker/presenter/yanry/i;->b()V

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/d;->a()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDeviceState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v1, :cond_2

    .line 129
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/d;->a()Lcom/phicomm/speaker/presenter/mqtt/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/presenter/mqtt/d;->d()V

    .line 130
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/d;->a()Lcom/phicomm/speaker/presenter/mqtt/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/presenter/mqtt/d;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :pswitch_1
    invoke-static {}, Lcom/phicomm/speaker/presenter/mqtt/d;->a()Lcom/phicomm/speaker/presenter/mqtt/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/mqtt/d;->d()V

    .line 141
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/d;->a()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->clone()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/presenter/e;->e:Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDeviceLog(Lcom/phicomm/speaker/e/b/e;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "HomePagePresenter"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceLog event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/phicomm/speaker/e/b/e;->a()Lcom/unisound/lib/msgcenter/bean/LogMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 148
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->b(Lcom/unisound/lib/msgcenter/bean/LogMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/presenter/e;->d(Lcom/unisound/lib/msgcenter/bean/LogMessage;)[Lcom/phicomm/speaker/adapter/a/a/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/e;->d:Lcom/phicomm/speaker/presenter/b/e;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/presenter/b/e;->a(Lcom/phicomm/speaker/adapter/a/a/b;)V

    .line 154
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/e;->d:Lcom/phicomm/speaker/presenter/b/e;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/presenter/b/e;->a(Lcom/phicomm/speaker/adapter/a/a/b;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onDeviceOnLineChange(Lcom/phicomm/speaker/e/b/f;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "HomePagePresenter"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceOnLineChange event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/e;->d:Lcom/phicomm/speaker/presenter/b/e;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/presenter/b/e;->a(Lcom/phicomm/speaker/e/b/f;)V

    return-void
.end method

.method public onNetWorkChange(Lcom/phicomm/speaker/a/y;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "HomePagePresenter"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetWorkChange event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/e;->d:Lcom/phicomm/speaker/presenter/b/e;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/presenter/b/e;->a(Lcom/phicomm/speaker/a/y;)V

    return-void
.end method

.method public userHeaderUrlChange(Lcom/phicomm/speaker/a/ae;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "HomePagePresenter"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userHeaderUrlChange event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/ae;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/phicomm/speaker/a/ae;->a()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/phicomm/speaker/adapter/a/k;->a:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/e;->d:Lcom/phicomm/speaker/presenter/b/e;

    invoke-interface {p1}, Lcom/phicomm/speaker/presenter/b/e;->d()V

    :cond_0
    return-void
.end method

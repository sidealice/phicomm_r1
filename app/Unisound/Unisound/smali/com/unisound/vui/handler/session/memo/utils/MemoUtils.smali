.class public final Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;
.super Ljava/lang/Object;
.source "MemoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "memolog-MemoUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static calculateNextTime(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)V
    .locals 14
    .param p0, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isAlarm()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "OFF"

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRepeatType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 373
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 374
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 376
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRepeatType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DAY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 377
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_10

    .line 378
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 380
    :cond_2
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRepeatType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MONTH"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 381
    :goto_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_10

    .line 382
    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_2

    .line 384
    :cond_3
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRepeatType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "YEAR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 385
    :goto_3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_10

    .line 386
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_3

    .line 388
    :cond_4
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRepeatType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WORKDAY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 389
    :goto_4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_10

    .line 390
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_5

    .line 391
    const/4 v7, 0x5

    const/4 v8, 0x3

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    .line 392
    :cond_5
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_6

    .line 393
    const/4 v7, 0x5

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    .line 395
    :cond_6
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_4

    .line 398
    :cond_7
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRepeatType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WEEKEND"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 399
    :goto_5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_10

    .line 400
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_8

    .line 401
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_5

    .line 402
    :cond_8
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 403
    const/4 v7, 0x5

    const/4 v8, 0x6

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_5

    .line 405
    :cond_9
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    rsub-int/lit8 v2, v7, 0x7

    .line 406
    .local v2, "increment":I
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_5

    .line 410
    .end local v2    # "increment":I
    :cond_a
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRepeatType()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, "repeatDays":[Ljava/lang/String;
    invoke-static {v6}, Lcom/unisound/vui/handler/session/memo/utils/MemoConstants;->mapRepeatDaysToInts([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 413
    .local v5, "repeatDayInts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_6
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_10

    .line 414
    const/4 v2, 0x0

    .line 415
    .restart local v2    # "increment":I
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 416
    .local v4, "nowDayOfWeek":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 418
    .local v3, "index":I
    if-gez v3, :cond_e

    .line 420
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 421
    .local v1, "day":I
    if-ge v4, v1, :cond_b

    .line 422
    sub-int v2, v1, v4

    .line 427
    .end local v1    # "day":I
    :cond_c
    if-nez v2, :cond_d

    .line 428
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, v4

    add-int/lit8 v2, v7, 0x7

    .line 437
    :cond_d
    :goto_7
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_6

    .line 430
    :cond_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_f

    .line 432
    add-int/lit8 v7, v3, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v2, v7, v4

    goto :goto_7

    .line 435
    :cond_f
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, v4

    add-int/lit8 v2, v7, 0x7

    goto :goto_7

    .line 440
    .end local v2    # "increment":I
    .end local v3    # "index":I
    .end local v4    # "nowDayOfWeek":I
    .end local v5    # "repeatDayInts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "repeatDays":[Ljava/lang/String;
    :cond_10
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setTime(J)V

    .line 441
    const-string v7, "memolog-MemoUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calculateNextTime, result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static generateAlarmMemo(Lnluparser/scheme/AlarmIntent;)Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    .locals 14
    .param p0, "alarmIntent"    # Lnluparser/scheme/AlarmIntent;

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "startTime":Ljava/lang/String;
    const-string v5, "memolog-MemoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateAlarmMemo, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-static {v3, v5}, Lcom/unisound/vui/util/TimeUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 56
    .local v2, "memoDate":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    const-string v5, "OFF"

    .line 57
    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    .line 62
    :cond_0
    const-string v5, "OFF"

    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 64
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 74
    :goto_1
    new-instance v1, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-direct {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;-><init>()V

    .line 76
    .local v1, "localMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoYear(I)V

    .line 77
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoMonth(I)V

    .line 78
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoDay(I)V

    .line 79
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoHour(I)V

    .line 80
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoMinute(I)V

    .line 81
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoSecond(I)V

    .line 82
    const-string v5, "OFF"

    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    invoke-virtual {v1, v12}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRepeat(Z)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRepeatType(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoContent(Ljava/lang/String;)V

    .line 87
    const-string v5, "alarm"

    invoke-virtual {v1, v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoType(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v12}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setEnabled(Z)V

    .line 89
    invoke-static {}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getInstance()Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getFavoriteRingtone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRinging(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "localMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    :cond_2
    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "time":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v13, :cond_3

    .line 69
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 71
    :cond_3
    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->generateDateForRepeatMemo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .restart local v0    # "calendar":Ljava/util/Calendar;
    goto/16 :goto_1
.end method

.method public static generateCountdownMemo(Lnluparser/scheme/AlarmIntent;)Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    .locals 5
    .param p0, "alarmIntent"    # Lnluparser/scheme/AlarmIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x1

    .line 29
    new-instance v1, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-direct {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;-><init>()V

    .line 30
    .local v1, "localMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 31
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getCountDown()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 33
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoYear(I)V

    .line 34
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoMonth(I)V

    .line 35
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoDay(I)V

    .line 36
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoHour(I)V

    .line 37
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoMinute(I)V

    .line 38
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoSecond(I)V

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRepeat(Z)V

    .line 41
    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getRepeatDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRepeatType(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoContent(Ljava/lang/String;)V

    .line 43
    const-string v2, "countDown"

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoType(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lnluparser/scheme/AlarmIntent;->getCountDown()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setCountDown(I)V

    .line 45
    invoke-virtual {v1, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setEnabled(Z)V

    .line 46
    invoke-static {}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getInstance()Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getFavoriteRingtone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRinging(Ljava/lang/String;)V

    .line 47
    return-object v1
.end method

.method private static generateDateForRepeatMemo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .locals 14
    .param p0, "repeatType"    # Ljava/lang/String;
    .param p1, "timeStr"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 298
    const-string v7, "HH:mm"

    invoke-static {p1, v7}, Lcom/unisound/vui/util/TimeUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 300
    .local v6, "time":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 301
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v7, 0xb

    invoke-virtual {v6}, Ljava/util/Date;->getHours()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 302
    const/16 v7, 0xc

    invoke-virtual {v6}, Ljava/util/Date;->getMinutes()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 303
    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 304
    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 305
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 307
    .local v2, "dayOfWeekNow":I
    const/4 v7, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 344
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, "repeatDays":[Ljava/lang/String;
    invoke-static {v5}, Lcom/unisound/vui/handler/session/memo/utils/MemoConstants;->mapRepeatDaysToInts([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 347
    .local v4, "repeatDayInts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 348
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 349
    :cond_1
    const/4 v3, 0x0

    .line 350
    .local v3, "increment":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 351
    .local v1, "day":I
    if-ge v2, v1, :cond_2

    .line 352
    sub-int v3, v1, v2

    .line 356
    .end local v1    # "day":I
    :cond_3
    if-nez v3, :cond_4

    .line 357
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v7, v2

    add-int/lit8 v3, v7, 0x7

    .line 359
    :cond_4
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->add(II)V

    .line 363
    .end local v3    # "increment":I
    .end local v4    # "repeatDayInts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "repeatDays":[Ljava/lang/String;
    :cond_5
    :goto_1
    return-object v0

    .line 307
    :sswitch_0
    const-string v8, "DAY"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :sswitch_1
    const-string v8, "WORKDAY"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string v8, "WEEKEND"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x2

    goto :goto_0

    .line 309
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 310
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 314
    :pswitch_1
    const/4 v7, 0x6

    if-ne v2, v7, :cond_6

    .line 315
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 316
    const/4 v7, 0x5

    const/4 v8, 0x3

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 318
    :cond_6
    const/4 v7, 0x7

    if-ne v2, v7, :cond_7

    .line 319
    const/4 v7, 0x5

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 320
    :cond_7
    const/4 v7, 0x1

    if-ne v2, v7, :cond_8

    .line 321
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 323
    :cond_8
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 324
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 329
    :pswitch_2
    const/4 v7, 0x7

    if-ne v2, v7, :cond_9

    .line 330
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 331
    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_1

    .line 333
    :cond_9
    const/4 v7, 0x1

    if-ne v2, v7, :cond_a

    .line 334
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    add-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 335
    const/4 v7, 0x5

    const/4 v8, 0x6

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_1

    .line 338
    :cond_a
    rsub-int/lit8 v3, v2, 0x7

    .line 339
    .restart local v3    # "increment":I
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_1

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a4c5d35 -> :sswitch_1
        0x1077c -> :sswitch_0
        0x73ec0047 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static generateReminderMemo(Lnluparser/scheme/ReminderIntent;)Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    .locals 9
    .param p0, "reminderIntent"    # Lnluparser/scheme/ReminderIntent;

    .prologue
    const/4 v8, 0x1

    .line 94
    new-instance v1, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-direct {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;-><init>()V

    .line 97
    .local v1, "localMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    invoke-virtual {p0}, Lnluparser/scheme/ReminderIntent;->getDateTime()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yyyy-MM-dd HH:mm"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/TimeUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 99
    .local v2, "memoDate":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    const-string v3, "OFF"

    .line 100
    invoke-virtual {p0}, Lnluparser/scheme/ReminderIntent;->getRepeatType()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 119
    .end local v1    # "localMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    :goto_0
    return-object v1

    .line 103
    .restart local v1    # "localMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 104
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 105
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 107
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoYear(I)V

    .line 108
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoMonth(I)V

    .line 109
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoDay(I)V

    .line 110
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoHour(I)V

    .line 111
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoMinute(I)V

    .line 112
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoSecond(I)V

    .line 113
    invoke-virtual {v1, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRepeat(Z)V

    .line 114
    invoke-virtual {p0}, Lnluparser/scheme/ReminderIntent;->getRepeatType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRepeatType(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lnluparser/scheme/ReminderIntent;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoContent(Ljava/lang/String;)V

    .line 116
    const-string v3, "reminder"

    invoke-virtual {v1, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoType(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setEnabled(Z)V

    .line 118
    invoke-static {}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getInstance()Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getFavoriteRingtone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRinging(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAlarmReminder(Ljava/lang/String;Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)Lcom/unisound/ant/device/bean/AlarmReminder;
    .locals 10
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 213
    new-instance v0, Lcom/unisound/ant/device/bean/AlarmReminder;

    invoke-direct {v0}, Lcom/unisound/ant/device/bean/AlarmReminder;-><init>()V

    .line 214
    .local v0, "alarmReminder":Lcom/unisound/ant/device/bean/AlarmReminder;
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/AlarmReminder;->setId(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/AlarmReminder;->setOpen(Z)V

    .line 216
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRepeatType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/AlarmReminder;->setRepeatDate(Ljava/lang/String;)V

    .line 217
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%04d-%02d-%02d"

    new-array v4, v9, [Ljava/lang/Object;

    .line 218
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoYear()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMonth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 219
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 218
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/AlarmReminder;->setDate(Ljava/lang/String;)V

    .line 220
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v3, "%02d:%02d:%02d"

    new-array v4, v9, [Ljava/lang/Object;

    .line 221
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 222
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoSecond()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 221
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "mTime":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/bean/AlarmReminder;->setTime(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/AlarmReminder;->setLabel(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->setStatus(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/AlarmReminder;->setType(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRinging()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/AlarmReminder;->setRinging(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getCountDown()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/bean/AlarmReminder;->setCountDown(I)V

    .line 229
    return-object v0
.end method

.method public static getLocalMemo(Lcom/unisound/ant/device/bean/AlarmReminder;)Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    .locals 11
    .param p0, "alarmReminder"    # Lcom/unisound/ant/device/bean/AlarmReminder;

    .prologue
    const/4 v8, 0x1

    .line 234
    new-instance v5, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-direct {v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;-><init>()V

    .line 235
    .local v5, "localMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoId(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->isOpen()Z

    move-result v9

    invoke-virtual {v5, v9}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setEnabled(Z)V

    .line 237
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getRepeatDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRepeatType(Ljava/lang/String;)V

    .line 238
    const-string v9, "OFF"

    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getRepeatDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :goto_0
    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRepeat(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoContent(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoType(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getRinging()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setRinging(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getCountDown()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setCountDown(I)V

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getTime()Ljava/lang/String;

    move-result-object v8

    .line 244
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 246
    :cond_0
    const-string v8, "memolog-MemoUtils"

    const-string v9, "getLocalMemo memoDay is null or memoTime is null"

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v5, 0x0

    .line 287
    .end local v5    # "localMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    :goto_1
    return-object v5

    .line 238
    .restart local v5    # "localMemo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getRepeatDate()Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "repeatType":Ljava/lang/String;
    const-string v8, "alarm"

    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 253
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "OFF"

    .line 254
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 256
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getTime()Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, "timeStr":Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/unisound/vui/handler/session/memo/utils/MemoUtils;->generateDateForRepeatMemo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 259
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoYear(I)V

    .line 260
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoMonth(I)V

    .line 261
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoDay(I)V

    .line 274
    .end local v7    # "timeStr":Ljava/lang/String;
    :goto_2
    const-string v8, "countDown"

    invoke-virtual {v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 275
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getTime()Ljava/lang/String;

    move-result-object v8

    const-string v9, "HH:mm:ss"

    invoke-static {v8, v9}, Lcom/unisound/vui/util/TimeUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 279
    .local v3, "dateTime":Ljava/util/Date;
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 280
    .local v1, "calendarTime":Ljava/util/Calendar;
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 281
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoHour(I)V

    .line 282
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoMinute(I)V

    .line 283
    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoSecond(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 284
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "calendarTime":Ljava/util/Calendar;
    .end local v3    # "dateTime":Ljava/util/Date;
    .end local v6    # "repeatType":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 285
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 264
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "repeatType":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getDate()Ljava/lang/String;

    move-result-object v8

    const-string v9, "yyyy-MM-dd"

    invoke-static {v8, v9}, Lcom/unisound/vui/util/TimeUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 265
    .local v2, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 266
    .restart local v0    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 268
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoYear(I)V

    .line 269
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoMonth(I)V

    .line 270
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoDay(I)V

    goto :goto_2

    .line 277
    .end local v2    # "date":Ljava/util/Date;
    :cond_4
    invoke-virtual {p0}, Lcom/unisound/ant/device/bean/AlarmReminder;->getTime()Ljava/lang/String;

    move-result-object v8

    const-string v9, "HH:mm"

    invoke-static {v8, v9}, Lcom/unisound/vui/util/TimeUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .restart local v3    # "dateTime":Ljava/util/Date;
    goto :goto_3
.end method

.method public static getSetMemoNluTime(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "memo"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    .param p1, "nluTimeDay"    # [Ljava/lang/String;
    .param p2, "nluTimeDuration"    # [Ljava/lang/String;

    .prologue
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v2, "nluTimeBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 126
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRepeatType()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "repeatDate":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isRepeat()Z

    move-result v6

    if-nez v6, :cond_9

    .line 128
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoYear()I

    move-result v7

    if-ne v6, v7, :cond_4

    const/4 v6, 0x2

    .line 129
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMonth()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 130
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 131
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    if-ltz v6, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x3

    if-ge v6, v7, :cond_0

    .line 147
    const-string v5, ""

    .line 148
    .local v5, "tempDuration":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v6

    const/16 v7, 0x8

    if-ge v6, v7, :cond_5

    .line 149
    const/4 v6, 0x0

    aget-object v5, p2, v6

    .line 159
    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .end local v5    # "tempDuration":Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 133
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 135
    const/4 v6, 0x2

    aget-object v6, p1, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 137
    :cond_3
    const/4 v6, 0x3

    aget-object v6, p1, v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 138
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 137
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 141
    :cond_4
    const/4 v6, 0x3

    aget-object v6, p1, v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 143
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 142
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 150
    .restart local v5    # "tempDuration":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v6

    const/16 v7, 0xb

    if-ge v6, v7, :cond_6

    .line 151
    const/4 v6, 0x1

    aget-object v5, p2, v6

    goto/16 :goto_1

    .line 152
    :cond_6
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v6

    const/16 v7, 0xd

    if-ge v6, v7, :cond_7

    .line 153
    const/4 v6, 0x2

    aget-object v5, p2, v6

    goto/16 :goto_1

    .line 154
    :cond_7
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v6

    const/16 v7, 0x13

    if-ge v6, v7, :cond_8

    .line 155
    const/4 v6, 0x3

    aget-object v5, p2, v6

    goto/16 :goto_1

    .line 157
    :cond_8
    const/4 v6, 0x4

    aget-object v5, p2, v6

    goto/16 :goto_1

    .line 164
    .end local v5    # "tempDuration":Ljava/lang/String;
    :cond_9
    :try_start_0
    const-string v6, "YEAR"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 165
    const/4 v6, 0x4

    aget-object v6, p1, v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMonth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 166
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 165
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v6, "memolog-MemoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 167
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    :try_start_1
    const-string v6, "MONTH"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 168
    const/4 v6, 0x5

    aget-object v6, p1, v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoDay()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 169
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 168
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 170
    :cond_b
    const-string v6, "DAY"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 171
    const/4 v6, 0x6

    aget-object v6, p1, v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 171
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 173
    :cond_c
    const-string v6, "WORKDAY"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 174
    const/4 v6, 0x7

    aget-object v6, p1, v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 176
    :cond_d
    const-string v6, "WEEKEND"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 177
    const/16 v6, 0x8

    aget-object v6, p1, v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 177
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 179
    :cond_e
    if-eqz v3, :cond_0

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "D1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 182
    const/16 v6, 0x9

    aget-object v6, p1, v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 184
    :cond_f
    const-string v6, "D2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 185
    const/16 v6, 0xa

    aget-object v6, p1, v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 185
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 187
    :cond_10
    const-string v6, "D3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 188
    const/16 v6, 0xb

    aget-object v6, p1, v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 188
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 190
    :cond_11
    const-string v6, "D4"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 191
    const/16 v6, 0xc

    aget-object v6, p1, v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 191
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 193
    :cond_12
    const-string v6, "D5"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 194
    const/16 v6, 0xd

    aget-object v6, p1, v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 196
    :cond_13
    const-string v6, "D6"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 197
    const/16 v6, 0xe

    aget-object v6, p1, v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 200
    :cond_14
    const-string v6, "D7"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    const/16 v6, 0xf

    aget-object v6, p1, v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 201
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.class public Lcom/phicomm/speaker/f/a/j;
.super Ljava/lang/Object;
.source "FunctionUtil.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 30
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v5, v2

    move v4, v3

    :goto_0
    const-string v6, "%s"

    add-int/lit8 v4, v4, 0x1

    .line 34
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-lez v5, :cond_2

    .line 38
    new-array v1, v5, [Ljava/lang/Object;

    :goto_1
    if-ge v2, v5, :cond_1

    .line 40
    aput-object p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7a4c5d35

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v1, :cond_4

    const v1, 0x1077c

    if-eq v0, v1, :cond_3

    const v1, 0x1314f

    if-eq v0, v1, :cond_2

    const v1, 0x73ec0047

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "WEEKEND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "OFF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_1

    :cond_3
    const-string v0, "DAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_1

    :cond_4
    const-string v0, "WORKDAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string p1, "^\\D[1-7](?:(?:,\\D[1-7]){0,5},\\D[1-7])?$"

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, ","

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    array-length v0, p1

    move v1, v6

    goto :goto_3

    :pswitch_0
    const-string p0, "\u5468\u672b"

    return-object p0

    :pswitch_1
    const-string p0, "\u5de5\u4f5c\u65e5"

    return-object p0

    :pswitch_2
    const-string p0, "\u6bcf\u5929"

    return-object p0

    :pswitch_3
    if-eqz p1, :cond_6

    const-string p0, "\u5355\u6b21"

    goto :goto_2

    :cond_6
    const-string p0, ""

    :goto_2
    return-object p0

    :goto_3
    if-ge v1, v0, :cond_8

    aget-object v7, p1, v1

    .line 67
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    goto :goto_4

    :pswitch_4
    const-string v8, "D7"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x6

    goto :goto_5

    :pswitch_5
    const-string v8, "D6"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x5

    goto :goto_5

    :pswitch_6
    const-string v8, "D5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x4

    goto :goto_5

    :pswitch_7
    const-string v8, "D4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v3

    goto :goto_5

    :pswitch_8
    const-string v8, "D3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v2

    goto :goto_5

    :pswitch_9
    const-string v8, "D2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v5

    goto :goto_5

    :pswitch_a
    const-string v8, "D1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v6

    goto :goto_5

    :cond_7
    :goto_4
    move v8, v4

    :goto_5
    packed-switch v8, :pswitch_data_2

    const-string v8, "unhandled repeat day: %s."

    .line 90
    new-array v9, v5, [Ljava/lang/Object;

    aput-object v7, v9, v6

    invoke-static {v8, v9}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :pswitch_b
    const-string v7, "\u5468\u65e5 "

    .line 87
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :pswitch_c
    const-string v7, "\u5468\u516d "

    .line 84
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :pswitch_d
    const-string v7, "\u5468\u4e94 "

    .line 81
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :pswitch_e
    const-string v7, "\u5468\u56db "

    .line 78
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :pswitch_f
    const-string v7, "\u5468\u4e09 "

    .line 75
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :pswitch_10
    const-string v7, "\u5468\u4e8c "

    .line 72
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :pswitch_11
    const-string v7, "\u5468\u4e00 "

    .line 69
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 94
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p1, "unhandled repeat value: %s."

    .line 97
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v6

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x86d
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static a(Lcom/unisound/lib/time/bean/AlarmReminder;)V
    .locals 7

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/unisound/lib/time/bean/AlarmReminder;->getCountDownTime()I

    move-result v2

    int-to-long v2, v2

    add-long v4, v0, v2

    const-string v0, "%tF"

    const/4 v1, 0x1

    .line 110
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->setDate(Ljava/lang/String;)V

    const-string v0, "%tT"

    .line 111
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unisound/lib/time/bean/AlarmReminder;->setTime(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/unisound/lib/time/bean/AlarmReminder;III)V
    .locals 1

    const v0, 0x36ee80

    mul-int/2addr p1, v0

    const v0, 0xea60

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    mul-int/lit16 p3, p3, 0x3e8

    add-int/2addr p1, p3

    .line 104
    invoke-virtual {p0, p1}, Lcom/unisound/lib/time/bean/AlarmReminder;->setCountDownTime(I)V

    .line 105
    invoke-static {p0}, Lcom/phicomm/speaker/f/a/j;->a(Lcom/unisound/lib/time/bean/AlarmReminder;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 21
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/e/d;->d()Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getDevice_id()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.class public abstract Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "AbstractMusicScheduleHandler.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver$ScheduleTriggeredListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU",
        "<",
        "Lnluparser/scheme/SettingExtIntent;",
        "Lnluparser/scheme/Result$NullResult;",
        ">;>;",
        "Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver$ScheduleTriggeredListener;"
    }
.end annotation


# static fields
.field protected static final ACTION_MUSIC_SCHEDULE:Ljava/lang/String; = "com.phicomm.speaker.music.schedule"

.field protected static final KEY_STOP_TIME_IN_MILLS:Ljava/lang/String; = "stop_time_in_mills"

.field protected static final MAX_TIME_OFFSET:I = 0x5265c00

.field protected static final MIN_TIME_OFFSET:I = 0x2710

.field protected static final SERVICE_NAME:Ljava/lang/String; = "cn.yunzhisheng.music.schedule"

.field protected static final SP_NAME_MUSIC_SCHEDULE:Ljava/lang/String; = "music_schedule"

.field protected static final TAG:Ljava/lang/String; = "AbstractMusicScheduleHandler"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 55
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mContext:Landroid/content/Context;

    .line 56
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mContext:Landroid/content/Context;

    const-string v2, "music_schedule"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.phicomm.speaker.music.schedule"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver;

    invoke-direct {v2, p0}, Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver;-><init>(Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver$ScheduleTriggeredListener;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method

.method private clearStopTime()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "AbstractMusicScheduleHandler"

    const-string v1, "clearStopTime"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stop_time_in_mills"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    return-void
.end method

.method private createSchedule(J)V
    .locals 7
    .param p1, "stopTimeInMillis"    # J

    .prologue
    const/4 v6, 0x0

    .line 141
    const-string v3, "AbstractMusicScheduleHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSchedule, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 143
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.phicomm.speaker.music.schedule"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v3, "stop_time"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 146
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mContext:Landroid/content/Context;

    const/16 v4, 0x1000

    const/high16 v5, 0x8000000

    .line 147
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 148
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 149
    invoke-virtual {v0, v6, p1, p2, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {v0, v6, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private dealWithStopAction(Lnluparser/scheme/SettingIntent;)Ljava/lang/String;
    .locals 20
    .param p1, "settingIntent"    # Lnluparser/scheme/SettingIntent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->isInMusicStatus()Z

    move-result v13

    if-nez v13, :cond_0

    .line 104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mContext:Landroid/content/Context;

    sget v14, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_schedule_not_support_in_current_scene:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 134
    :goto_0
    return-object v13

    .line 107
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/SettingIntent;->getOffsetTime()Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "offsetTime":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->parseOffsetTime(Ljava/lang/String;)J

    move-result-wide v10

    .line 109
    .local v10, "offsetTimeInt":J
    const-wide/16 v14, 0x2710

    cmp-long v13, v10, v14

    if-gez v13, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mContext:Landroid/content/Context;

    sget v14, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_schedule_time_too_short:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 111
    :cond_1
    const-wide/32 v14, 0x5265c00

    cmp-long v13, v10, v14

    if-lez v13, :cond_2

    .line 112
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mContext:Landroid/content/Context;

    sget v14, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_schedule_time_too_long:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/SettingIntent;->getTime()Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, "stopTime":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->parseTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 118
    .local v2, "calendar":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    add-long v16, v16, v18

    cmp-long v13, v14, v16

    if-lez v13, :cond_4

    .line 120
    const-wide/16 v14, 0x7530

    cmp-long v13, v10, v14

    if-gez v13, :cond_3

    .line 121
    const/16 v13, 0xd

    const/4 v14, 0x3

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->add(II)V

    .line 123
    :cond_3
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->saveStopTime(J)V

    .line 124
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->createSchedule(J)V

    .line 125
    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 126
    .local v4, "day":I
    const/16 v13, 0xb

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 127
    .local v5, "hour":I
    const/16 v13, 0xc

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 128
    .local v6, "minute":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mContext:Landroid/content/Context;

    sget v14, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_schedule_will_stop:I

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 130
    .end local v4    # "day":I
    .end local v5    # "hour":I
    .end local v6    # "minute":I
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 131
    .local v12, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v7, v13, 0x1

    .line 132
    .local v7, "month":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x5

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 133
    .local v3, "date":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    const/16 v14, 0xb

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 134
    .restart local v5    # "hour":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mContext:Landroid/content/Context;

    sget v14, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_schedule_time_out_of_date:I

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    .line 135
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    .line 134
    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0
.end method

.method private getStringOfSettingIntent(Lnluparser/scheme/SettingIntent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Lnluparser/scheme/SettingIntent;

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Lnluparser/scheme/SettingIntent;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lnluparser/scheme/SettingIntent;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", anchorTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lnluparser/scheme/SettingIntent;->getAnchorTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Lnluparser/scheme/SettingIntent;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    invoke-virtual {p1}, Lnluparser/scheme/SettingIntent;->getOffsetTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    return-object v0
.end method

.method private parseOffsetTime(Ljava/lang/String;)J
    .locals 8
    .param p1, "offsetTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 169
    .local v2, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 170
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 171
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 173
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private parseTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5
    .param p1, "time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 178
    .local v2, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 179
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 180
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 181
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 182
    return-object v0
.end method

.method private saveStopTime(J)V
    .locals 3
    .param p1, "stopTimeInMillis"    # J

    .prologue
    .line 156
    const-string v0, "AbstractMusicScheduleHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveStopTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "stop_time_in_mills"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 158
    return-void
.end method


# virtual methods
.method protected bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/SettingExtIntent;",
            "Lnluparser/scheme/Result$NullResult;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/SettingExtIntent;Lnluparser/scheme/Result$NullResult;>;"
    const-string v0, "cn.yunzhisheng.music.schedule"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 6
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/SettingExtIntent;",
            "Lnluparser/scheme/Result$NullResult;",
            ">;",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/SettingExtIntent;Lnluparser/scheme/Result$NullResult;>;"
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 87
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/handler/session/music/R$string;->tts_unsupport:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "prompt":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v3

    check-cast v3, Lnluparser/scheme/SettingExtIntent;

    invoke-virtual {v3}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v2

    .line 90
    .local v2, "settingIntents":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/SettingIntent;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnluparser/scheme/SettingIntent;

    .line 92
    .local v1, "settingIntent":Lnluparser/scheme/SettingIntent;
    const-string v3, "AbstractMusicScheduleHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eventReceived, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->getStringOfSettingIntent(Lnluparser/scheme/SettingIntent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "ACT_STOP"

    invoke-virtual {v1}, Lnluparser/scheme/SettingIntent;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->dealWithStopAction(Lnluparser/scheme/SettingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .end local v1    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :cond_0
    invoke-interface {p2, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->setPriority(I)V

    .line 75
    return-void
.end method

.method protected abstract isInMusicStatus()Z
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 8
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const-wide/16 v6, 0x0

    .line 62
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "stop_time_in_mills"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 64
    .local v0, "stopTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->createSchedule(J)V

    .line 70
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v2

    return v2

    .line 66
    :cond_1
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->clearStopTime()V

    goto :goto_0
.end method

.method public onScheduleTriggered()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->isInMusicStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "AbstractMusicScheduleHandler"

    const-string v1, "onScheduleTriggered stop music"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doFinishAllInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->clearStopTime()V

    .line 215
    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "AbstractMusicScheduleHandler"

    const-string v1, "onTTSEventPlayingEnd"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/AbstractMusicScheduleHandler;->reset()V

    .line 203
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doResume"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 205
    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

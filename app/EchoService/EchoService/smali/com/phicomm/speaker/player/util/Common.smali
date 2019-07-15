.class public Lcom/phicomm/speaker/player/util/Common;
.super Landroid/app/Application;
.source "Common.java"


# static fields
.field public static final CROSSFADE_DURATION:Ljava/lang/String; = "CrossfadeDuration"

.field public static final CROSSFADE_ENABLED:Ljava/lang/String; = "CrossfadeEnabled"

.field public static final PLAY_MODE:Ljava/lang/String; = "PlayMode"

.field private static mSharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public convertMillisToMinsSecs(J)Ljava/lang/String;
    .locals 13
    .param p1, "milliseconds"    # J

    .prologue
    const/16 v12, 0xa

    .line 94
    const-wide/16 v8, 0x3e8

    div-long v8, p1, v8

    long-to-int v7, v8

    rem-int/lit8 v6, v7, 0x3c

    .line 95
    .local v6, "secondsValue":I
    const-wide/32 v8, 0xea60

    div-long v8, p1, v8

    const-wide/16 v10, 0x3c

    rem-long/2addr v8, v10

    long-to-int v3, v8

    .line 96
    .local v3, "minutesValue":I
    const-wide/32 v8, 0x36ee80

    div-long v8, p1, v8

    const-wide/16 v10, 0x18

    rem-long/2addr v8, v10

    long-to-int v1, v8

    .line 98
    .local v1, "hoursValue":I
    const-string v5, ""

    .line 99
    .local v5, "seconds":Ljava/lang/String;
    const-string v2, ""

    .line 100
    .local v2, "minutes":Ljava/lang/String;
    const-string v0, ""

    .line 102
    .local v0, "hours":Ljava/lang/String;
    if-ge v6, v12, :cond_0

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    :goto_0
    if-ge v3, v12, :cond_1

    .line 109
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    :goto_1
    if-ge v1, v12, :cond_2

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_2
    const-string v4, ""

    .line 121
    .local v4, "output":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    :goto_3
    return-object v4

    .line 105
    .end local v4    # "output":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 111
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 117
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 124
    .restart local v4    # "output":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method public getCrossfadeDuration()I
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/util/Common;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CrossfadeDuration"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/phicomm/speaker/player/util/Common;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public isCrossfadeEnabled()Z
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/util/Common;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CrossfadeEnabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 41
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/util/Common;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/phicomm/speaker/player/util/Common;->mContext:Landroid/content/Context;

    .line 44
    const-string v3, "com.phicomm.speaker.player"

    invoke-virtual {p0, v3, v5}, Lcom/phicomm/speaker/player/util/Common;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/phicomm/speaker/player/util/Common;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 53
    invoke-static {}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->newBuilder()Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    move-result-object v3

    new-instance v4, Lcom/phicomm/speaker/player/logger/LogcatLogStrategy;

    invoke-direct {v4}, Lcom/phicomm/speaker/player/logger/LogcatLogStrategy;-><init>()V

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->logStrategy(Lcom/phicomm/speaker/player/logger/LogStrategy;)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    move-result-object v3

    const-string v4, "EchoService"

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->tag(Ljava/lang/String;)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->showDateInfo(Z)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->build()Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;

    move-result-object v1

    .line 58
    .local v1, "csvFormatLogcatStrategy":Lcom/phicomm/speaker/player/logger/FormatStrategy;
    new-instance v3, Lcom/phicomm/speaker/player/logger/AndroidLogAdapter;

    invoke-direct {v3, v1}, Lcom/phicomm/speaker/player/logger/AndroidLogAdapter;-><init>(Lcom/phicomm/speaker/player/logger/FormatStrategy;)V

    invoke-static {v3}, Lcom/phicomm/speaker/player/logger/Logger;->addLogAdapter(Lcom/phicomm/speaker/player/logger/LogAdapter;)V

    .line 59
    invoke-static {}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->newBuilder()Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    move-result-object v3

    const-string v4, "EchoService"

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->tag(Ljava/lang/String;)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/util/Common;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "logger"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->folder(Ljava/lang/String;)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->build()Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;

    move-result-object v0

    .line 63
    .local v0, "csvFormatDiskStrategy":Lcom/phicomm/speaker/player/logger/FormatStrategy;
    invoke-static {}, Lcom/phicomm/speaker/player/util/Utils;->hasSDCardMounted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-static {}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;->newBuilder()Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    move-result-object v3

    const-string v4, "EchoService"

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->tag(Ljava/lang/String;)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {p0, v5}, Lcom/phicomm/speaker/player/util/Common;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "logger"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->folder(Ljava/lang/String;)Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/logger/CsvFormatStrategy$Builder;->build()Lcom/phicomm/speaker/player/logger/CsvFormatStrategy;

    move-result-object v0

    .line 69
    :cond_0
    new-instance v3, Lcom/phicomm/speaker/player/logger/DiskLogAdapter;

    invoke-direct {v3, v0}, Lcom/phicomm/speaker/player/logger/DiskLogAdapter;-><init>(Lcom/phicomm/speaker/player/logger/FormatStrategy;)V

    invoke-static {v3}, Lcom/phicomm/speaker/player/logger/Logger;->addLogAdapter(Lcom/phicomm/speaker/player/logger/LogAdapter;)V

    .line 78
    invoke-static {p0}, Lorg/xutils/x$Ext;->init(Landroid/app/Application;)V

    .line 81
    invoke-static {}, Lcom/phicomm/speaker/player/helpers/UnisoundConfigHelper;->getMhdMusicAddr()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "mhdMusicAddr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    invoke-static {}, Lcom/phicomm/speaker/player/helpers/UnisoundConfigHelper;->getMhdMusicNetEnvironment()Z

    move-result v3

    invoke-static {v3}, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->setNetEnvironment(Z)V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-static {v2}, Lcom/phicomm/speaker/player/mhdInterface/unisound/api/HttpUrl;->setUrlMusicById(Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;
.super Ljava/lang/Object;
.source "DlnaUtils.java"


# static fields
.field public static final DLNA_OBJECTCLASS_MUSICID:Ljava/lang/String; = "object.item.audioItem"

.field public static final DLNA_OBJECTCLASS_PHOTOID:Ljava/lang/String; = "object.item.imageItem"

.field public static final DLNA_OBJECTCLASS_VIDEOID:Ljava/lang/String; = "object.item.videoItem"

.field private static final log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/phicomm/speaker/player/dlna/util/LogFactory;->createLog()Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertSeekRelTimeToMs(Ljava/lang/String;)I
    .locals 11
    .param p0, "reltime"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, "sec":I
    const/4 v2, 0x0

    .line 68
    .local v2, "ms":I
    const-string v7, ":"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "times":[Ljava/lang/String;
    const/4 v7, 0x3

    array-length v8, v4

    if-eq v7, v8, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v6

    .line 71
    :cond_1
    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 73
    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "hour":I
    aget-object v7, v4, v9

    invoke-static {v7}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 76
    aget-object v7, v4, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 77
    .local v1, "min":I
    aget-object v7, v4, v10

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "times2":[Ljava/lang/String;
    array-length v7, v5

    if-ne v10, v7, :cond_3

    .line 79
    aget-object v7, v5, v6

    invoke-static {v7}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 82
    aget-object v7, v5, v9

    invoke-static {v7}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 84
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 90
    :cond_2
    :goto_1
    const v6, 0x36ee80

    mul-int/2addr v6, v0

    const v7, 0xea60

    mul-int/2addr v7, v1

    add-int/2addr v6, v7

    mul-int/lit16 v7, v3, 0x3e8

    add-int/2addr v6, v7

    add-int/2addr v6, v2

    goto :goto_0

    .line 85
    :cond_3
    array-length v7, v5

    if-ne v9, v7, :cond_2

    .line 86
    aget-object v7, v5, v6

    invoke-static {v7}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method public static creat12BitUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "123456789abc"

    .line 30
    .local v0, "defaultUUID":Ljava/lang/String;
    invoke-static {p0}, Lcom/phicomm/speaker/player/dlna/util/CommonUtil;->getLocalMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "mac":Ljava/lang/String;
    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 36
    move-object v1, v0

    .line 40
    :cond_0
    return-object v1
.end method

.method private static formatHunToStr(I)Ljava/lang/String;
    .locals 2
    .param p0, "hun"    # I

    .prologue
    .line 132
    rem-int/lit8 p0, p0, 0x64

    .line 133
    const/16 v0, 0x9

    if-le p0, v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatTimeFromMSInt(I)Ljava/lang/String;
    .locals 9
    .param p0, "time"    # I

    .prologue
    const v7, 0x36ee80

    const v8, 0xea60

    .line 105
    const-string v0, "00"

    .line 106
    .local v0, "hour":Ljava/lang/String;
    const-string v1, "00"

    .line 107
    .local v1, "min":Ljava/lang/String;
    const-string v3, "00"

    .line 108
    .local v3, "sec":Ljava/lang/String;
    const-string v4, ":"

    .line 109
    .local v4, "split":Ljava/lang/String;
    move v6, p0

    .line 110
    .local v6, "tmptime":I
    const/4 v5, 0x0

    .line 111
    .local v5, "tmp":I
    if-lt v6, v7, :cond_0

    .line 112
    div-int v5, v6, v7

    .line 113
    invoke-static {v5}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->formatHunToStr(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    mul-int/2addr v7, v5

    sub-int/2addr v6, v7

    .line 116
    :cond_0
    if-lt v6, v8, :cond_1

    .line 117
    div-int v5, v6, v8

    .line 118
    invoke-static {v5}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->formatHunToStr(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    mul-int v7, v5, v8

    sub-int/2addr v6, v7

    .line 121
    :cond_1
    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_2

    .line 122
    div-int/lit16 v5, v6, 0x3e8

    .line 123
    invoke-static {v5}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->formatHunToStr(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    mul-int/lit16 v7, v5, 0x3e8

    sub-int/2addr v6, v7

    .line 127
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "ret":Ljava/lang/String;
    return-object v2
.end method

.method public static formateTime(J)Ljava/lang/String;
    .locals 12
    .param p0, "millis"    # J

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 142
    const-string v3, ""

    .line 143
    .local v3, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 144
    .local v0, "hour":I
    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-int v4, v6

    .line 145
    .local v4, "time":I
    rem-int/lit8 v2, v4, 0x3c

    .line 146
    .local v2, "second":I
    div-int/lit8 v1, v4, 0x3c

    .line 147
    .local v1, "minute":I
    const/16 v5, 0x3c

    if-lt v1, v5, :cond_0

    .line 148
    div-int/lit8 v0, v1, 0x3c

    .line 149
    rem-int/lit8 v1, v1, 0x3c

    .line 150
    const-string v5, "%02d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 156
    :goto_0
    return-object v3

    .line 152
    :cond_0
    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getDevName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/phicomm/speaker/player/dlna/datastore/LocalConfigSharePreference;->getDevName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAudioItem(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)Z
    .locals 2
    .param p0, "item"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getObjectClass()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "objectClass":Ljava/lang/String;
    const-string v1, "object.item.audioItem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x1

    .line 170
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isImageItem(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)Z
    .locals 2
    .param p0, "item"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getObjectClass()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "objectClass":Ljava/lang/String;
    const-string v1, "object.item.imageItem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 186
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 94
    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    const-string v3, "[0-9]*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 97
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 98
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isVideoItem(Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;)Z
    .locals 2
    .param p0, "item"    # Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/dlna/center/DlnaMediaModel;->getObjectClass()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "objectClass":Ljava/lang/String;
    const-string v1, "object.item.videoItem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const/4 v1, 0x1

    .line 178
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseSeekTime(Ljava/lang/String;)I
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 49
    .local v1, "seekPos":I
    const-string v5, "="

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "seektime":[Ljava/lang/String;
    const/4 v5, 0x2

    array-length v6, v3

    if-eq v5, v6, :cond_0

    move v2, v1

    .line 62
    .end local v1    # "seekPos":I
    .local v2, "seekPos":I
    :goto_0
    return v2

    .line 53
    .end local v2    # "seekPos":I
    .restart local v1    # "seekPos":I
    :cond_0
    const/4 v5, 0x0

    aget-object v4, v3, v5

    .line 54
    .local v4, "timetype":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v0, v3, v5

    .line 55
    .local v0, "position":Ljava/lang/String;
    const-string v5, "REL_TIME"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    invoke-static {v0}, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->convertSeekRelTimeToMs(Ljava/lang/String;)I

    move-result v1

    :goto_1
    move v2, v1

    .line 62
    .end local v1    # "seekPos":I
    .restart local v2    # "seekPos":I
    goto :goto_0

    .line 58
    .end local v2    # "seekPos":I
    .restart local v1    # "seekPos":I
    :cond_1
    sget-object v5, Lcom/phicomm/speaker/player/dlna/util/DlnaUtils;->log:Lcom/phicomm/speaker/player/dlna/util/CommonLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timetype = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phicomm/speaker/player/dlna/util/CommonLog;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static setDevName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "friendName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0, p1}, Lcom/phicomm/speaker/player/dlna/datastore/LocalConfigSharePreference;->commintDevName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

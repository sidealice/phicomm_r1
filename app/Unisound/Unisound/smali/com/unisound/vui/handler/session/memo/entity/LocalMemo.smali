.class public Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
.super Lorg/litepal/crud/DataSupport;
.source "LocalMemo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/litepal/crud/DataSupport;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;",
        ">;"
    }
.end annotation


# instance fields
.field private countDown:I

.field private executeCount:I

.field private id:J

.field private isEnabled:Z

.field private isLocalCreateUpDdate:Z

.field private isRepeat:Z

.field private isSnoozed:Z

.field private memoContent:Ljava/lang/String;

.field private memoCreateTime:Ljava/lang/String;

.field private memoDay:I

.field private memoHour:I

.field private memoId:Ljava/lang/String;

.field private memoMinute:I

.field private memoMonth:I

.field private memoSecond:I

.field private memoTone:Ljava/lang/String;

.field private memoType:Ljava/lang/String;

.field private memoYear:I

.field private repeatType:Ljava/lang/String;

.field private ringing:Ljava/lang/String;
    .annotation runtime Lorg/litepal/annotation/Column;
        defaultValue = "happiness"
    .end annotation
.end field

.field private snoozeHour:I

.field private snoozeMinute:I

.field private snoozeSeconds:I

.field private timeGap:J

.field private weeks:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "memoId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Lorg/litepal/crud/DataSupport;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isLocalCreateUpDdate:Z

    .line 59
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoId:Ljava/lang/String;

    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->weeks:[Z

    .line 61
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v2, 0x7

    .line 62
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoTone:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled:Z

    .line 64
    const-string v0, "yyyyMMdd HH:mm:ss"

    invoke-static {v0}, Lcom/unisound/vui/util/TimeUtils;->getNowDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoCreateTime:Ljava/lang/String;

    .line 65
    const-string v0, "happiness"

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->ringing:Ljava/lang/String;

    .line 66
    return-void

    .line 60
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getTypeWeight()B
    .locals 2

    .prologue
    .line 336
    const-string v0, "reminder"

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const/4 v0, 0x3

    .line 341
    :goto_0
    return v0

    .line 338
    :cond_0
    const-string v0, "countDown"

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    const/4 v0, 0x2

    goto :goto_0

    .line 341
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)I
    .locals 8
    .param p1, "another"    # Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 348
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 349
    goto :goto_0

    .line 350
    :cond_2
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTypeWeight()B

    move-result v4

    invoke-direct {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTypeWeight()B

    move-result v5

    if-eq v4, v5, :cond_4

    .line 351
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTypeWeight()B

    move-result v4

    invoke-direct {p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTypeWeight()B

    move-result v5

    if-le v4, v5, :cond_3

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    .line 353
    :cond_4
    iget-object v4, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoCreateTime:Ljava/lang/String;

    const-string v5, "yyyyMMdd HH:mm:ss"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/TimeUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 354
    .local v0, "date1":Ljava/util/Date;
    iget-object v4, p1, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoCreateTime:Ljava/lang/String;

    const-string v5, "yyyyMMdd HH:mm:ss"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/TimeUtils;->getDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 355
    .local v1, "date2":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 19
    check-cast p1, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->compareTo(Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 311
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 316
    :goto_0
    return v1

    .line 312
    :cond_0
    instance-of v1, p1, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 314
    check-cast v0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 316
    .local v0, "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCountDown()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->countDown:I

    return v0
.end method

.method public getExecuteCount()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->executeCount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->id:J

    return-wide v0
.end method

.method public getMemoContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoCreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoDay()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoDay:I

    return v0
.end method

.method public getMemoHour()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoHour:I

    return v0
.end method

.method public getMemoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoMinute()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoMinute:I

    return v0
.end method

.method public getMemoMonth()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoMonth:I

    return v0
.end method

.method public getMemoSecond()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoSecond:I

    return v0
.end method

.method public getMemoTone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoTone:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoType:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoYear()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoYear:I

    return v0
.end method

.method public getRepeatType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->repeatType:Ljava/lang/String;

    return-object v0
.end method

.method public getRinging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->ringing:Ljava/lang/String;

    return-object v0
.end method

.method public getSnoozeHour()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->snoozeHour:I

    return v0
.end method

.method public getSnoozeMinute()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->snoozeMinute:I

    return v0
.end method

.method public getSnoozeSeconds()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->snoozeSeconds:I

    return v0
.end method

.method public getTimeGap()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->timeGap:J

    return-wide v0
.end method

.method public getTimeInMillis()J
    .locals 7

    .prologue
    .line 325
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 326
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 327
    iget v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoYear:I

    iget v2, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoMonth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoDay:I

    iget v4, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoHour:I

    iget v5, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoMinute:I

    iget v6, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoSecond:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 328
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method public getTimeStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, "yyyyMMdd HH:mm:ss"

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/TimeUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWeeks()[Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->weeks:[Z

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAlarm()Z
    .locals 2

    .prologue
    .line 269
    const-string v0, "alarm"

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCountdown()Z
    .locals 2

    .prologue
    .line 277
    const-string v0, "countDown"

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled:Z

    return v0
.end method

.method public isLocalCreateUpDdate()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isLocalCreateUpDdate:Z

    return v0
.end method

.method public isReminder()Z
    .locals 2

    .prologue
    .line 273
    const-string v0, "reminder"

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRepeat()Z
    .locals 2

    .prologue
    .line 149
    const-string v0, "OFF"

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->repeatType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSnoozed()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isSnoozed:Z

    return v0
.end method

.method public setCountDown(I)V
    .locals 0
    .param p1, "countDown"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->countDown:I

    .line 266
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled:Z

    .line 146
    return-void
.end method

.method public setExecuteCount(I)V
    .locals 0
    .param p1, "executeCount"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->executeCount:I

    .line 178
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->id:J

    .line 74
    return-void
.end method

.method public setLocalCreateUpDdate(Z)V
    .locals 0
    .param p1, "localCreateUpDdate"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isLocalCreateUpDdate:Z

    .line 250
    return-void
.end method

.method public setMemoContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "memoContent"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoContent:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setMemoCreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "memoCreateTime"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoCreateTime:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setMemoDay(I)V
    .locals 0
    .param p1, "memoDay"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoDay:I

    .line 106
    return-void
.end method

.method public setMemoHour(I)V
    .locals 0
    .param p1, "memoHour"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoHour:I

    .line 114
    return-void
.end method

.method public setMemoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "memoId"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setMemoMinute(I)V
    .locals 0
    .param p1, "memoMinute"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoMinute:I

    .line 122
    return-void
.end method

.method public setMemoMonth(I)V
    .locals 0
    .param p1, "memoMonth"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoMonth:I

    .line 98
    return-void
.end method

.method public setMemoSecond(I)V
    .locals 0
    .param p1, "memoSecond"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoSecond:I

    .line 130
    return-void
.end method

.method public setMemoTone(Ljava/lang/String;)V
    .locals 0
    .param p1, "memoTone"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoTone:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setMemoType(Ljava/lang/String;)V
    .locals 0
    .param p1, "memoType"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoType:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setMemoYear(I)V
    .locals 0
    .param p1, "memoYear"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoYear:I

    .line 90
    return-void
.end method

.method public setRepeat(Z)V
    .locals 0
    .param p1, "repeat"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isRepeat:Z

    .line 154
    return-void
.end method

.method public setRepeatType(Ljava/lang/String;)V
    .locals 0
    .param p1, "repeatType"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->repeatType:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setRinging(Ljava/lang/String;)V
    .locals 0
    .param p1, "ringing"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->ringing:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setSnoozeHour(I)V
    .locals 0
    .param p1, "snoozeHour"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->snoozeHour:I

    .line 218
    return-void
.end method

.method public setSnoozeMinute(I)V
    .locals 0
    .param p1, "snoozeMinute"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->snoozeMinute:I

    .line 226
    return-void
.end method

.method public setSnoozeSeconds(I)V
    .locals 0
    .param p1, "snoozeSeconds"    # I

    .prologue
    .line 233
    iput p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->snoozeSeconds:I

    .line 234
    return-void
.end method

.method public setSnoozed(Z)V
    .locals 0
    .param p1, "snoozed"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isSnoozed:Z

    .line 210
    return-void
.end method

.method public setTime(J)V
    .locals 3
    .param p1, "timeInMillis"    # J

    .prologue
    .line 281
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 282
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 283
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoYear(I)V

    .line 284
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoMonth(I)V

    .line 285
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoDay(I)V

    .line 286
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoHour(I)V

    .line 287
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->setMemoMinute(I)V

    .line 288
    return-void
.end method

.method public setTimeGap(J)V
    .locals 1
    .param p1, "timeGap"    # J

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->timeGap:J

    .line 170
    return-void
.end method

.method public setWeeks([Z)V
    .locals 0
    .param p1, "weeks"    # [Z

    .prologue
    .line 137
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->weeks:[Z

    .line 138
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoId:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoMinute:I

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    .line 299
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoSecond:I

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-boolean v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "createTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoCreateTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->memoContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->repeatType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

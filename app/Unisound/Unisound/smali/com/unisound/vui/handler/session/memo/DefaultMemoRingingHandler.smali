.class public Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "DefaultMemoRingingHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$MemoRingEventReceiver;,
        Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU",
        "<",
        "Lnluparser/scheme/Intent;",
        "Lnluparser/scheme/Result$NullResult;",
        ">;>;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# static fields
.field public static final ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final ALARM_RINGING_AUDITION_SERVICE:Ljava/lang/String; = "cn.yunzhisheng.ringing.alarm.audition"

.field public static final ALARM_RINGING_SERVICE:Ljava/lang/String; = "cn.yunzhisheng.ringing.alarm"

.field protected static final DEFAULT_WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEMO_ALARM_RING_AUDITION_EXECUTE_TIME:J = 0x2710L

.field private static final MEMO_ALARM_RING_EXECUTE_TIME:J = 0x2bf20L

.field private static final MSG_MEMO_RING_STOP:I = 0x1000

.field protected static final STOP_ALARM_WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "memolog-RingHandler"


# instance fields
.field private mCurrentMemoTime:J

.field private mCurrentMemos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

.field private mHandler:Landroid/os/Handler;

.field private mIsAudition:Z

.field private mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

.field private mMemoRingingService:Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

.field private mRingingListener:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mWakeUpWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;

    const-string v1, "STOP_ALARM_WAKEUP_WORD"

    .line 49
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->STOP_ALARM_WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;

    .line 50
    const-class v0, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;

    const-string v1, "DEFAULT_WAKEUP_WORD"

    .line 51
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->DEFAULT_WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;

    .line 52
    const-class v0, Lcom/unisound/vui/handler/session/memo/DefaultAlarmHandler;

    const-string v1, "ALARM_PLAYING"

    .line 53
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mWakeUpWords:Ljava/util/List;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$1;

    invoke-direct {v0, p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$1;-><init>(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;)Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;
    .locals 0
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;
    .param p1, "x1"    # Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mMemoRingingService:Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;)Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;J)V
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;
    .param p1, "x1"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->onScheduleTimeReceived(J)V

    return-void
.end method

.method private bindRingingService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 133
    return-void
.end method

.method private doBeforeRingPlay()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "memolog-RingHandler"

    const-string v1, "doBeforeRingPlay"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mRingingListener:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mRingingListener:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;->onRingingStart()V

    .line 206
    :cond_0
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mIsAudition:Z

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->setStopMemoWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    .line 209
    :cond_1
    return-void
.end method

.method private doPlayMemoTTS(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 214
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-virtual {v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isReminder()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "content":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mCurrentMemos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 217
    .local v1, "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isReminder()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 223
    .end local v1    # "memo":Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 226
    :cond_1
    sget v3, Lcom/unisound/vui/handler/session/memo/R$string;->tts_reminder_tts_content:I

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-virtual {v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 227
    invoke-virtual {v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v0, v4, v8

    .line 226
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .local v2, "memoTts":Ljava/lang/String;
    :goto_1
    const-string v3, "memolog-RingHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doPlayMemoTTS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v3, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 236
    return-void

    .line 228
    .end local v2    # "memoTts":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-virtual {v3}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->isAlarm()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 229
    sget v3, Lcom/unisound/vui/handler/session/memo/R$string;->tts_alarm_start_ringing_prompt:I

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 230
    invoke-virtual {v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoHour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-virtual {v5}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getMemoMinute()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 229
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "memoTts":Ljava/lang/String;
    goto :goto_1

    .line 232
    .end local v2    # "memoTts":Ljava/lang/String;
    :cond_3
    sget v3, Lcom/unisound/vui/handler/session/memo/R$string;->tts_count_down_time_over:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "memoTts":Ljava/lang/String;
    goto :goto_1
.end method

.method private getMemoInfoByTime(J)Z
    .locals 3
    .param p1, "time"    # J

    .prologue
    const/4 v0, 0x0

    .line 186
    iput-wide p1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mCurrentMemoTime:J

    .line 187
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    invoke-virtual {v1, p1, p2}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getMemosByTime(J)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mCurrentMemos:Ljava/util/List;

    .line 189
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mCurrentMemos:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mCurrentMemos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mCurrentMemos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 191
    const-string v0, "memolog-RingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMemoInfoByTime, memo size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mCurrentMemos:Ljava/util/List;

    .line 192
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", first memo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getStopAlarmWakeUpWords(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "mAndroidContext"    # Landroid/content/Context;
    .param p2, "memoType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    const-string v2, "alarm"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/unisound/vui/handler/session/memo/R$array;->voice_stop_alarm_wakeup_word:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "wordStrings":[Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 352
    .local v0, "wakeupWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "memolog-RingHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStopAlarmWakeUpWords: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-object v0

    .line 344
    .end local v0    # "wakeupWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "wordStrings":[Ljava/lang/String;
    :cond_0
    const-string v2, "reminder"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/unisound/vui/handler/session/memo/R$array;->voice_stop_reminder_wakeup_word:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "wordStrings":[Ljava/lang/String;
    goto :goto_0

    .line 349
    .end local v1    # "wordStrings":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/unisound/vui/handler/session/memo/R$array;->voice_stop_alarm_wakeup_word:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "wordStrings":[Ljava/lang/String;
    goto :goto_0
.end method

.method private onScheduleTimeReceived(J)V
    .locals 7
    .param p1, "memoTime"    # J

    .prologue
    .line 358
    const-string v1, "memolog-RingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScheduleTimeReceived, memoTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngine;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v1

    invoke-interface {v1}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const-string v1, "memolog-RingHandler"

    const-string v2, "onScheduleTimeReceived, prev alarm is playing, stop first"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 367
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->stopAlarmRinging()V

    .line 370
    :cond_0
    new-instance v0, Lnluparser/scheme/NLU;

    invoke-direct {v0}, Lnluparser/scheme/NLU;-><init>()V

    .line 371
    .local v0, "nlu":Lnluparser/scheme/NLU;
    const-string v1, "cn.yunzhisheng.ringing.alarm"

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, p1, p2}, Lnluparser/scheme/NLU;->setTime(J)V

    .line 373
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 374
    return-void
.end method

.method private recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 331
    const-string v0, "memolog-RingHandler"

    const-string v1, "recoveryDefaultWakeupWord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->DEFAULT_WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 334
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mWakeUpWords:Ljava/util/List;

    .line 335
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 336
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mWakeUpWords:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    .line 337
    return-void
.end method

.method private setStopMemoWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "memoType"    # Ljava/lang/String;

    .prologue
    .line 321
    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->STOP_ALARM_WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 322
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->getStopAlarmWakeUpWords(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, "stopAlarmWakeupWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mWakeUpWords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 324
    const-string v1, "memolog-RingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStopMemoWakeupWord:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mWakeUpWords:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 327
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mWakeUpWords:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    .line 328
    return-void
.end method

.method private startAlarmRinging(Ljava/lang/String;)V
    .locals 5
    .param p1, "ringName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x1000

    .line 239
    const-string v0, "memolog-RingHandler"

    const-string v1, "startAlarmRinging"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mMemoRingingService:Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mMemoRingingService:Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->startPlayingRing(ZLjava/lang/String;)V

    .line 244
    :cond_0
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mIsAudition:Z

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopAlarmRinging()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x1000

    .line 252
    const-string v0, "memolog-RingHandler"

    const-string v1, "stopAlarmRinging"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mMemoRingingService:Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mMemoRingingService:Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;->stopPlayRing()V

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mRingingListener:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mRingingListener:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;->onRingingStop()V

    .line 264
    :cond_2
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mIsAudition:Z

    if-nez v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 269
    const-string v0, "memolog-RingHandler"

    const-string v1, "Memo Ringing completed and fire Resume"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->reset()V

    .line 271
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    const-string v1, "doResume"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 274
    :cond_4
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mIsAudition:Z

    if-nez v0, :cond_5

    .line 275
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mCurrentMemoTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->updateMemosByExpiredTime(Landroid/content/Context;J)V

    .line 276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mCurrentMemoTime:J

    .line 277
    iput-object v4, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mCurrentMemos:Ljava/util/List;

    .line 278
    iput-object v4, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    .line 280
    :cond_5
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
    .line 38
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

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
            "Lnluparser/scheme/Intent;",
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
    .line 109
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result$NullResult;>;"
    const-string v0, "cn.yunzhisheng.setting.mp"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "memolog-RingHandler"

    const-string v1, "\u624b\u673a\u7aef\u70b9\u6b4c\u64ad\u653e\u524d\u9700\u8981\u505c\u6389\u54cd\u94c3"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->stopAlarmRinging()V

    .line 116
    :cond_0
    const-string v0, "cn.yunzhisheng.ringing.alarm"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cn.yunzhisheng.ringing.alarm.audition"

    .line 117
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 117
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 4
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/Intent;",
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
    .line 164
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result$NullResult;>;"
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 166
    const-string v2, "cn.yunzhisheng.ringing.alarm.audition"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    const-string v2, "memolog-RingHandler"

    const-string v3, "eventReceived, audition"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mIsAudition:Z

    .line 170
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->doBeforeRingPlay()V

    .line 171
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "ringName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->startAlarmRinging(Ljava/lang/String;)V

    .line 183
    .end local v1    # "ringName":Ljava/lang/String;
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mIsAudition:Z

    .line 175
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getTime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->getMemoInfoByTime(J)Z

    move-result v0

    .line 176
    .local v0, "got":Z
    if-eqz v0, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->doBeforeRingPlay()V

    .line 178
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->doPlayMemoTTS(Landroid/content/Context;)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->reset()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 283
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->stopAlarmRinging()V

    .line 285
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->setPriority(I)V

    .line 104
    return-void
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 121
    invoke-static {}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->getInstance()Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mMemoInfoMgr:Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "cn.yunzhisheng.action.ring"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$MemoRingEventReceiver;

    invoke-direct {v2, p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$MemoRingEventReceiver;-><init>(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->bindRingingService(Landroid/content/Context;)V

    .line 125
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mWakeUpWords:Ljava/util/List;

    .line 126
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v1

    return v1
.end method

.method public onRingAudition(Ljava/lang/String;)V
    .locals 4
    .param p1, "ringName"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string v1, "memolog-RingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRingAudition, ringName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngine;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v1

    invoke-interface {v1}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    const-string v1, "memolog-RingHandler"

    const-string v2, "onScheduleTimeReceived, prev alarm is playing, stop first"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 382
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->stopAlarmRinging()V

    .line 385
    :cond_0
    new-instance v0, Lnluparser/scheme/NLU;

    invoke-direct {v0}, Lnluparser/scheme/NLU;-><init>()V

    .line 386
    .local v0, "nlu":Lnluparser/scheme/NLU;
    const-string v1, "cn.yunzhisheng.ringing.alarm.audition"

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 389
    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v2, 0x0

    .line 302
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "memolog-RingHandler"

    const-string v1, "onTTSEventPlayingEnd"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mFirstMemo:Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/memo/entity/LocalMemo;->getRinging()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->startAlarmRinging(Ljava/lang/String;)V

    .line 306
    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 313
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->reset()V

    .line 309
    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 310
    const-string v0, "doResume"

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    goto :goto_0
.end method

.method protected onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 149
    sget-object v0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->STOP_ALARM_WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->STOP_ALARM_WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "memolog-RingHandler"

    const-string v2, "update wakeup  word for alarm success!"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-interface {p1, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    move v0, v1

    .line 159
    :goto_0
    return v0

    .line 153
    :cond_0
    sget-object v0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->DEFAULT_WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->DEFAULT_WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const-string v0, "memolog-RingHandler"

    const-string v2, "recovery default wakeup word success!"

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {p1, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    move v0, v1

    .line 157
    goto :goto_0

    .line 159
    :cond_1
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "memolog-RingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakeupResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 295
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->stopAlarmRinging()V

    .line 296
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnRingingListener(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;)V
    .locals 0
    .param p1, "ringingListener"    # Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mRingingListener:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;

    .line 100
    return-void
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 4
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    instance-of v1, p1, Lnluparser/scheme/LocalASR;

    if-eqz v1, :cond_0

    .line 138
    const-string v1, "memolog-RingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userEventTriggered:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    .line 139
    check-cast v1, Lnluparser/scheme/LocalASR;

    invoke-virtual {v1}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "wakeupResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->mWakeUpWords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->stopAlarmRinging()V

    .line 146
    .end local v0    # "wakeupResult":Ljava/lang/String;
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_0
.end method

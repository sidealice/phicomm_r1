.class public Lcom/umeng/commonsdk/statistics/internal/StatTracer;
.super Ljava/lang/Object;
.source "StatTracer.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/internal/StatTracer$a;
    }
.end annotation


# static fields
.field private static final KEY_CLIENT_REQUEST_FAILED:Ljava/lang/String; = "failed_requests "

.field private static final KEY_CLIENT_REQUEST_LATENCY:Ljava/lang/String; = "last_request_spent_ms"

.field private static final KEY_CLIENT_REQUEST_SUCCESS:Ljava/lang/String; = "successful_request"

.field private static final KEY_CLIENT_REQUEST_TIME:Ljava/lang/String; = "last_request_time"

.field private static final KEY_FIRST_ACTIVATE_TIME:Ljava/lang/String; = "first_activate_time"

.field private static final KEY_LAST_REQ:Ljava/lang/String; = "last_req"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private final MAX_REQUEST_LIMIT:I

.field private firstActivateTime:J

.field private lastRequestTime:J

.field public mFailedRequest:I

.field private mLastRequestLatency:I

.field public mLastSuccessfulRequestTime:J

.field public mSuccessfulRequest:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x36ee80

    .line 20
    iput v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->MAX_REQUEST_LIMIT:I

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    .line 28
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    .line 40
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/internal/StatTracer$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/StatTracer;
    .locals 1

    .line 48
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const-string p0, "inside StatTracer. please check context. context must not be null!"

    .line 52
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    .line 55
    :cond_1
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer$a;->a:Lcom/umeng/commonsdk/statistics/internal/StatTracer;

    return-object p0
.end method

.method private init()V
    .locals 6

    .line 59
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "successful_request"

    const/4 v2, 0x0

    .line 61
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    const-string v1, "failed_requests "

    .line 62
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    const-string v1, "last_request_spent_ms"

    .line 64
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    const-string v1, "last_request_time"

    const-wide/16 v2, 0x0

    .line 65
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastSuccessfulRequestTime:J

    const-string v1, "last_req"

    .line 67
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    return-void
.end method


# virtual methods
.method public getFirstActivateTime()J
    .locals 6

    .line 119
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_activate_time"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    .line 121
    iget-wide v1, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_activate_time"

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    :cond_0
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->firstActivateTime:J

    return-wide v0
.end method

.method public getLastReqTime()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    return-wide v0
.end method

.method public getLastRequestLatency()I
    .locals 2

    .line 71
    iget v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    const v1, 0x36ee80

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    :goto_0
    return v1
.end method

.method public isFirstRequest()Z
    .locals 5

    .line 76
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastSuccessfulRequestTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logFailedRequest()V
    .locals 1

    .line 89
    iget v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    return-void
.end method

.method public logRequestEnd()V
    .locals 6

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    sub-long v4, v0, v2

    long-to-int v0, v4

    iput v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    return-void
.end method

.method public logRequestStart()V
    .locals 2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    return-void
.end method

.method public logSuccessfulRequest(Z)V
    .locals 2

    .line 82
    iget v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    if-eqz p1, :cond_0

    .line 84
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastSuccessfulRequestTime:J

    :cond_0
    return-void
.end method

.method public onRequestEnd()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->logRequestEnd()V

    return-void
.end method

.method public onRequestFailed()V
    .locals 0

    .line 149
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->logFailedRequest()V

    return-void
.end method

.method public onRequestStart()V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->logRequestStart()V

    return-void
.end method

.method public onRequestSucceed(Z)V
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->logSuccessfulRequest(Z)V

    return-void
.end method

.method public saveSate()V
    .locals 4

    .line 104
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/internal/PreferenceWrapper;->getDefault(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "successful_request"

    iget v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mSuccessfulRequest:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "failed_requests "

    iget v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mFailedRequest:I

    .line 107
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_spent_ms"

    iget v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastRequestLatency:I

    .line 108
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_req"

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->lastRequestTime:J

    .line 109
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_request_time"

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/internal/StatTracer;->mLastSuccessfulRequestTime:J

    .line 110
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

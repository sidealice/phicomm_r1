.class public Lcom/umeng/analytics/pro/i;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static e:Lorg/json/JSONArray;

.field private static f:Ljava/lang/Object;


# instance fields
.field b:Z

.field c:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Application;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/i;->e:Lorg/json/JSONArray;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Ljava/util/Map;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Landroid/app/Application;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/i;->h:Z

    .line 58
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/i;->b:Z

    .line 143
    new-instance v0, Lcom/umeng/analytics/pro/i$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/pro/i$1;-><init>(Lcom/umeng/analytics/pro/i;)V

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Landroid/app/Application;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 65
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Landroid/app/Application;

    goto :goto_0

    .line 67
    :cond_0
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Landroid/app/Application;

    .line 70
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 71
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->b(Landroid/content/Context;)V

    .line 77
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 5

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/i;->a:Ljava/lang/String;

    .line 262
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->FLAG_DPLUS:Z

    if-eqz v0, :cond_5

    .line 264
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "_$!pv_b"

    .line 265
    sget-object v2, Lcom/umeng/analytics/pro/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_$!ts"

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 268
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/b;->j()Lorg/json/JSONObject;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "_$!sp"

    .line 270
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/pro/p;->a()Lcom/umeng/analytics/pro/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/p;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__ii"

    .line 273
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "-1"

    :cond_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    invoke-static {}, Lcom/umeng/analytics/pro/p;->a()Lcom/umeng/analytics/pro/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/p;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "__ii"

    const-string v2, "-1"

    .line 278
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    :cond_2
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 282
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 283
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 285
    :catch_0
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_4

    .line 287
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    sget-object v4, Lcom/umeng/analytics/pro/b;->au:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 289
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 295
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2001

    .line 297
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p1

    .line 295
    invoke-static {v1, v2, p1, v0}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 302
    :catch_1
    :cond_5
    iget-object p1, p0, Lcom/umeng/analytics/pro/i;->d:Ljava/util/Map;

    monitor-enter p1

    .line 303
    :try_start_3
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->d:Ljava/util/Map;

    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    sget-object v1, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :try_start_1
    sget-object v2, Lcom/umeng/analytics/pro/i;->e:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    sput-object v3, Lcom/umeng/analytics/pro/i;->e:Lorg/json/JSONArray;

    .line 125
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 128
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v2, "__b"

    .line 129
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    invoke-static {p0}, Lcom/umeng/analytics/pro/g;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/g;

    move-result-object p0

    .line 131
    invoke-static {}, Lcom/umeng/analytics/pro/p;->a()Lcom/umeng/analytics/pro/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/p;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/analytics/pro/g$a;->a:Lcom/umeng/analytics/pro/g$a;

    .line 130
    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/analytics/pro/g;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/umeng/analytics/pro/g$a;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 125
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/pro/i;Landroid/app/Activity;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 7

    const-wide/16 v0, 0x0

    .line 310
    :try_start_0
    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->d:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :try_start_1
    sget-object v3, Lcom/umeng/analytics/pro/i;->a:Ljava/lang/String;

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/umeng/analytics/pro/i;->a:Ljava/lang/String;

    .line 316
    :cond_0
    sget-object p1, Lcom/umeng/analytics/pro/i;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 317
    iget-object p1, p0, Lcom/umeng/analytics/pro/i;->d:Ljava/util/Map;

    sget-object v3, Lcom/umeng/analytics/pro/i;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/umeng/analytics/pro/i;->d:Ljava/util/Map;

    sget-object v3, Lcom/umeng/analytics/pro/i;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v5, v0, v3

    .line 319
    iget-object p1, p0, Lcom/umeng/analytics/pro/i;->d:Ljava/util/Map;

    sget-object v0, Lcom/umeng/analytics/pro/i;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v0, v5

    .line 322
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    :try_start_2
    sget-object p1, Lcom/umeng/analytics/pro/i;->f:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 326
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "page_name"

    .line 328
    sget-object v4, Lcom/umeng/analytics/pro/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "duration"

    .line 329
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 330
    sget-object v0, Lcom/umeng/analytics/pro/i;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 333
    :catch_0
    :goto_0
    :try_start_4
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :catchall_1
    move-exception p1

    .line 322
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :goto_2
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 86
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/i;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/i;->h:Z

    .line 88
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->g:Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->g:Landroid/app/Application;

    iget-object v2, p0, Lcom/umeng/analytics/pro/i;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 91
    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 92
    sget-object v1, Lcom/umeng/analytics/pro/i;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 93
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/i;->b:Z

    .line 94
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/pro/i;Landroid/app/Activity;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/i;->b(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/i;->h:Z

    return v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/i;->h:Z

    .line 105
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Landroid/app/Application;

    iget-object v1, p0, Lcom/umeng/analytics/pro/i;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/umeng/analytics/pro/i;->g:Landroid/app/Application;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/i;->b(Landroid/app/Activity;)V

    .line 113
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/i;->b()V

    return-void
.end method

.class public Lcom/umeng/commonsdk/framework/d;
.super Ljava/lang/Object;
.source "UMWorkDispatchImpl.java"


# static fields
.field private static a:Landroid/os/HandlerThread; = null

.field private static b:Landroid/os/Handler; = null

.field private static c:Lcom/umeng/commonsdk/framework/c; = null

.field private static d:Ljava/lang/Object; = null

.field private static final e:I = 0x300

.field private static final f:I = 0x301

.field private static final g:I = 0x302


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/framework/d;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 160
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 163
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 165
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 166
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 169
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 172
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 174
    :try_start_2
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 183
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 277
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x302

    .line 279
    iput v1, v0, Landroid/os/Message;->what:I

    .line 280
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->registerAppContext(Landroid/content/Context;)V

    .line 50
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->registerCallback(ILcom/umeng/commonsdk/framework/UMLogDataProtocol;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 53
    :cond_1
    sget-object p2, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    if-eqz p2, :cond_2

    sget-object p2, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-nez p2, :cond_3

    .line 54
    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->e()V

    .line 58
    :cond_3
    :try_start_0
    sget-object p2, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-eqz p2, :cond_5

    .line 59
    sget-object p2, Lcom/umeng/commonsdk/framework/d;->c:Lcom/umeng/commonsdk/framework/c;

    if-nez p2, :cond_4

    .line 60
    sget-object p2, Lcom/umeng/commonsdk/framework/d;->d:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/b;->f(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/umeng/commonsdk/framework/c;

    sget-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/umeng/commonsdk/framework/c;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/umeng/commonsdk/framework/d;->c:Lcom/umeng/commonsdk/framework/c;

    .line 63
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 66
    :cond_4
    :goto_0
    sget-object p0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 p2, 0x300

    .line 67
    iput p2, p0, Landroid/os/Message;->what:I

    .line 68
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 70
    iput-object p3, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    sget-object p1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 74
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string p0, "--->>> Context or UMLogDataProtocol parameter cannot be null!"

    .line 46
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/os/Message;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/umeng/commonsdk/framework/d;->b(Landroid/os/Message;)V

    return-void
.end method

.method public static declared-synchronized a(I)Z
    .locals 2

    const-class v0, Lcom/umeng/commonsdk/framework/d;

    monitor-enter v0

    .line 235
    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 236
    monitor-exit v0

    return p0

    .line 238
    :cond_0
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 234
    monitor-exit v0

    throw p0
.end method

.method static synthetic b()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->d()V

    return-void
.end method

.method private static b(Landroid/os/Message;)V
    .locals 4

    .line 243
    iget v0, p0, Landroid/os/Message;->arg1:I

    .line 244
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->eventType2ModuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getCallbackFromModuleName(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> dispatch:handleEvent: call back workEvent with msg type [ 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 249
    invoke-interface {v1, p0, v0}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->workEvent(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method static synthetic c()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->g()V

    return-void
.end method

.method private static d()V
    .locals 7

    const-string v0, "--->>> autoProcess Enter..."

    .line 93
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v1

    const-string v3, "analytics"

    .line 99
    invoke-static {v3}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getCallbackFromModuleName(Ljava/lang/String;)Lcom/umeng/commonsdk/framework/UMLogDataProtocol;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 113
    :try_start_0
    sget-object v6, Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;->U_DPLUS:Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;

    invoke-static {v0, v6}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->isReadyBuild(Landroid/content/Context;Lcom/umeng/commonsdk/framework/UMLogDataProtocol$UMBusinessType;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v3, v1, v2}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->setupReportData(J)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v5, v1

    :cond_0
    if-eqz v4, :cond_2

    .line 128
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "header"

    .line 130
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "content"

    .line 131
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 133
    :try_start_2
    invoke-static {v0, v2}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v4, :cond_1

    if-lez v5, :cond_1

    const-string v2, "header"

    .line 137
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "header"

    invoke-static {v1, v2, v5}, Lcom/umeng/commonsdk/framework/d;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "content"

    .line 138
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "content"

    invoke-static {v1, v2, v5}, Lcom/umeng/commonsdk/framework/d;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "header"

    .line 143
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "content"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 147
    invoke-interface {v3, v4}, Lcom/umeng/commonsdk/framework/UMLogDataProtocol;->removeCacheData(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 153
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static declared-synchronized e()V
    .locals 3

    const-class v0, Lcom/umeng/commonsdk/framework/d;

    monitor-enter v0

    :try_start_0
    const-string v1, "--->>> Dispatch: init Enter..."

    .line 189
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 192
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "work_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    .line 193
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 194
    sget-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Lcom/umeng/commonsdk/framework/d$1;

    sget-object v2, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/framework/d$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 221
    :try_start_2
    invoke-static {}, Lcom/umeng/commonsdk/framework/UMModuleRegister;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/proguard/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string v1, "--->>> Dispatch: init Exit..."

    .line 223
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 188
    monitor-exit v0

    throw v1
.end method

.method private static f()V
    .locals 2

    .line 254
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 255
    sput-object v1, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    .line 257
    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 258
    sput-object v1, Lcom/umeng/commonsdk/framework/d;->b:Landroid/os/Handler;

    .line 261
    :cond_1
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->c:Lcom/umeng/commonsdk/framework/c;

    if-eqz v0, :cond_2

    .line 262
    sput-object v1, Lcom/umeng/commonsdk/framework/d;->c:Lcom/umeng/commonsdk/framework/c;

    :cond_2
    return-void
.end method

.method private static g()V
    .locals 1

    .line 268
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->c:Lcom/umeng/commonsdk/framework/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Lcom/umeng/commonsdk/framework/c;->a()V

    const-string v0, "--->>> handleQuit: Quit dispatch thread."

    .line 270
    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/umeng/commonsdk/framework/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 272
    invoke-static {}, Lcom/umeng/commonsdk/framework/d;->f()V

    :cond_0
    return-void
.end method

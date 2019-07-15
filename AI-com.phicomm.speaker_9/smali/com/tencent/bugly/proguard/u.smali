.class public final Lcom/tencent/bugly/proguard/u;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/u$a;
    }
.end annotation


# static fields
.field private static b:Lcom/tencent/bugly/proguard/u;


# instance fields
.field public a:Z

.field private final c:Lcom/tencent/bugly/proguard/p;

.field private final d:Landroid/content/Context;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/Object;

.field private k:Ljava/lang/String;

.field private l:[B

.field private m:J

.field private n:[B

.field private o:J

.field private p:Ljava/lang/String;

.field private q:J

.field private final r:Ljava/lang/Object;

.field private s:Z

.field private final t:Ljava/lang/Object;

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->e:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 89
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->j:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->k:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->l:[B

    const-wide/16 v1, 0x0

    .line 100
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/u;->m:J

    .line 106
    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    .line 108
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/u;->o:J

    .line 110
    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    .line 112
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/u;->q:J

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u;->r:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/u;->s:Z

    .line 120
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/u;->t:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 122
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/u;->a:Z

    .line 125
    iput v0, p0, Lcom/tencent/bugly/proguard/u;->u:I

    .line 128
    iput-object p1, p0, Lcom/tencent/bugly/proguard/u;->d:Landroid/content/Context;

    .line 129
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/u;->c:Lcom/tencent/bugly/proguard/p;

    :try_start_0
    const-string p1, "android.util.Base64"

    .line 137
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "[UploadManager] Error: Can not find Base64 class, will not use stronger security way to upload"

    .line 139
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/u;->a:Z

    .line 144
    :goto_0
    iget-boolean p1, p0, Lcom/tencent/bugly/proguard/u;->a:Z

    if-eqz p1, :cond_0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDP9x32s5pPtZBXzJBz2GWM/sbTvVO2+RvW0PH01IdaBxc/"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "fB6fbHZocC9T3nl1+J5eAFjIRVuV8vHDky7Qo82Mnh0PVvcZIEQvMMVKU8dsMQopxgsOs2gkSHJwgWdinKNS8CmWobo6pFwPUW11lMv714jAUZRq2GBOqiO2vQI6iwIDAQAB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/u;->k:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/u;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/u;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Lcom/tencent/bugly/proguard/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/u;
    .locals 2

    const-class v0, Lcom/tencent/bugly/proguard/u;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/u;->b:Lcom/tencent/bugly/proguard/u;

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Lcom/tencent/bugly/proguard/u;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/proguard/u;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/bugly/proguard/u;->b:Lcom/tencent/bugly/proguard/u;

    .line 161
    :cond_0
    sget-object p0, Lcom/tencent/bugly/proguard/u;->b:Lcom/tencent/bugly/proguard/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 157
    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/u;)Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/bugly/proguard/u;->j:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/u;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/u;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/u;Ljava/lang/Runnable;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "[UploadManager] Upload task should not be null"

    .line 803
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v1, "[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)"

    const/4 v2, 0x2

    .line 806
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v1, "BUGLY_SYNC_UPLOAD"

    .line 808
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p2, "[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue."

    .line 810
    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 813
    invoke-direct {p0, p1, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    return-void

    .line 817
    :cond_1
    :try_start_0
    invoke-virtual {v1, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string p3, "[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue."

    .line 819
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {p3, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 823
    invoke-direct {p0, p1, v4}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    .line 825
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/u;->c(I)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;ZZJ)V
    .locals 12

    move-object v7, p0

    move-object v4, p1

    const/4 v2, 0x0

    if-nez v4, :cond_0

    const-string v3, "[UploadManager] Upload task should not be null"

    .line 883
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    const-string v3, "[UploadManager] Add upload task (pid=%d | tid=%d)"

    const/4 v5, 0x2

    .line 885
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    invoke-static {v3, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 888
    iget-object v3, v7, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 890
    invoke-virtual {v7}, Lcom/tencent/bugly/proguard/u;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "[UploadManager] Sucessfully got session ID, try to execute upload task now (pid=%d | tid=%d)"

    .line 892
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    move-wide/from16 v10, p4

    .line 896
    invoke-direct {v7, v4, v10, v11}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 898
    :cond_1
    invoke-direct {v7, v4, p2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    .line 900
    invoke-direct {v7, v2}, Lcom/tencent/bugly/proguard/u;->c(I)V

    return-void

    :cond_2
    move-wide/from16 v10, p4

    const-string v3, "[UploadManager] Session ID is expired, drop it (pid=%d | tid=%d)"

    .line 906
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {v3, v6}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 909
    invoke-virtual {v7, v2}, Lcom/tencent/bugly/proguard/u;->b(Z)V

    goto :goto_0

    :cond_3
    move-wide/from16 v10, p4

    .line 912
    :goto_0
    iget-object v3, v7, Lcom/tencent/bugly/proguard/u;->t:Ljava/lang/Object;

    monitor-enter v3

    .line 914
    :try_start_0
    iget-boolean v6, v7, Lcom/tencent/bugly/proguard/u;->s:Z

    if-eqz v6, :cond_4

    .line 916
    invoke-direct {v7, v4, p2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    .line 917
    monitor-exit v3

    return-void

    .line 920
    :cond_4
    iput-boolean v9, v7, Lcom/tencent/bugly/proguard/u;->s:Z

    .line 922
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "[UploadManager] Initialize security context now (pid=%d | tid=%d)"

    .line 924
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p3, :cond_5

    new-instance v8, Lcom/tencent/bugly/proguard/u$a;

    iget-object v3, v7, Lcom/tencent/bugly/proguard/u;->d:Landroid/content/Context;

    move-object v1, v8

    move-object v2, v7

    move-wide v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/u$a;-><init>(Lcom/tencent/bugly/proguard/u;Landroid/content/Context;Ljava/lang/Runnable;J)V

    const-wide/16 v1, 0x0

    invoke-direct {v7, v8, v1, v2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Runnable;J)V

    return-void

    :cond_5
    invoke-direct {v7, v4, p2}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    new-instance v1, Lcom/tencent/bugly/proguard/u$a;

    iget-object v3, v7, Lcom/tencent/bugly/proguard/u;->d:Landroid/content/Context;

    invoke-direct {v1, v7, v3}, Lcom/tencent/bugly/proguard/u$a;-><init>(Lcom/tencent/bugly/proguard/u;Landroid/content/Context;)V

    const-string v3, "[UploadManager] Create and start a new thread to execute a task of initializing security context: %s"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "BUGLY_ASYNC_UPLOAD"

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v3, "BUGLY_ASYNC_UPLOAD"

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v3, "[UploadManager] Failed to start a thread to execute task of initializing security context, try to post it into thread pool."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3, v1}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    const-string v1, "[UploadManager] Asynchronous thread pool is unavailable now, try next time."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v1, v7, Lcom/tencent/bugly/proguard/u;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iput-boolean v2, v7, Lcom/tencent/bugly/proguard/u;->s:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2

    :cond_7
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 922
    monitor-exit v3

    throw v1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/u;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/u;->s:Z

    return p1
.end method

.method private a(Ljava/lang/Runnable;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "[UploadManager] Upload task should not be null"

    .line 773
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "[UploadManager] Add upload task to queue (pid=%d | tid=%d)"

    const/4 v3, 0x2

    .line 777
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 780
    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->j:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    .line 783
    :try_start_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 785
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/proguard/u;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 787
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :goto_1
    :try_start_2
    monitor-exit v2

    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "[UploadManager] Failed to add upload task to queue: %s"

    .line 790
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/u;[B)[B
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/u;)I
    .locals 1

    .line 37
    iget v0, p0, Lcom/tencent/bugly/proguard/u;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/u;->u:I

    return v0
.end method

.method private c(I)V
    .locals 13

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const-string p1, "[UploadManager] Number of task to execute should >= 0"

    .line 633
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 636
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v1

    .line 640
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 641
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 644
    iget-object v4, p0, Lcom/tencent/bugly/proguard/u;->j:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string v5, "[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)"

    const/4 v6, 0x2

    .line 645
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 648
    iget-object v5, p0, Lcom/tencent/bugly/proguard/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    .line 649
    iget-object v7, p0, Lcom/tencent/bugly/proguard/u;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v7

    if-nez v5, :cond_1

    if-nez v7, :cond_1

    const-string p1, "[UploadManager] There is no upload task in queue."

    .line 651
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 652
    monitor-exit v4

    return-void

    :cond_1
    if-eqz p1, :cond_3

    if-ge p1, v5, :cond_2

    move v5, p1

    move p1, v0

    goto :goto_0

    :cond_2
    add-int v8, v5, v7

    if-ge p1, v8, :cond_3

    sub-int/2addr p1, v5

    goto :goto_0

    :cond_3
    move p1, v7

    :goto_0
    if-eqz v1, :cond_4

    .line 664
    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/w;->c()Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    move p1, v0

    :cond_5
    move v7, v0

    :goto_1
    if-ge v7, v5, :cond_6

    .line 670
    iget-object v8, p0, Lcom/tencent/bugly/proguard/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v8, :cond_6

    .line 672
    :try_start_1
    invoke-virtual {v2, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 676
    iget-object v8, p0, Lcom/tencent/bugly/proguard/u;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_2
    const-string v10, "[UploadManager] Failed to add upload task to temp urgent queue: %s"

    .line 678
    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v0

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    move v7, v0

    :goto_3
    if-ge v7, p1, :cond_7

    .line 684
    iget-object v8, p0, Lcom/tencent/bugly/proguard/u;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_7

    .line 686
    :try_start_3
    invoke-virtual {v3, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 690
    iget-object v8, p0, Lcom/tencent/bugly/proguard/u;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catch_1
    move-exception v8

    :try_start_4
    const-string v10, "[UploadManager] Failed to add upload task to temp urgent queue: %s"

    .line 692
    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v0

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 696
    :cond_7
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v4, 0x3

    if-lez v5, :cond_8

    const-string v7, "[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    .line 698
    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v6

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_8
    move v7, v0

    :goto_5
    if-ge v7, v5, :cond_b

    .line 703
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Runnable;

    if-eqz v8, :cond_b

    .line 705
    iget-object v10, p0, Lcom/tencent/bugly/proguard/u;->j:Ljava/lang/Object;

    monitor-enter v10

    .line 709
    :try_start_5
    iget v11, p0, Lcom/tencent/bugly/proguard/u;->u:I

    if-lt v11, v6, :cond_9

    if-eqz v1, :cond_9

    .line 712
    invoke-virtual {v1, v8}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 713
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    .line 717
    :cond_9
    monitor-exit v10

    const-string v10, "[UploadManager] Create and start a new thread to execute a upload task: %s"

    .line 718
    new-array v11, v9, [Ljava/lang/Object;

    const-string v12, "BUGLY_ASYNC_UPLOAD"

    aput-object v12, v11, v0

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 720
    new-instance v10, Lcom/tencent/bugly/proguard/u$1;

    invoke-direct {v10, p0, v8}, Lcom/tencent/bugly/proguard/u$1;-><init>(Lcom/tencent/bugly/proguard/u;Ljava/lang/Runnable;)V

    const-string v11, "BUGLY_ASYNC_UPLOAD"

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 730
    iget-object v8, p0, Lcom/tencent/bugly/proguard/u;->j:Ljava/lang/Object;

    monitor-enter v8

    .line 732
    :try_start_6
    iget v10, p0, Lcom/tencent/bugly/proguard/u;->u:I

    add-int/2addr v10, v9

    iput v10, p0, Lcom/tencent/bugly/proguard/u;->u:I

    .line 733
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    monitor-exit v8

    throw p1

    :cond_a
    const-string v10, "[UploadManager] Failed to start a thread to execute asynchronous upload task, will try again next time."

    .line 736
    new-array v11, v0, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 738
    invoke-direct {p0, v8, v9}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Runnable;Z)Z

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 717
    monitor-exit v10

    throw p1

    :cond_b
    if-lez p1, :cond_c

    const-string v2, "[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    .line 742
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_c
    if-eqz v1, :cond_d

    .line 749
    new-instance v0, Lcom/tencent/bugly/proguard/u$2;

    invoke-direct {v0, p0, p1, v3}, Lcom/tencent/bugly/proguard/u$2;-><init>(Lcom/tencent/bugly/proguard/u;ILjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    :cond_d
    return-void

    :catchall_2
    move-exception p1

    .line 696
    monitor-exit v4

    throw p1
.end method

.method private static c()Z
    .locals 6

    const-string v0, "[UploadManager] Drop security info of database (pid=%d | tid=%d)"

    const/4 v1, 0x2

    .line 446
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 449
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[UploadManager] Failed to get Database"

    .line 451
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v3

    :cond_0
    const/16 v1, 0x22b

    const-string v2, "security_info"

    const/4 v5, 0x0

    .line 455
    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/o;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 458
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    return v3
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/u;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/u;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/tencent/bugly/proguard/u;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    return-object p0
.end method

.method private d()Z
    .locals 11

    const-string v0, "[UploadManager] Record security info to database (pid=%d | tid=%d)"

    const/4 v1, 0x2

    .line 469
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 472
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v0, "[UploadManager] Failed to get database"

    .line 474
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v3

    .line 477
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    if-eqz v1, :cond_4

    .line 480
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/u;->o:J

    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-eqz v8, :cond_1

    .line 488
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/u;->o:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "#"

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 495
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "null"

    .line 497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, "#"

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/u;->q:J

    cmp-long v8, v1, v6

    if-eqz v8, :cond_3

    .line 502
    iget-wide v1, p0, Lcom/tencent/bugly/proguard/u;->q:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v1, "null"

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v6, 0x22b

    const-string v7, "security_info"

    .line 506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z

    return v4

    :cond_4
    const-string v0, "[UploadManager] AES key is null, will not record"

    .line 482
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 511
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 513
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->c()Z

    return v3
.end method

.method static synthetic e(Lcom/tencent/bugly/proguard/u;)Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tencent/bugly/proguard/u;->t:Ljava/lang/Object;

    return-object p0
.end method

.method private e()Z
    .locals 8

    const-string v0, "[UploadManager] Load security info from database (pid=%d | tid=%d)"

    const/4 v1, 0x2

    .line 524
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 527
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "[UploadManager] Failed to get database"

    .line 529
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v4

    :cond_0
    const/16 v2, 0x22b

    const/4 v3, 0x0

    .line 534
    invoke-virtual {v0, v2, v3, v5}, Lcom/tencent/bugly/proguard/p;->a(ILcom/tencent/bugly/proguard/o;Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "security_info"

    .line 535
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 536
    new-instance v2, Ljava/lang/String;

    const-string v3, "security_info"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "#"

    .line 537
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 538
    array-length v3, v0

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    .line 539
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v0, v4

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v2, :cond_1

    .line 541
    :try_start_1
    aget-object v2, v0, v4

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/proguard/u;->n:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 544
    :try_start_2
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_2

    .line 548
    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v0, v5

    const-string v6, "null"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v3, :cond_2

    .line 550
    :try_start_3
    aget-object v3, v0, v5

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/bugly/proguard/u;->o:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 553
    :try_start_4
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move v2, v5

    :cond_2
    :goto_2
    if-nez v2, :cond_3

    .line 557
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, v0, v1

    const-string v6, "null"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 558
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    :cond_3
    if-nez v2, :cond_5

    const/4 v1, 0x3

    .line 560
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    aget-object v3, v0, v1

    const-string v6, "null"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v3, :cond_5

    .line 562
    :try_start_5
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/u;->q:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 565
    :try_start_6
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_4
    const-string v3, "SecurityInfo = %s, Strings.length = %d"

    .line 570
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_3
    move v2, v5

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 575
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->c()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    return v5

    :catch_3
    move-exception v0

    .line 581
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    return v4
.end method


# virtual methods
.method public final declared-synchronized a(I)J
    .locals 7

    monitor-enter p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_4

    .line 389
    :try_start_0
    iget-object v4, p0, Lcom/tencent/bugly/proguard/u;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 391
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 393
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/tencent/bugly/proguard/u;->c:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v4, p1}, Lcom/tencent/bugly/proguard/p;->a(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 394
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 395
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_3

    .line 397
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/proguard/r;

    .line 398
    iget-wide v4, v3, Lcom/tencent/bugly/proguard/r;->e:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_1

    .line 399
    iget-wide v0, v3, Lcom/tencent/bugly/proguard/r;->e:J

    goto :goto_0

    .line 402
    :cond_2
    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->c:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v2, p1}, Lcom/tencent/bugly/proguard/p;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 405
    :cond_3
    :try_start_2
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/r;

    .line 406
    iget-wide v2, p1, Lcom/tencent/bugly/proguard/r;->e:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v0, v2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 408
    :try_start_3
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    const-string v4, "[UploadManager] Unknown upload ID: %d"

    .line 413
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 415
    :cond_5
    :goto_1
    monitor-exit p0

    return-wide v0

    .line 386
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final a(Z)J
    .locals 11

    .line 280
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->b()J

    move-result-wide v0

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    move v3, v2

    .line 283
    :goto_0
    iget-object v4, p0, Lcom/tencent/bugly/proguard/u;->c:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v4, v3}, Lcom/tencent/bugly/proguard/p;->a(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 284
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    const-wide/16 v6, 0x0

    .line 286
    :try_start_0
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/r;

    .line 287
    iget-wide v8, p1, Lcom/tencent/bugly/proguard/r;->e:J

    cmp-long v10, v8, v0

    if-ltz v10, :cond_2

    .line 288
    iget-object v0, p1, Lcom/tencent/bugly/proguard/r;->g:[B

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->c([B)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v2, :cond_1

    .line 290
    :try_start_1
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/u;->f:J

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 292
    :cond_1
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/u;->g:J

    .line 294
    :goto_1
    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_2
    move-wide v0, v6

    goto :goto_3

    :catch_1
    move-exception p1

    move-wide v0, v6

    .line 297
    :goto_2
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 299
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 300
    iget-object p1, p0, Lcom/tencent/bugly/proguard/u;->c:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {p1, v4}, Lcom/tencent/bugly/proguard/p;->a(Ljava/util/List;)V

    goto :goto_4

    :cond_3
    if-eqz p1, :cond_4

    .line 303
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/u;->g:J

    goto :goto_4

    :cond_4
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/u;->f:J

    :cond_5
    :goto_4
    const-string p1, "[UploadManager] Local network consume: %d KB"

    const/4 v2, 0x1

    .line 305
    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x400

    div-long v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-wide v0
.end method

.method public final a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;IIZLjava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/t;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 228
    :try_start_0
    new-instance v2, Lcom/tencent/bugly/proguard/v;

    iget-object v9, v7, Lcom/tencent/bugly/proguard/u;->d:Landroid/content/Context;

    iget-boolean v1, v7, Lcom/tencent/bugly/proguard/u;->a:Z

    const/16 v19, 0x0

    move-object v8, v2

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, v1

    move/from16 v17, p7

    move/from16 v18, p8

    move-object/from16 v20, p10

    invoke-direct/range {v8 .. v20}, Lcom/tencent/bugly/proguard/v;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;ZIIZLjava/util/Map;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move/from16 v3, p9

    .line 231
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 233
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(IJ)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    .line 367
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-instance v2, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/r;-><init>()V

    .line 369
    iput p1, v2, Lcom/tencent/bugly/proguard/r;->b:I

    .line 370
    iput-wide p2, v2, Lcom/tencent/bugly/proguard/r;->e:J

    const-string v3, ""

    .line 371
    iput-object v3, v2, Lcom/tencent/bugly/proguard/r;->c:Ljava/lang/String;

    const-string v3, ""

    .line 372
    iput-object v3, v2, Lcom/tencent/bugly/proguard/r;->d:Ljava/lang/String;

    .line 373
    new-array v3, v1, [B

    iput-object v3, v2, Lcom/tencent/bugly/proguard/r;->g:[B

    .line 374
    iget-object v3, p0, Lcom/tencent/bugly/proguard/u;->c:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v3, p1}, Lcom/tencent/bugly/proguard/p;->b(I)V

    .line 375
    iget-object v3, p0, Lcom/tencent/bugly/proguard/u;->c:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v3, v2}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/r;)Z

    const-string v2, "[UploadManager] Uploading(ID:%d) time: %s"

    const/4 v3, 0x2

    .line 376
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/z;->a(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p2, "[UploadManager] Unknown uploading ID: %d"

    .line 379
    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v1

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 365
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final a(ILcom/tencent/bugly/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;JZ)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v1, p2

    .line 207
    iget v11, v1, Lcom/tencent/bugly/proguard/am;->g:I

    invoke-static/range {p2 .. p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/Object;)[B

    move-result-object v12

    :try_start_0
    new-instance v2, Lcom/tencent/bugly/proguard/v;

    iget-object v9, v7, Lcom/tencent/bugly/proguard/u;->d:Landroid/content/Context;

    iget-boolean v1, v7, Lcom/tencent/bugly/proguard/u;->a:Z

    move-object v8, v2

    move/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v16, v1

    move/from16 v17, p8

    invoke-direct/range {v8 .. v17}, Lcom/tencent/bugly/proguard/v;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;ZZ)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, v7

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/u;->a(Ljava/lang/Runnable;ZZJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/tencent/bugly/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;Z)V
    .locals 11

    move-object v0, p2

    .line 269
    iget v2, v0, Lcom/tencent/bugly/proguard/am;->g:I

    invoke-static {v0}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/Object;)[B

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/bugly/proguard/u;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;IIZLjava/util/Map;)V

    return-void
.end method

.method public final a(ILcom/tencent/bugly/proguard/an;)V
    .locals 9

    .line 934
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/u;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const-string p1, "[UploadManager] Session ID is invalid, will clear security context (pid=%d | tid=%d)"

    .line 941
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 944
    invoke-virtual {p0, v1}, Lcom/tencent/bugly/proguard/u;->b(Z)V

    goto/16 :goto_3

    .line 946
    :cond_1
    iget-object p1, p0, Lcom/tencent/bugly/proguard/u;->t:Ljava/lang/Object;

    monitor-enter p1

    .line 948
    :try_start_0
    iget-boolean v3, p0, Lcom/tencent/bugly/proguard/u;->s:Z

    if-nez v3, :cond_2

    .line 950
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 952
    :cond_2
    monitor-exit p1

    if-eqz p2, :cond_7

    const-string p1, "[UploadManager] Record security context (pid=%d | tid=%d)"

    .line 954
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 958
    :try_start_1
    iget-object p1, p2, Lcom/tencent/bugly/proguard/an;->g:Ljava/util/Map;

    if-eqz p1, :cond_6

    const-string v3, "S1"

    .line 959
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "S2"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 962
    iget-wide v3, p2, Lcom/tencent/bugly/proguard/an;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v7, v3, v5

    iput-wide v7, p0, Lcom/tencent/bugly/proguard/u;->m:J

    const-string p2, "[UploadManager] Time lag of server is: %d"

    .line 963
    new-array v3, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/u;->m:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string p2, "S1"

    .line 964
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    const-string p2, "[UploadManager] Session ID from server is: %s"

    .line 965
    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {p2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 966
    iget-object p2, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-lez p2, :cond_5

    const-wide/32 v3, 0xf731400

    :try_start_2
    const-string p2, "S2"

    .line 968
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/u;->q:J

    const-string p1, "[UploadManager] Session expired time from server is: %d(%s)"

    .line 970
    new-array p2, v0, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/tencent/bugly/proguard/u;->q:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v2

    new-instance v0, Ljava/util/Date;

    iget-wide v5, p0, Lcom/tencent/bugly/proguard/u;->q:J

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 974
    iget-wide p1, p0, Lcom/tencent/bugly/proguard/u;->q:J

    const-wide/16 v5, 0x3e8

    cmp-long v0, p1, v5

    if-gez v0, :cond_3

    const-string p1, "[UploadManager] Session expired time from server is less than 1 second, will set to default value"

    .line 975
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 978
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/u;->q:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    :try_start_3
    const-string p1, "[UploadManager] Session expired time is invalid, will set to default value"

    .line 981
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 983
    iput-wide v3, p0, Lcom/tencent/bugly/proguard/u;->q:J

    .line 986
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/u;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    const-string p1, "[UploadManager] Failed to record database"

    .line 990
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 993
    :goto_1
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/u;->c(I)V

    goto :goto_2

    :cond_5
    const-string p1, "[UploadManager] Session ID from server is invalid, try next time"

    .line 995
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1001
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    :cond_6
    :goto_2
    if-eqz v1, :cond_8

    .line 1005
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/proguard/u;->b(Z)V

    goto :goto_3

    :cond_7
    const-string p1, "[UploadManager] Fail to init security context and clear local info (pid=%d | tid=%d)"

    .line 1008
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1012
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/proguard/u;->b(Z)V

    .line 1015
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/tencent/bugly/proguard/u;->t:Ljava/lang/Object;

    monitor-enter p1

    .line 1017
    :try_start_4
    iget-boolean p2, p0, Lcom/tencent/bugly/proguard/u;->s:Z

    if-eqz p2, :cond_9

    .line 1019
    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/u;->s:Z

    .line 1021
    iget-object p2, p0, Lcom/tencent/bugly/proguard/u;->d:Landroid/content/Context;

    const-string v0, "security_info"

    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/z;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1023
    :cond_9
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :catchall_1
    move-exception p2

    .line 952
    monitor-exit p1

    throw p2
.end method

.method protected final declared-synchronized a(JZ)V
    .locals 4

    monitor-enter p0

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 346
    :goto_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/r;-><init>()V

    .line 347
    iput v0, v1, Lcom/tencent/bugly/proguard/r;->b:I

    .line 348
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->e:J

    const-string v2, ""

    .line 349
    iput-object v2, v1, Lcom/tencent/bugly/proguard/r;->c:Ljava/lang/String;

    const-string v2, ""

    .line 350
    iput-object v2, v1, Lcom/tencent/bugly/proguard/r;->d:Ljava/lang/String;

    .line 351
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/z;->c(J)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/r;->g:[B

    .line 352
    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->c:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/p;->b(I)V

    .line 353
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->c:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/r;)Z

    if-eqz p3, :cond_1

    .line 355
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/u;->g:J

    goto :goto_1

    .line 357
    :cond_1
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/u;->f:J

    :goto_1
    const-string p3, "[UploadManager] Network total consume: %d KB"

    const/4 v0, 0x1

    .line 359
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-wide/16 v2, 0x400

    div-long/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 343
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "[UploadManager] Integrate security to HTTP headers (pid=%d | tid=%d)"

    const/4 v2, 0x2

    .line 1193
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1196
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v0, "secureSessionId"

    .line 1198
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    .line 1201
    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x3

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 1205
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->l:[B

    if-nez v1, :cond_3

    .line 1207
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/u;->l:[B

    .line 1208
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->l:[B

    if-nez v1, :cond_3

    const-string p1, "[UploadManager] Failed to decode RSA public key"

    .line 1209
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 1214
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    iget-object v2, p0, Lcom/tencent/bugly/proguard/u;->l:[B

    invoke-static {v4, v1, v2}, Lcom/tencent/bugly/proguard/z;->b(I[B[B)[B

    move-result-object v1

    if-nez v1, :cond_4

    const-string p1, "[UploadManager] Failed to encrypt AES key"

    .line 1216
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 1220
    :cond_4
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string p1, "[UploadManager] Failed to encode AES key"

    .line 1222
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    :cond_5
    const-string v0, "raKey"

    .line 1225
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_6
    :goto_0
    const-string p1, "[UploadManager] AES key is invalid"

    .line 1202
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0
.end method

.method public final a([B)[B
    .locals 4

    .line 1158
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    const/16 v2, 0x80

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    invoke-static {v1, p1, v0}, Lcom/tencent/bugly/proguard/z;->a(I[B[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "[UploadManager] AES key is invalid (pid=%d | tid=%d)"

    const/4 v0, 0x2

    .line 1159
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final b(Z)V
    .locals 5

    .line 613
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->r:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "[UploadManager] Clear security context (pid=%d | tid=%d)"

    const/4 v2, 0x2

    .line 614
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 616
    iput-object v1, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    .line 617
    iput-object v1, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 618
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/u;->q:J

    .line 619
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 622
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->c()Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 619
    monitor-exit v0

    throw p1
.end method

.method protected final b()Z
    .locals 10

    .line 592
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->p:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/u;->q:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/u;->m:J

    add-long v6, v2, v4

    .line 596
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/u;->q:J

    cmp-long v0, v2, v6

    const/4 v2, 0x1

    if-gez v0, :cond_1

    const-string v0, "[UploadManager] Session ID expired time from server is: %d(%s), but now is: %d(%s)"

    const/4 v3, 0x4

    .line 597
    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/u;->q:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    new-instance v4, Ljava/util/Date;

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/u;->q:J

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final b(I)Z
    .locals 9

    .line 425
    sget-boolean v0, Lcom/tencent/bugly/b;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Uploading frequency will not be checked if SDK is in debug mode."

    .line 426
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v1

    .line 429
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/u;->a(I)J

    move-result-wide v5

    sub-long v7, v3, v5

    const-string v0, "[UploadManager] Time interval is %d seconds since last uploading(ID: %d)."

    const/4 v3, 0x2

    .line 430
    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    div-long v4, v7, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-wide/16 v3, 0x7530

    cmp-long p1, v7, v3

    if-gez p1, :cond_1

    const-string p1, "[UploadManager] Data only be uploaded once in %d seconds."

    .line 433
    new-array v0, v1, [Ljava/lang/Object;

    const-wide/16 v3, 0x1e

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v2

    :cond_1
    return v1
.end method

.method public final b([B)[B
    .locals 3

    .line 1174
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x3

    const/16 v2, 0x80

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u;->n:[B

    invoke-static {v1, p1, v0}, Lcom/tencent/bugly/proguard/z;->a(I[B[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "[UploadManager] AES key is invalid (pid=%d | tid=%d)"

    .line 1175
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method

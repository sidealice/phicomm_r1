.class final Lcom/tencent/bugly/proguard/u$a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Runnable;

.field private final c:J

.field private synthetic d:Lcom/tencent/bugly/proguard/u;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/u;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1039
    iput-object p2, p0, Lcom/tencent/bugly/proguard/u$a;->a:Landroid/content/Context;

    .line 1040
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->b:Ljava/lang/Runnable;

    .line 1041
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/u$a;->c:J

    .line 1042
    return-void
.end method

.method public constructor <init>(Lcom/tencent/bugly/proguard/u;Landroid/content/Context;Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    iput-object p2, p0, Lcom/tencent/bugly/proguard/u$a;->a:Landroid/content/Context;

    .line 1046
    iput-object p3, p0, Lcom/tencent/bugly/proguard/u$a;->b:Ljava/lang/Runnable;

    .line 1047
    iput-wide p4, p0, Lcom/tencent/bugly/proguard/u$a;->c:J

    .line 1048
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/16 v7, 0x80

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1058
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1061
    const-string v0, "[UploadManager] Sleep %d try to lock security file again (pid=%d | tid=%d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1065
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->b(J)V

    .line 1066
    const-string v0, "BUGLY_ASYNC_UPLOAD"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1067
    const-string v0, "[UploadManager] Failed to start a thread to execute task of initializing security context, try to post it into thread pool."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1070
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_1

    .line 1072
    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1074
    :cond_1
    const-string v0, "[UploadManager] Asynchronous thread pool is unavailable now, try next time."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->c(Lcom/tencent/bugly/proguard/u;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1087
    const-string v0, "[UploadManager] Failed to load security info from database"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1088
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/u;->b(Z)V

    .line 1091
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->d(Lcom/tencent/bugly/proguard/u;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1093
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/u;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1095
    const-string v0, "[UploadManager] Sucessfully got session ID, try to execute upload tasks now (pid=%d | tid=%d)"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1098
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 1100
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/u$a;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/u$a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;Ljava/lang/Runnable;J)V

    .line 1102
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;I)V

    .line 1104
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1105
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->e(Lcom/tencent/bugly/proguard/u;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1107
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;Z)Z

    .line 1108
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1110
    :cond_5
    const-string v0, "[UploadManager] Session ID is expired, drop it."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1115
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v0, v5}, Lcom/tencent/bugly/proguard/u;->b(Z)V

    .line 1119
    :cond_6
    invoke-static {v7}, Lcom/tencent/bugly/proguard/z;->a(I)[B

    move-result-object v0

    .line 1120
    if-eqz v0, :cond_8

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x3

    if-ne v1, v7, :cond_8

    .line 1121
    iget-object v1, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;[B)[B

    .line 1123
    const-string v0, "[UploadManager] Execute one upload task for requesting session ID (pid=%d | tid=%d)"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1126
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 1128
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/u$a;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/u$a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 1132
    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;I)V

    goto/16 :goto_0

    .line 1137
    :cond_8
    const-string v0, "[UploadManager] Failed to create AES key (pid=%d | tid=%d)"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1141
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-virtual {v0, v4}, Lcom/tencent/bugly/proguard/u;->b(Z)V

    .line 1143
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->a:Landroid/content/Context;

    const-string v1, "security_info"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1144
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/u;->e(Lcom/tencent/bugly/proguard/u;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1146
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/u$a;->d:Lcom/tencent/bugly/proguard/u;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/u;->a(Lcom/tencent/bugly/proguard/u;Z)Z

    .line 1147
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
